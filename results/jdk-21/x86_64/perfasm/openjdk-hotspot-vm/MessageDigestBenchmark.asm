# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 33.235 us/op
# Warmup Iteration   2: 30.477 us/op
# Warmup Iteration   3: 30.473 us/op
# Warmup Iteration   4: 30.469 us/op
# Warmup Iteration   5: 30.471 us/op
Iteration   1: 30.479 us/op
Iteration   2: 30.467 us/op
Iteration   3: 30.468 us/op
Iteration   4: 30.472 us/op
Iteration   5: 30.471 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  30.471 ±(99.9%) 0.018 us/op [Average]
  (min, avg, max) = (30.467, 30.471, 30.479), stdev = 0.005
  CI (99.9%): [30.453, 30.490] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 145736 total address lines.
Perf output processed (skipped 56.378 seconds):
 Column 1: cycles (50948 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompress 

             0x00007f78980ebb74:   add    %edx,%ecx
             0x00007f78980ebb76:   add    $0xeb86d391,%ebx
             0x00007f78980ebb7c:   mov    %eax,%esi
             0x00007f78980ebb7e:   not    %esi
             0x00007f78980ebb80:   add    0x24(%r15),%ebx
             0x00007f78980ebb84:   or     %ecx,%esi
             0x00007f78980ebb86:   xor    %edx,%esi
             0x00007f78980ebb88:   add    %esi,%ebx
             0x00007f78980ebb8a:   rol    $0x15,%ebx
             0x00007f78980ebb8d:   add    %ecx,%ebx
   0.01%     0x00007f78980ebb8f:   mov    (%rsp),%rdi
             0x00007f78980ebb93:   add    (%rdi),%eax
             0x00007f78980ebb95:   mov    %eax,(%rdi)
             0x00007f78980ebb97:   add    0x4(%rdi),%ebx
   0.00%     0x00007f78980ebb9a:   mov    %ebx,0x4(%rdi)
   0.00%     0x00007f78980ebb9d:   add    0x8(%rdi),%ecx
             0x00007f78980ebba0:   mov    %ecx,0x8(%rdi)
             0x00007f78980ebba3:   add    0xc(%rdi),%edx
             0x00007f78980ebba6:   mov    %edx,0xc(%rdi)
   0.00%     0x00007f78980ebba9:   add    $0x10,%rsp
             0x00007f78980ebbad:   pop    %r15
             0x00007f78980ebbaf:   pop    %rsi
             0x00007f78980ebbb0:   pop    %rdi
   0.00%     0x00007f78980ebbb1:   pop    %rbx
             0x00007f78980ebbb2:   leave  
   0.00%     0x00007f78980ebbb3:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::md5_implCompressMB [0x00007f78980ebbc0, 0x00007f78980ec276] (1718 bytes)
           --------------------------------------------------------------------------------
             0x00007f78980ebbc0:   push   %rbp
   0.00%     0x00007f78980ebbc1:   mov    %rsp,%rbp
             0x00007f78980ebbc4:   push   %rbx
             0x00007f78980ebbc5:   push   %rdi
   0.00%     0x00007f78980ebbc6:   push   %rsi
             0x00007f78980ebbc7:   push   %r15
             0x00007f78980ebbc9:   sub    $0x10,%rsp
   0.00%     0x00007f78980ebbcd:   mov    %rdi,%r15
             0x00007f78980ebbd0:   mov    %rsi,(%rsp)
   0.00%     0x00007f78980ebbd4:   mov    %edx,0x8(%rsp)
             0x00007f78980ebbd8:   mov    %ecx,0xc(%rsp)
             0x00007f78980ebbdc:   mov    (%rsp),%rdi
             0x00007f78980ebbe0:   mov    (%rdi),%eax
   0.01%     0x00007f78980ebbe2:   mov    0x4(%rdi),%ebx
   0.00%     0x00007f78980ebbe5:   mov    0x8(%rdi),%ecx
             0x00007f78980ebbe8:   mov    0xc(%rdi),%edx
          ↗  0x00007f78980ebbeb:   add    $0xd76aa478,%eax
   0.00%  │  0x00007f78980ebbf0:   mov    %ecx,%esi
          │  0x00007f78980ebbf2:   add    (%r15),%eax
   0.31%  │  0x00007f78980ebbf5:   xor    %edx,%esi
          │  0x00007f78980ebbf7:   and    %ebx,%esi
   0.00%  │  0x00007f78980ebbf9:   xor    %edx,%esi
   0.00%  │  0x00007f78980ebbfb:   add    %esi,%eax
   0.33%  │  0x00007f78980ebbfd:   rol    $0x7,%eax
   0.00%  │  0x00007f78980ebc00:   add    %ebx,%eax
   0.00%  │  0x00007f78980ebc02:   add    $0xe8c7b756,%edx
          │  0x00007f78980ebc08:   mov    %ebx,%esi
   0.29%  │  0x00007f78980ebc0a:   add    0x4(%r15),%edx
          │  0x00007f78980ebc0e:   xor    %ecx,%esi
          │  0x00007f78980ebc10:   and    %eax,%esi
          │  0x00007f78980ebc12:   xor    %ecx,%esi
   0.32%  │  0x00007f78980ebc14:   add    %esi,%edx
          │  0x00007f78980ebc16:   rol    $0xc,%edx
   0.29%  │  0x00007f78980ebc19:   add    %eax,%edx
   0.31%  │  0x00007f78980ebc1b:   add    $0x242070db,%ecx
   0.01%  │  0x00007f78980ebc21:   mov    %eax,%esi
          │  0x00007f78980ebc23:   add    0x8(%r15),%ecx
          │  0x00007f78980ebc27:   xor    %ebx,%esi
   0.34%  │  0x00007f78980ebc29:   and    %edx,%esi
   0.01%  │  0x00007f78980ebc2b:   xor    %ebx,%esi
   0.49%  │  0x00007f78980ebc2d:   add    %esi,%ecx
   0.16%  │  0x00007f78980ebc2f:   rol    $0x11,%ecx
   0.32%  │  0x00007f78980ebc32:   add    %edx,%ecx
   0.30%  │  0x00007f78980ebc34:   add    $0xc1bdceee,%ebx
   0.00%  │  0x00007f78980ebc3a:   mov    %edx,%esi
          │  0x00007f78980ebc3c:   add    0xc(%r15),%ebx
          │  0x00007f78980ebc40:   xor    %eax,%esi
   0.29%  │  0x00007f78980ebc42:   and    %ecx,%esi
          │  0x00007f78980ebc44:   xor    %eax,%esi
   0.54%  │  0x00007f78980ebc46:   add    %esi,%ebx
   0.15%  │  0x00007f78980ebc48:   rol    $0x16,%ebx
   0.30%  │  0x00007f78980ebc4b:   add    %ecx,%ebx
   0.34%  │  0x00007f78980ebc4d:   add    $0xf57c0faf,%eax
          │  0x00007f78980ebc52:   mov    %ecx,%esi
          │  0x00007f78980ebc54:   add    0x10(%r15),%eax
          │  0x00007f78980ebc58:   xor    %edx,%esi
   0.34%  │  0x00007f78980ebc5a:   and    %ebx,%esi
          │  0x00007f78980ebc5c:   xor    %edx,%esi
   0.52%  │  0x00007f78980ebc5e:   add    %esi,%eax
   0.16%  │  0x00007f78980ebc60:   rol    $0x7,%eax
   0.29%  │  0x00007f78980ebc63:   add    %ebx,%eax
   0.30%  │  0x00007f78980ebc65:   add    $0x4787c62a,%edx
          │  0x00007f78980ebc6b:   mov    %ebx,%esi
          │  0x00007f78980ebc6d:   add    0x14(%r15),%edx
          │  0x00007f78980ebc71:   xor    %ecx,%esi
   0.37%  │  0x00007f78980ebc73:   and    %eax,%esi
   0.01%  │  0x00007f78980ebc75:   xor    %ecx,%esi
   0.47%  │  0x00007f78980ebc77:   add    %esi,%edx
   0.15%  │  0x00007f78980ebc79:   rol    $0xc,%edx
   0.28%  │  0x00007f78980ebc7c:   add    %eax,%edx
   0.28%  │  0x00007f78980ebc7e:   add    $0xa8304613,%ecx
   0.00%  │  0x00007f78980ebc84:   mov    %eax,%esi
          │  0x00007f78980ebc86:   add    0x18(%r15),%ecx
          │  0x00007f78980ebc8a:   xor    %ebx,%esi
   0.30%  │  0x00007f78980ebc8c:   and    %edx,%esi
          │  0x00007f78980ebc8e:   xor    %ebx,%esi
   0.55%  │  0x00007f78980ebc90:   add    %esi,%ecx
   0.13%  │  0x00007f78980ebc92:   rol    $0x11,%ecx
   0.26%  │  0x00007f78980ebc95:   add    %edx,%ecx
   0.36%  │  0x00007f78980ebc97:   add    $0xfd469501,%ebx
   0.00%  │  0x00007f78980ebc9d:   mov    %edx,%esi
          │  0x00007f78980ebc9f:   add    0x1c(%r15),%ebx
          │  0x00007f78980ebca3:   xor    %eax,%esi
   0.29%  │  0x00007f78980ebca5:   and    %ecx,%esi
          │  0x00007f78980ebca7:   xor    %eax,%esi
   0.47%  │  0x00007f78980ebca9:   add    %esi,%ebx
   0.18%  │  0x00007f78980ebcab:   rol    $0x16,%ebx
   0.27%  │  0x00007f78980ebcae:   add    %ecx,%ebx
   0.34%  │  0x00007f78980ebcb0:   add    $0x698098d8,%eax
          │  0x00007f78980ebcb5:   mov    %ecx,%esi
          │  0x00007f78980ebcb7:   add    0x20(%r15),%eax
          │  0x00007f78980ebcbb:   xor    %edx,%esi
   0.32%  │  0x00007f78980ebcbd:   and    %ebx,%esi
   0.00%  │  0x00007f78980ebcbf:   xor    %edx,%esi
   0.55%  │  0x00007f78980ebcc1:   add    %esi,%eax
   0.15%  │  0x00007f78980ebcc3:   rol    $0x7,%eax
   0.26%  │  0x00007f78980ebcc6:   add    %ebx,%eax
   0.36%  │  0x00007f78980ebcc8:   add    $0x8b44f7af,%edx
   0.00%  │  0x00007f78980ebcce:   mov    %ebx,%esi
          │  0x00007f78980ebcd0:   add    0x24(%r15),%edx
          │  0x00007f78980ebcd4:   xor    %ecx,%esi
   0.31%  │  0x00007f78980ebcd6:   and    %eax,%esi
          │  0x00007f78980ebcd8:   xor    %ecx,%esi
   0.51%  │  0x00007f78980ebcda:   add    %esi,%edx
   0.19%  │  0x00007f78980ebcdc:   rol    $0xc,%edx
   0.26%  │  0x00007f78980ebcdf:   add    %eax,%edx
   0.30%  │  0x00007f78980ebce1:   add    $0xffff5bb1,%ecx
          │  0x00007f78980ebce7:   mov    %eax,%esi
          │  0x00007f78980ebce9:   add    0x28(%r15),%ecx
          │  0x00007f78980ebced:   xor    %ebx,%esi
   0.29%  │  0x00007f78980ebcef:   and    %edx,%esi
   0.01%  │  0x00007f78980ebcf1:   xor    %ebx,%esi
   0.57%  │  0x00007f78980ebcf3:   add    %esi,%ecx
   0.13%  │  0x00007f78980ebcf5:   rol    $0x11,%ecx
   0.20%  │  0x00007f78980ebcf8:   add    %edx,%ecx
   0.29%  │  0x00007f78980ebcfa:   add    $0x895cd7be,%ebx
   0.01%  │  0x00007f78980ebd00:   mov    %edx,%esi
          │  0x00007f78980ebd02:   add    0x2c(%r15),%ebx
          │  0x00007f78980ebd06:   xor    %eax,%esi
   0.36%  │  0x00007f78980ebd08:   and    %ecx,%esi
   0.01%  │  0x00007f78980ebd0a:   xor    %eax,%esi
   0.61%  │  0x00007f78980ebd0c:   add    %esi,%ebx
   0.11%  │  0x00007f78980ebd0e:   rol    $0x16,%ebx
   0.25%  │  0x00007f78980ebd11:   add    %ecx,%ebx
   0.32%  │  0x00007f78980ebd13:   add    $0x6b901122,%eax
   0.02%  │  0x00007f78980ebd18:   mov    %ecx,%esi
          │  0x00007f78980ebd1a:   add    0x30(%r15),%eax
          │  0x00007f78980ebd1e:   xor    %edx,%esi
   0.33%  │  0x00007f78980ebd20:   and    %ebx,%esi
   0.01%  │  0x00007f78980ebd22:   xor    %edx,%esi
   0.60%  │  0x00007f78980ebd24:   add    %esi,%eax
   0.12%  │  0x00007f78980ebd26:   rol    $0x7,%eax
   0.24%  │  0x00007f78980ebd29:   add    %ebx,%eax
   0.28%  │  0x00007f78980ebd2b:   add    $0xfd987193,%edx
   0.01%  │  0x00007f78980ebd31:   mov    %ebx,%esi
          │  0x00007f78980ebd33:   add    0x34(%r15),%edx
          │  0x00007f78980ebd37:   xor    %ecx,%esi
   0.30%  │  0x00007f78980ebd39:   and    %eax,%esi
   0.02%  │  0x00007f78980ebd3b:   xor    %ecx,%esi
   0.53%  │  0x00007f78980ebd3d:   add    %esi,%edx
   0.17%  │  0x00007f78980ebd3f:   rol    $0xc,%edx
   0.26%  │  0x00007f78980ebd42:   add    %eax,%edx
   0.30%  │  0x00007f78980ebd44:   add    $0xa679438e,%ecx
   0.02%  │  0x00007f78980ebd4a:   mov    %eax,%esi
          │  0x00007f78980ebd4c:   add    0x38(%r15),%ecx
          │  0x00007f78980ebd50:   xor    %ebx,%esi
   0.29%  │  0x00007f78980ebd52:   and    %edx,%esi
   0.02%  │  0x00007f78980ebd54:   xor    %ebx,%esi
   0.53%  │  0x00007f78980ebd56:   add    %esi,%ecx
   0.16%  │  0x00007f78980ebd58:   rol    $0x11,%ecx
   0.23%  │  0x00007f78980ebd5b:   add    %edx,%ecx
   0.29%  │  0x00007f78980ebd5d:   add    $0x49b40821,%ebx
   0.01%  │  0x00007f78980ebd63:   mov    %edx,%esi
          │  0x00007f78980ebd65:   add    0x3c(%r15),%ebx
          │  0x00007f78980ebd69:   xor    %eax,%esi
   0.31%  │  0x00007f78980ebd6b:   and    %ecx,%esi
   0.02%  │  0x00007f78980ebd6d:   xor    %eax,%esi
   0.64%  │  0x00007f78980ebd6f:   add    %esi,%ebx
   0.15%  │  0x00007f78980ebd71:   rol    $0x16,%ebx
   0.26%  │  0x00007f78980ebd74:   add    %ecx,%ebx
   0.27%  │  0x00007f78980ebd76:   add    $0xf61e2562,%eax
   0.05%  │  0x00007f78980ebd7b:   mov    %edx,%esi
          │  0x00007f78980ebd7d:   mov    %edx,%edi
          │  0x00007f78980ebd7f:   add    0x4(%r15),%eax
   0.32%  │  0x00007f78980ebd83:   not    %esi
   0.04%  │  0x00007f78980ebd85:   and    %ebx,%edi
          │  0x00007f78980ebd87:   and    %ecx,%esi
          │  0x00007f78980ebd89:   or     %edi,%esi
   0.27%  │  0x00007f78980ebd8b:   add    %esi,%eax
   0.29%  │  0x00007f78980ebd8d:   rol    $0x5,%eax
   0.32%  │  0x00007f78980ebd90:   add    %ebx,%eax
   0.29%  │  0x00007f78980ebd92:   add    $0xc040b340,%edx
          │  0x00007f78980ebd98:   mov    %ecx,%esi
          │  0x00007f78980ebd9a:   mov    %ecx,%edi
          │  0x00007f78980ebd9c:   add    0x18(%r15),%edx
   0.30%  │  0x00007f78980ebda0:   not    %esi
          │  0x00007f78980ebda2:   and    %eax,%edi
          │  0x00007f78980ebda4:   and    %ebx,%esi
          │  0x00007f78980ebda6:   or     %edi,%esi
   0.33%  │  0x00007f78980ebda8:   add    %esi,%edx
   0.32%  │  0x00007f78980ebdaa:   rol    $0x9,%edx
   0.28%  │  0x00007f78980ebdad:   add    %eax,%edx
   0.40%  │  0x00007f78980ebdaf:   add    $0x265e5a51,%ecx
          │  0x00007f78980ebdb5:   mov    %ebx,%esi
          │  0x00007f78980ebdb7:   mov    %ebx,%edi
          │  0x00007f78980ebdb9:   add    0x2c(%r15),%ecx
   0.31%  │  0x00007f78980ebdbd:   not    %esi
          │  0x00007f78980ebdbf:   and    %edx,%edi
          │  0x00007f78980ebdc1:   and    %eax,%esi
          │  0x00007f78980ebdc3:   or     %edi,%esi
   0.36%  │  0x00007f78980ebdc5:   add    %esi,%ecx
   0.33%  │  0x00007f78980ebdc7:   rol    $0xe,%ecx
   0.28%  │  0x00007f78980ebdca:   add    %edx,%ecx
   0.30%  │  0x00007f78980ebdcc:   add    $0xe9b6c7aa,%ebx
          │  0x00007f78980ebdd2:   mov    %eax,%esi
          │  0x00007f78980ebdd4:   mov    %eax,%edi
          │  0x00007f78980ebdd6:   add    (%r15),%ebx
   0.32%  │  0x00007f78980ebdd9:   not    %esi
          │  0x00007f78980ebddb:   and    %ecx,%edi
          │  0x00007f78980ebddd:   and    %edx,%esi
          │  0x00007f78980ebddf:   or     %edi,%esi
   0.26%  │  0x00007f78980ebde1:   add    %esi,%ebx
   0.32%  │  0x00007f78980ebde3:   rol    $0x14,%ebx
   0.37%  │  0x00007f78980ebde6:   add    %ecx,%ebx
   0.31%  │  0x00007f78980ebde8:   add    $0xd62f105d,%eax
          │  0x00007f78980ebded:   mov    %edx,%esi
          │  0x00007f78980ebdef:   mov    %edx,%edi
          │  0x00007f78980ebdf1:   add    0x14(%r15),%eax
   0.35%  │  0x00007f78980ebdf5:   not    %esi
          │  0x00007f78980ebdf7:   and    %ebx,%edi
          │  0x00007f78980ebdf9:   and    %ecx,%esi
          │  0x00007f78980ebdfb:   or     %edi,%esi
   0.32%  │  0x00007f78980ebdfd:   add    %esi,%eax
   0.32%  │  0x00007f78980ebdff:   rol    $0x5,%eax
   0.30%  │  0x00007f78980ebe02:   add    %ebx,%eax
   0.31%  │  0x00007f78980ebe04:   add    $0x2441453,%edx
          │  0x00007f78980ebe0a:   mov    %ecx,%esi
          │  0x00007f78980ebe0c:   mov    %ecx,%edi
          │  0x00007f78980ebe0e:   add    0x28(%r15),%edx
   0.32%  │  0x00007f78980ebe12:   not    %esi
          │  0x00007f78980ebe14:   and    %eax,%edi
          │  0x00007f78980ebe16:   and    %ebx,%esi
          │  0x00007f78980ebe18:   or     %edi,%esi
   0.32%  │  0x00007f78980ebe1a:   add    %esi,%edx
   0.35%  │  0x00007f78980ebe1c:   rol    $0x9,%edx
   0.35%  │  0x00007f78980ebe1f:   add    %eax,%edx
   0.31%  │  0x00007f78980ebe21:   add    $0xd8a1e681,%ecx
          │  0x00007f78980ebe27:   mov    %ebx,%esi
          │  0x00007f78980ebe29:   mov    %ebx,%edi
          │  0x00007f78980ebe2b:   add    0x3c(%r15),%ecx
   0.32%  │  0x00007f78980ebe2f:   not    %esi
          │  0x00007f78980ebe31:   and    %edx,%edi
          │  0x00007f78980ebe33:   and    %eax,%esi
          │  0x00007f78980ebe35:   or     %edi,%esi
   0.31%  │  0x00007f78980ebe37:   add    %esi,%ecx
   0.26%  │  0x00007f78980ebe39:   rol    $0xe,%ecx
   0.35%  │  0x00007f78980ebe3c:   add    %edx,%ecx
   0.33%  │  0x00007f78980ebe3e:   add    $0xe7d3fbc8,%ebx
          │  0x00007f78980ebe44:   mov    %eax,%esi
          │  0x00007f78980ebe46:   mov    %eax,%edi
          │  0x00007f78980ebe48:   add    0x10(%r15),%ebx
   0.37%  │  0x00007f78980ebe4c:   not    %esi
          │  0x00007f78980ebe4e:   and    %ecx,%edi
          │  0x00007f78980ebe50:   and    %edx,%esi
          │  0x00007f78980ebe52:   or     %edi,%esi
   0.36%  │  0x00007f78980ebe54:   add    %esi,%ebx
   0.33%  │  0x00007f78980ebe56:   rol    $0x14,%ebx
   0.35%  │  0x00007f78980ebe59:   add    %ecx,%ebx
   0.29%  │  0x00007f78980ebe5b:   add    $0x21e1cde6,%eax
          │  0x00007f78980ebe60:   mov    %edx,%esi
          │  0x00007f78980ebe62:   mov    %edx,%edi
          │  0x00007f78980ebe64:   add    0x24(%r15),%eax
   0.31%  │  0x00007f78980ebe68:   not    %esi
          │  0x00007f78980ebe6a:   and    %ebx,%edi
          │  0x00007f78980ebe6c:   and    %ecx,%esi
          │  0x00007f78980ebe6e:   or     %edi,%esi
   0.33%  │  0x00007f78980ebe70:   add    %esi,%eax
   0.32%  │  0x00007f78980ebe72:   rol    $0x5,%eax
   0.34%  │  0x00007f78980ebe75:   add    %ebx,%eax
   0.34%  │  0x00007f78980ebe77:   add    $0xc33707d6,%edx
          │  0x00007f78980ebe7d:   mov    %ecx,%esi
          │  0x00007f78980ebe7f:   mov    %ecx,%edi
          │  0x00007f78980ebe81:   add    0x38(%r15),%edx
   0.33%  │  0x00007f78980ebe85:   not    %esi
          │  0x00007f78980ebe87:   and    %eax,%edi
          │  0x00007f78980ebe89:   and    %ebx,%esi
          │  0x00007f78980ebe8b:   or     %edi,%esi
   0.29%  │  0x00007f78980ebe8d:   add    %esi,%edx
   0.34%  │  0x00007f78980ebe8f:   rol    $0x9,%edx
   0.39%  │  0x00007f78980ebe92:   add    %eax,%edx
   0.34%  │  0x00007f78980ebe94:   add    $0xf4d50d87,%ecx
          │  0x00007f78980ebe9a:   mov    %ebx,%esi
          │  0x00007f78980ebe9c:   mov    %ebx,%edi
          │  0x00007f78980ebe9e:   add    0xc(%r15),%ecx
   0.32%  │  0x00007f78980ebea2:   not    %esi
          │  0x00007f78980ebea4:   and    %edx,%edi
          │  0x00007f78980ebea6:   and    %eax,%esi
          │  0x00007f78980ebea8:   or     %edi,%esi
   0.28%  │  0x00007f78980ebeaa:   add    %esi,%ecx
   0.31%  │  0x00007f78980ebeac:   rol    $0xe,%ecx
   0.34%  │  0x00007f78980ebeaf:   add    %edx,%ecx
   0.30%  │  0x00007f78980ebeb1:   add    $0x455a14ed,%ebx
          │  0x00007f78980ebeb7:   mov    %eax,%esi
          │  0x00007f78980ebeb9:   mov    %eax,%edi
          │  0x00007f78980ebebb:   add    0x20(%r15),%ebx
   0.31%  │  0x00007f78980ebebf:   not    %esi
          │  0x00007f78980ebec1:   and    %ecx,%edi
          │  0x00007f78980ebec3:   and    %edx,%esi
          │  0x00007f78980ebec5:   or     %edi,%esi
   0.37%  │  0x00007f78980ebec7:   add    %esi,%ebx
   0.32%  │  0x00007f78980ebec9:   rol    $0x14,%ebx
   0.33%  │  0x00007f78980ebecc:   add    %ecx,%ebx
   0.27%  │  0x00007f78980ebece:   add    $0xa9e3e905,%eax
          │  0x00007f78980ebed3:   mov    %edx,%esi
          │  0x00007f78980ebed5:   mov    %edx,%edi
          │  0x00007f78980ebed7:   add    0x34(%r15),%eax
   0.32%  │  0x00007f78980ebedb:   not    %esi
          │  0x00007f78980ebedd:   and    %ebx,%edi
          │  0x00007f78980ebedf:   and    %ecx,%esi
          │  0x00007f78980ebee1:   or     %edi,%esi
   0.31%  │  0x00007f78980ebee3:   add    %esi,%eax
   0.32%  │  0x00007f78980ebee5:   rol    $0x5,%eax
   0.31%  │  0x00007f78980ebee8:   add    %ebx,%eax
   0.28%  │  0x00007f78980ebeea:   add    $0xfcefa3f8,%edx
          │  0x00007f78980ebef0:   mov    %ecx,%esi
          │  0x00007f78980ebef2:   mov    %ecx,%edi
          │  0x00007f78980ebef4:   add    0x8(%r15),%edx
   0.32%  │  0x00007f78980ebef8:   not    %esi
          │  0x00007f78980ebefa:   and    %eax,%edi
          │  0x00007f78980ebefc:   and    %ebx,%esi
          │  0x00007f78980ebefe:   or     %edi,%esi
   0.31%  │  0x00007f78980ebf00:   add    %esi,%edx
   0.33%  │  0x00007f78980ebf02:   rol    $0x9,%edx
   0.33%  │  0x00007f78980ebf05:   add    %eax,%edx
   0.26%  │  0x00007f78980ebf07:   add    $0x676f02d9,%ecx
          │  0x00007f78980ebf0d:   mov    %ebx,%esi
          │  0x00007f78980ebf0f:   mov    %ebx,%edi
          │  0x00007f78980ebf11:   add    0x1c(%r15),%ecx
   0.34%  │  0x00007f78980ebf15:   not    %esi
          │  0x00007f78980ebf17:   and    %edx,%edi
          │  0x00007f78980ebf19:   and    %eax,%esi
          │  0x00007f78980ebf1b:   or     %edi,%esi
   0.27%  │  0x00007f78980ebf1d:   add    %esi,%ecx
   0.28%  │  0x00007f78980ebf1f:   rol    $0xe,%ecx
   0.37%  │  0x00007f78980ebf22:   add    %edx,%ecx
   0.31%  │  0x00007f78980ebf24:   add    $0x8d2a4c8a,%ebx
          │  0x00007f78980ebf2a:   mov    %eax,%esi
          │  0x00007f78980ebf2c:   mov    %eax,%edi
          │  0x00007f78980ebf2e:   add    0x30(%r15),%ebx
   0.31%  │  0x00007f78980ebf32:   not    %esi
          │  0x00007f78980ebf34:   and    %ecx,%edi
          │  0x00007f78980ebf36:   and    %edx,%esi
          │  0x00007f78980ebf38:   or     %edi,%esi
   0.31%  │  0x00007f78980ebf3a:   add    %esi,%ebx
   0.33%  │  0x00007f78980ebf3c:   rol    $0x14,%ebx
   0.33%  │  0x00007f78980ebf3f:   add    %ecx,%ebx
   0.28%  │  0x00007f78980ebf41:   add    $0xfffa3942,%eax
          │  0x00007f78980ebf46:   mov    %ecx,%esi
          │  0x00007f78980ebf48:   add    0x14(%r15),%eax
          │  0x00007f78980ebf4c:   xor    %edx,%esi
   0.35%  │  0x00007f78980ebf4e:   xor    %ebx,%esi
          │  0x00007f78980ebf50:   add    %esi,%eax
   0.29%  │  0x00007f78980ebf52:   rol    $0x4,%eax
   0.33%  │  0x00007f78980ebf55:   add    %ebx,%eax
   0.34%  │  0x00007f78980ebf57:   add    $0x8771f681,%edx
          │  0x00007f78980ebf5d:   mov    %ebx,%esi
          │  0x00007f78980ebf5f:   add    0x20(%r15),%edx
          │  0x00007f78980ebf63:   xor    %ecx,%esi
   0.26%  │  0x00007f78980ebf65:   xor    %eax,%esi
          │  0x00007f78980ebf67:   add    %esi,%edx
   0.31%  │  0x00007f78980ebf69:   rol    $0xb,%edx
   0.33%  │  0x00007f78980ebf6c:   add    %eax,%edx
   0.28%  │  0x00007f78980ebf6e:   add    $0x6d9d6122,%ecx
          │  0x00007f78980ebf74:   mov    %eax,%esi
          │  0x00007f78980ebf76:   add    0x2c(%r15),%ecx
          │  0x00007f78980ebf7a:   xor    %ebx,%esi
   0.30%  │  0x00007f78980ebf7c:   xor    %edx,%esi
          │  0x00007f78980ebf7e:   add    %esi,%ecx
   0.32%  │  0x00007f78980ebf80:   rol    $0x10,%ecx
   0.33%  │  0x00007f78980ebf83:   add    %edx,%ecx
   0.29%  │  0x00007f78980ebf85:   add    $0xfde5380c,%ebx
          │  0x00007f78980ebf8b:   mov    %edx,%esi
          │  0x00007f78980ebf8d:   add    0x38(%r15),%ebx
          │  0x00007f78980ebf91:   xor    %eax,%esi
   0.29%  │  0x00007f78980ebf93:   xor    %ecx,%esi
          │  0x00007f78980ebf95:   add    %esi,%ebx
   0.36%  │  0x00007f78980ebf97:   rol    $0x17,%ebx
   0.26%  │  0x00007f78980ebf9a:   add    %ecx,%ebx
   0.29%  │  0x00007f78980ebf9c:   add    $0xa4beea44,%eax
          │  0x00007f78980ebfa1:   mov    %ecx,%esi
          │  0x00007f78980ebfa3:   add    0x4(%r15),%eax
          │  0x00007f78980ebfa7:   xor    %edx,%esi
   0.34%  │  0x00007f78980ebfa9:   xor    %ebx,%esi
   0.00%  │  0x00007f78980ebfab:   add    %esi,%eax
   0.29%  │  0x00007f78980ebfad:   rol    $0x4,%eax
   0.31%  │  0x00007f78980ebfb0:   add    %ebx,%eax
   0.30%  │  0x00007f78980ebfb2:   add    $0x4bdecfa9,%edx
          │  0x00007f78980ebfb8:   mov    %ebx,%esi
          │  0x00007f78980ebfba:   add    0x10(%r15),%edx
          │  0x00007f78980ebfbe:   xor    %ecx,%esi
   0.31%  │  0x00007f78980ebfc0:   xor    %eax,%esi
          │  0x00007f78980ebfc2:   add    %esi,%edx
   0.33%  │  0x00007f78980ebfc4:   rol    $0xb,%edx
   0.29%  │  0x00007f78980ebfc7:   add    %eax,%edx
   0.31%  │  0x00007f78980ebfc9:   add    $0xf6bb4b60,%ecx
          │  0x00007f78980ebfcf:   mov    %eax,%esi
          │  0x00007f78980ebfd1:   add    0x1c(%r15),%ecx
          │  0x00007f78980ebfd5:   xor    %ebx,%esi
   0.33%  │  0x00007f78980ebfd7:   xor    %edx,%esi
          │  0x00007f78980ebfd9:   add    %esi,%ecx
   0.35%  │  0x00007f78980ebfdb:   rol    $0x10,%ecx
   0.31%  │  0x00007f78980ebfde:   add    %edx,%ecx
   0.30%  │  0x00007f78980ebfe0:   add    $0xbebfbc70,%ebx
          │  0x00007f78980ebfe6:   mov    %edx,%esi
          │  0x00007f78980ebfe8:   add    0x28(%r15),%ebx
          │  0x00007f78980ebfec:   xor    %eax,%esi
   0.36%  │  0x00007f78980ebfee:   xor    %ecx,%esi
          │  0x00007f78980ebff0:   add    %esi,%ebx
   0.35%  │  0x00007f78980ebff2:   rol    $0x17,%ebx
   0.36%  │  0x00007f78980ebff5:   add    %ecx,%ebx
   0.30%  │  0x00007f78980ebff7:   add    $0x289b7ec6,%eax
          │  0x00007f78980ebffc:   mov    %ecx,%esi
          │  0x00007f78980ebffe:   add    0x34(%r15),%eax
          │  0x00007f78980ec002:   xor    %edx,%esi
   0.30%  │  0x00007f78980ec004:   xor    %ebx,%esi
   0.00%  │  0x00007f78980ec006:   add    %esi,%eax
   0.29%  │  0x00007f78980ec008:   rol    $0x4,%eax
   0.32%  │  0x00007f78980ec00b:   add    %ebx,%eax
   0.36%  │  0x00007f78980ec00d:   add    $0xeaa127fa,%edx
          │  0x00007f78980ec013:   mov    %ebx,%esi
          │  0x00007f78980ec015:   add    (%r15),%edx
          │  0x00007f78980ec018:   xor    %ecx,%esi
   0.32%  │  0x00007f78980ec01a:   xor    %eax,%esi
   0.00%  │  0x00007f78980ec01c:   add    %esi,%edx
   0.34%  │  0x00007f78980ec01e:   rol    $0xb,%edx
   0.30%  │  0x00007f78980ec021:   add    %eax,%edx
   0.34%  │  0x00007f78980ec023:   add    $0xd4ef3085,%ecx
          │  0x00007f78980ec029:   mov    %eax,%esi
          │  0x00007f78980ec02b:   add    0xc(%r15),%ecx
          │  0x00007f78980ec02f:   xor    %ebx,%esi
   0.32%  │  0x00007f78980ec031:   xor    %edx,%esi
   0.00%  │  0x00007f78980ec033:   add    %esi,%ecx
   0.30%  │  0x00007f78980ec035:   rol    $0x10,%ecx
   0.32%  │  0x00007f78980ec038:   add    %edx,%ecx
   0.34%  │  0x00007f78980ec03a:   add    $0x4881d05,%ebx
          │  0x00007f78980ec040:   mov    %edx,%esi
          │  0x00007f78980ec042:   add    0x18(%r15),%ebx
          │  0x00007f78980ec046:   xor    %eax,%esi
   0.33%  │  0x00007f78980ec048:   xor    %ecx,%esi
          │  0x00007f78980ec04a:   add    %esi,%ebx
   0.32%  │  0x00007f78980ec04c:   rol    $0x17,%ebx
   0.32%  │  0x00007f78980ec04f:   add    %ecx,%ebx
   0.30%  │  0x00007f78980ec051:   add    $0xd9d4d039,%eax
          │  0x00007f78980ec056:   mov    %ecx,%esi
          │  0x00007f78980ec058:   add    0x24(%r15),%eax
          │  0x00007f78980ec05c:   xor    %edx,%esi
   0.34%  │  0x00007f78980ec05e:   xor    %ebx,%esi
          │  0x00007f78980ec060:   add    %esi,%eax
   0.34%  │  0x00007f78980ec062:   rol    $0x4,%eax
   0.30%  │  0x00007f78980ec065:   add    %ebx,%eax
   0.30%  │  0x00007f78980ec067:   add    $0xe6db99e5,%edx
          │  0x00007f78980ec06d:   mov    %ebx,%esi
          │  0x00007f78980ec06f:   add    0x30(%r15),%edx
          │  0x00007f78980ec073:   xor    %ecx,%esi
   0.30%  │  0x00007f78980ec075:   xor    %eax,%esi
          │  0x00007f78980ec077:   add    %esi,%edx
   0.35%  │  0x00007f78980ec079:   rol    $0xb,%edx
   0.33%  │  0x00007f78980ec07c:   add    %eax,%edx
   0.34%  │  0x00007f78980ec07e:   add    $0x1fa27cf8,%ecx
          │  0x00007f78980ec084:   mov    %eax,%esi
          │  0x00007f78980ec086:   add    0x3c(%r15),%ecx
          │  0x00007f78980ec08a:   xor    %ebx,%esi
   0.30%  │  0x00007f78980ec08c:   xor    %edx,%esi
          │  0x00007f78980ec08e:   add    %esi,%ecx
   0.29%  │  0x00007f78980ec090:   rol    $0x10,%ecx
   0.33%  │  0x00007f78980ec093:   add    %edx,%ecx
   0.33%  │  0x00007f78980ec095:   add    $0xc4ac5665,%ebx
          │  0x00007f78980ec09b:   mov    %edx,%esi
          │  0x00007f78980ec09d:   add    0x8(%r15),%ebx
          │  0x00007f78980ec0a1:   xor    %eax,%esi
   0.32%  │  0x00007f78980ec0a3:   xor    %ecx,%esi
          │  0x00007f78980ec0a5:   add    %esi,%ebx
   0.33%  │  0x00007f78980ec0a7:   rol    $0x17,%ebx
   0.31%  │  0x00007f78980ec0aa:   add    %ecx,%ebx
   0.32%  │  0x00007f78980ec0ac:   add    $0xf4292244,%eax
          │  0x00007f78980ec0b1:   mov    %edx,%esi
          │  0x00007f78980ec0b3:   not    %esi
          │  0x00007f78980ec0b5:   add    (%r15),%eax
   0.47%  │  0x00007f78980ec0b8:   or     %ebx,%esi
          │  0x00007f78980ec0ba:   xor    %ecx,%esi
   0.18%  │  0x00007f78980ec0bc:   add    %esi,%eax
   0.34%  │  0x00007f78980ec0be:   rol    $0x6,%eax
   0.31%  │  0x00007f78980ec0c1:   add    %ebx,%eax
   0.33%  │  0x00007f78980ec0c3:   add    $0x432aff97,%edx
          │  0x00007f78980ec0c9:   mov    %ecx,%esi
          │  0x00007f78980ec0cb:   not    %esi
          │  0x00007f78980ec0cd:   add    0x1c(%r15),%edx
   0.52%  │  0x00007f78980ec0d1:   or     %eax,%esi
          │  0x00007f78980ec0d3:   xor    %ebx,%esi
   0.10%  │  0x00007f78980ec0d5:   add    %esi,%edx
   0.35%  │  0x00007f78980ec0d7:   rol    $0xa,%edx
   0.27%  │  0x00007f78980ec0da:   add    %eax,%edx
   0.34%  │  0x00007f78980ec0dc:   add    $0xab9423a7,%ecx
          │  0x00007f78980ec0e2:   mov    %ebx,%esi
          │  0x00007f78980ec0e4:   not    %esi
          │  0x00007f78980ec0e6:   add    0x38(%r15),%ecx
   0.46%  │  0x00007f78980ec0ea:   or     %edx,%esi
          │  0x00007f78980ec0ec:   xor    %eax,%esi
   0.19%  │  0x00007f78980ec0ee:   add    %esi,%ecx
   0.32%  │  0x00007f78980ec0f0:   rol    $0xf,%ecx
   0.34%  │  0x00007f78980ec0f3:   add    %edx,%ecx
   0.28%  │  0x00007f78980ec0f5:   add    $0xfc93a039,%ebx
          │  0x00007f78980ec0fb:   mov    %eax,%esi
          │  0x00007f78980ec0fd:   not    %esi
          │  0x00007f78980ec0ff:   add    0x14(%r15),%ebx
   0.51%  │  0x00007f78980ec103:   or     %ecx,%esi
          │  0x00007f78980ec105:   xor    %edx,%esi
   0.11%  │  0x00007f78980ec107:   add    %esi,%ebx
   0.34%  │  0x00007f78980ec109:   rol    $0x15,%ebx
   0.34%  │  0x00007f78980ec10c:   add    %ecx,%ebx
   0.30%  │  0x00007f78980ec10e:   add    $0x655b59c3,%eax
          │  0x00007f78980ec113:   mov    %edx,%esi
          │  0x00007f78980ec115:   not    %esi
          │  0x00007f78980ec117:   add    0x30(%r15),%eax
   0.42%  │  0x00007f78980ec11b:   or     %ebx,%esi
          │  0x00007f78980ec11d:   xor    %ecx,%esi
   0.16%  │  0x00007f78980ec11f:   add    %esi,%eax
   0.31%  │  0x00007f78980ec121:   rol    $0x6,%eax
   0.36%  │  0x00007f78980ec124:   add    %ebx,%eax
   0.35%  │  0x00007f78980ec126:   add    $0x8f0ccc92,%edx
          │  0x00007f78980ec12c:   mov    %ecx,%esi
          │  0x00007f78980ec12e:   not    %esi
          │  0x00007f78980ec130:   add    0xc(%r15),%edx
   0.52%  │  0x00007f78980ec134:   or     %eax,%esi
          │  0x00007f78980ec136:   xor    %ebx,%esi
   0.15%  │  0x00007f78980ec138:   add    %esi,%edx
   0.32%  │  0x00007f78980ec13a:   rol    $0xa,%edx
   0.29%  │  0x00007f78980ec13d:   add    %eax,%edx
   0.26%  │  0x00007f78980ec13f:   add    $0xffeff47d,%ecx
          │  0x00007f78980ec145:   mov    %ebx,%esi
          │  0x00007f78980ec147:   not    %esi
          │  0x00007f78980ec149:   add    0x28(%r15),%ecx
   0.44%  │  0x00007f78980ec14d:   or     %edx,%esi
          │  0x00007f78980ec14f:   xor    %eax,%esi
   0.15%  │  0x00007f78980ec151:   add    %esi,%ecx
   0.28%  │  0x00007f78980ec153:   rol    $0xf,%ecx
   0.30%  │  0x00007f78980ec156:   add    %edx,%ecx
   0.32%  │  0x00007f78980ec158:   add    $0x85845dd1,%ebx
          │  0x00007f78980ec15e:   mov    %eax,%esi
          │  0x00007f78980ec160:   not    %esi
          │  0x00007f78980ec162:   add    0x4(%r15),%ebx
   0.46%  │  0x00007f78980ec166:   or     %ecx,%esi
          │  0x00007f78980ec168:   xor    %edx,%esi
   0.13%  │  0x00007f78980ec16a:   add    %esi,%ebx
   0.32%  │  0x00007f78980ec16c:   rol    $0x15,%ebx
   0.30%  │  0x00007f78980ec16f:   add    %ecx,%ebx
   0.32%  │  0x00007f78980ec171:   add    $0x6fa87e4f,%eax
          │  0x00007f78980ec176:   mov    %edx,%esi
          │  0x00007f78980ec178:   not    %esi
          │  0x00007f78980ec17a:   add    0x20(%r15),%eax
   0.51%  │  0x00007f78980ec17e:   or     %ebx,%esi
          │  0x00007f78980ec180:   xor    %ecx,%esi
   0.08%  │  0x00007f78980ec182:   add    %esi,%eax
   0.29%  │  0x00007f78980ec184:   rol    $0x6,%eax
   0.31%  │  0x00007f78980ec187:   add    %ebx,%eax
   0.32%  │  0x00007f78980ec189:   add    $0xfe2ce6e0,%edx
          │  0x00007f78980ec18f:   mov    %ecx,%esi
          │  0x00007f78980ec191:   not    %esi
          │  0x00007f78980ec193:   add    0x3c(%r15),%edx
   0.49%  │  0x00007f78980ec197:   or     %eax,%esi
          │  0x00007f78980ec199:   xor    %ebx,%esi
   0.13%  │  0x00007f78980ec19b:   add    %esi,%edx
   0.30%  │  0x00007f78980ec19d:   rol    $0xa,%edx
   0.30%  │  0x00007f78980ec1a0:   add    %eax,%edx
   0.33%  │  0x00007f78980ec1a2:   add    $0xa3014314,%ecx
          │  0x00007f78980ec1a8:   mov    %ebx,%esi
          │  0x00007f78980ec1aa:   not    %esi
          │  0x00007f78980ec1ac:   add    0x18(%r15),%ecx
   0.49%  │  0x00007f78980ec1b0:   or     %edx,%esi
          │  0x00007f78980ec1b2:   xor    %eax,%esi
   0.13%  │  0x00007f78980ec1b4:   add    %esi,%ecx
   0.28%  │  0x00007f78980ec1b6:   rol    $0xf,%ecx
   0.29%  │  0x00007f78980ec1b9:   add    %edx,%ecx
   0.29%  │  0x00007f78980ec1bb:   add    $0x4e0811a1,%ebx
          │  0x00007f78980ec1c1:   mov    %eax,%esi
          │  0x00007f78980ec1c3:   not    %esi
          │  0x00007f78980ec1c5:   add    0x34(%r15),%ebx
   0.59%  │  0x00007f78980ec1c9:   or     %ecx,%esi
          │  0x00007f78980ec1cb:   xor    %edx,%esi
   0.09%  │  0x00007f78980ec1cd:   add    %esi,%ebx
   0.30%  │  0x00007f78980ec1cf:   rol    $0x15,%ebx
   0.34%  │  0x00007f78980ec1d2:   add    %ecx,%ebx
   0.31%  │  0x00007f78980ec1d4:   add    $0xf7537e82,%eax
          │  0x00007f78980ec1d9:   mov    %edx,%esi
          │  0x00007f78980ec1db:   not    %esi
          │  0x00007f78980ec1dd:   add    0x10(%r15),%eax
   0.48%  │  0x00007f78980ec1e1:   or     %ebx,%esi
          │  0x00007f78980ec1e3:   xor    %ecx,%esi
   0.20%  │  0x00007f78980ec1e5:   add    %esi,%eax
   0.28%  │  0x00007f78980ec1e7:   rol    $0x6,%eax
   0.34%  │  0x00007f78980ec1ea:   add    %ebx,%eax
   0.31%  │  0x00007f78980ec1ec:   add    $0xbd3af235,%edx
          │  0x00007f78980ec1f2:   mov    %ecx,%esi
          │  0x00007f78980ec1f4:   not    %esi
          │  0x00007f78980ec1f6:   add    0x2c(%r15),%edx
   0.48%  │  0x00007f78980ec1fa:   or     %eax,%esi
          │  0x00007f78980ec1fc:   xor    %ebx,%esi
   0.13%  │  0x00007f78980ec1fe:   add    %esi,%edx
   0.32%  │  0x00007f78980ec200:   rol    $0xa,%edx
   0.32%  │  0x00007f78980ec203:   add    %eax,%edx
   0.29%  │  0x00007f78980ec205:   add    $0x2ad7d2bb,%ecx
          │  0x00007f78980ec20b:   mov    %ebx,%esi
          │  0x00007f78980ec20d:   not    %esi
          │  0x00007f78980ec20f:   add    0x8(%r15),%ecx
   0.47%  │  0x00007f78980ec213:   or     %edx,%esi
          │  0x00007f78980ec215:   xor    %eax,%esi
   0.17%  │  0x00007f78980ec217:   add    %esi,%ecx
   0.30%  │  0x00007f78980ec219:   rol    $0xf,%ecx
   0.28%  │  0x00007f78980ec21c:   add    %edx,%ecx
   0.32%  │  0x00007f78980ec21e:   add    $0xeb86d391,%ebx
          │  0x00007f78980ec224:   mov    %eax,%esi
          │  0x00007f78980ec226:   not    %esi
          │  0x00007f78980ec228:   add    0x24(%r15),%ebx
   0.46%  │  0x00007f78980ec22c:   or     %ecx,%esi
          │  0x00007f78980ec22e:   xor    %edx,%esi
   0.16%  │  0x00007f78980ec230:   add    %esi,%ebx
   0.32%  │  0x00007f78980ec232:   rol    $0x15,%ebx
   0.27%  │  0x00007f78980ec235:   add    %ecx,%ebx
   0.28%  │  0x00007f78980ec237:   mov    (%rsp),%rdi
          │  0x00007f78980ec23b:   add    (%rdi),%eax
          │  0x00007f78980ec23d:   mov    %eax,(%rdi)
          │  0x00007f78980ec23f:   add    0x4(%rdi),%ebx
   0.32%  │  0x00007f78980ec242:   mov    %ebx,0x4(%rdi)
   0.70%  │  0x00007f78980ec245:   add    0x8(%rdi),%ecx
          │  0x00007f78980ec248:   mov    %ecx,0x8(%rdi)
          │  0x00007f78980ec24b:   add    0xc(%rdi),%edx
          │  0x00007f78980ec24e:   mov    %edx,0xc(%rdi)
   0.33%  │  0x00007f78980ec251:   add    $0x40,%r15
          │  0x00007f78980ec255:   addl   $0x40,0x8(%rsp)
          │  0x00007f78980ec25a:   mov    0x8(%rsp),%esi
   0.34%  │  0x00007f78980ec25e:   cmp    0xc(%rsp),%esi
          ╰  0x00007f78980ec262:   jbe    0x00007f78980ebbeb
             0x00007f78980ec268:   mov    %rsi,%rax
             0x00007f78980ec26b:   add    $0x10,%rsp
....................................................................................................
  96.80%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.80%        runtime stub  StubRoutines::md5_implCompress 
   1.19%              kernel  [unknown] 
   0.20%        runtime stub  StubRoutines::md5_implCompress 
   0.16%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.11%        runtime stub  StubRoutines::md5_implCompress 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%        runtime stub  StubRoutines::md5_implCompress 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 632 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 632 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 632 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 632 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.90%  <...other 264 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.19%        runtime stub  StubRoutines::md5_implCompress 
   2.16%              kernel  [unknown] 
   0.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 632 
   0.18%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 664 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.11%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.36%        runtime stub
   2.16%              kernel
   0.22%         c2, level 4
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-1, length = 16384)

# Run progress: 9.09% complete, ETA 00:18:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 73.199 us/op
# Warmup Iteration   2: 68.069 us/op
# Warmup Iteration   3: 68.060 us/op
# Warmup Iteration   4: 68.058 us/op
# Warmup Iteration   5: 68.063 us/op
Iteration   1: 68.061 us/op
Iteration   2: 68.072 us/op
Iteration   3: 68.070 us/op
Iteration   4: 68.069 us/op
Iteration   5: 68.057 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  68.066 ±(99.9%) 0.026 us/op [Average]
  (min, avg, max) = (68.057, 68.066, 68.072), stdev = 0.007
  CI (99.9%): [68.040, 68.091] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 142063 total address lines.
Perf output processed (skipped 56.180 seconds):
 Column 1: cycles (50907 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA::implCompress0, version 3, compile id 581 

                                # parm1:    rcx       = int
                                #           [sp+0x50]  (sp of caller)
                                0x00007f38dc63b940:   mov    0x8(%rsi),%r10d
                                0x00007f38dc63b944:   movabs $0x7f385f000000,%r11
                                0x00007f38dc63b94e:   add    %r11,%r10
                                0x00007f38dc63b951:   cmp    %r10,%rax
                                0x00007f38dc63b954:   jne    0x00007f38dc0c4080           ;   {runtime_call ic_miss_stub}
                                0x00007f38dc63b95a:   xchg   %ax,%ax
                                0x00007f38dc63b95c:   nopl   0x0(%rax)
                              [Verified Entry Point]
   0.11%                        0x00007f38dc63b960:   mov    %eax,-0x14000(%rsp)
   0.01%                        0x00007f38dc63b967:   push   %rbp
   0.15%                        0x00007f38dc63b968:   sub    $0x40,%rsp
                                0x00007f38dc63b96c:   cmpl   $0x1,0x20(%r15)
   0.00%                        0x00007f38dc63b974:   jne    0x00007f38dc63c3d6           ;*synchronization entry
                                                                                          ; - sun.security.provider.SHA::implCompress0@-1 (line 151)
   0.13%                        0x00007f38dc63b97a:   mov    %rsi,%r9
                                0x00007f38dc63b97d:   mov    0x30(%rsi),%r10d             ;*getfield W {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - sun.security.provider.SHA::implCompress0@1 (line 151)
                                0x00007f38dc63b981:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f38dc63c39c
                                                                                          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
                                                                                          ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%                        0x00007f38dc63b986:   mov    %rdx,%r11
   0.15%                        0x00007f38dc63b989:   mov    0xc(%rdx),%r8d               ; implicit exception: dispatches to 0x00007f38dc63c374
                                0x00007f38dc63b98d:   add    $0xfffffffd,%r8d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@4 (line 101)
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
                                                                                          ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
                                                                                          ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
                                                                                          ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%                        0x00007f38dc63b991:   test   %r8d,%r8d
                                0x00007f38dc63b994:   jl     0x00007f38dc63c23c
                                0x00007f38dc63b99a:   mov    %ecx,%edx
   0.13%                        0x00007f38dc63b99c:   nopl   0x0(%rax)
                                0x00007f38dc63b9a0:   cmp    %r8d,%ecx
          ╭                     0x00007f38dc63b9a3:   jae    0x00007f38dc63c1e7           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@19 (line 118)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63b9a9:   movslq %ecx,%r13                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@22 (line 118)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63b9ac:   mov    0x10(%r11,%r13,1),%edi
   0.14%  │                     0x00007f38dc63b9b1:   bswap  %edi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@7 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63b9b3:   cmp    $0xf,%ebx
          │                     0x00007f38dc63b9b6:   jbe    0x00007f38dc63c264
          │                     0x00007f38dc63b9bc:   mov    %edi,0x10(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@10 (line 101)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63b9c1:   add    $0x3c,%edx
   0.10%  │                     0x00007f38dc63b9c4:   cmp    %r8d,%edx
          │                     0x00007f38dc63b9c7:   jae    0x00007f38dc63c210
          │                     0x00007f38dc63b9cd:   mov    %edi,(%rsp)
          │                     0x00007f38dc63b9d0:   vmovd  %ebx,%xmm3
   0.00%  │                     0x00007f38dc63b9d4:   vmovd  %r10d,%xmm2
   0.12%  │                     0x00007f38dc63b9d9:   vmovq  %r11,%xmm1
          │                     0x00007f38dc63b9de:   vmovq  %rsi,%xmm0
   0.00%  │                     0x00007f38dc63b9e3:   mov    0x4c(%r11,%r13,1),%r10d
   0.00%  │                     0x00007f38dc63b9e8:   vmovd  %r10d,%xmm5
   0.13%  │                     0x00007f38dc63b9ed:   mov    0x48(%r11,%r13,1),%r8d
          │                     0x00007f38dc63b9f2:   vmovd  %r8d,%xmm6
          │                     0x00007f38dc63b9f7:   mov    0x44(%r11,%r13,1),%esi
   0.00%  │                     0x00007f38dc63b9fc:   mov    0x40(%r11,%r13,1),%ecx
   0.13%  │                     0x00007f38dc63ba01:   mov    0x3c(%r11,%r13,1),%edx
          │                     0x00007f38dc63ba06:   mov    0x38(%r11,%r13,1),%edi
   0.00%  │                     0x00007f38dc63ba0b:   mov    0x34(%r11,%r13,1),%eax
   0.00%  │                     0x00007f38dc63ba10:   mov    0x30(%r11,%r13,1),%r10d
   0.15%  │                     0x00007f38dc63ba15:   vmovd  %r10d,%xmm7
   0.00%  │                     0x00007f38dc63ba1a:   mov    0x2c(%r11,%r13,1),%r11d
          │                     0x00007f38dc63ba1f:   vmovq  %xmm1,%r10
   0.01%  │                     0x00007f38dc63ba24:   mov    0x28(%r10,%r13,1),%r9d
   0.15%  │                     0x00007f38dc63ba29:   mov    0x24(%r10,%r13,1),%r8d
   0.00%  │                     0x00007f38dc63ba2e:   mov    0x20(%r10,%r13,1),%ebx
          │                     0x00007f38dc63ba33:   mov    0x1c(%r10,%r13,1),%ebp
   0.02%  │                     0x00007f38dc63ba38:   mov    0x18(%r10,%r13,1),%r14d
   0.16%  │                     0x00007f38dc63ba3d:   mov    0x14(%r10,%r13,1),%r13d
          │                     0x00007f38dc63ba42:   vmovd  %xmm5,%r10d
          │                     0x00007f38dc63ba47:   bswap  %r10d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@226 (line 116)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63ba4a:   vmovd  %r10d,%xmm1
   0.13%  │                     0x00007f38dc63ba4f:   bswap  %r13d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@20 (line 102)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba52:   vmovd  %xmm2,%r10d                  ;   {no_reloc}
          │                     0x00007f38dc63ba57:   mov    %r13d,0x14(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@23 (line 102)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63ba5c:   bswap  %r14d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@34 (line 103)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%  │                     0x00007f38dc63ba5f:   mov    %r14d,0x18(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@37 (line 103)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63ba64:   bswap  %ebp                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@48 (line 104)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba66:   mov    %ebp,0x1c(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@51 (line 104)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63ba6b:   bswap  %ebx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@62 (line 105)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.12%  │                     0x00007f38dc63ba6d:   mov    %ebx,0x20(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@65 (line 105)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba72:   bswap  %r8d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@76 (line 106)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba75:   mov    %r8d,0x24(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@79 (line 106)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63ba7a:   bswap  %r9d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@91 (line 107)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%  │                     0x00007f38dc63ba7d:   mov    %r9d,0x28(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@94 (line 107)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba82:   bswap  %r11d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@106 (line 108)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63ba85:   mov    %r11d,0x2c(%r12,%r10,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@109 (line 108)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63ba8a:   vmovd  %xmm7,%r11d
   0.13%  │                     0x00007f38dc63ba8f:   bswap  %r11d                        ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@121 (line 109)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.00%  │                     0x00007f38dc63ba92:   mov    %r11d,%r10d
   0.00%  │                     0x00007f38dc63ba95:   vmovd  %xmm2,%r11d
   0.00%  │                     0x00007f38dc63ba9a:   mov    %r10d,0x30(%r12,%r11,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@124 (line 109)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%  │                     0x00007f38dc63ba9f:   bswap  %eax                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@136 (line 110)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63baa1:   mov    %eax,0x34(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@139 (line 110)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63baa6:   bswap  %edi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@151 (line 111)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63baa8:   mov    %edi,0x38(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@154 (line 111)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%  │                     0x00007f38dc63baad:   bswap  %edx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@166 (line 112)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63baaf:   mov    %edx,0x3c(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@169 (line 112)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63bab4:   bswap  %ecx                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@181 (line 113)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63bab6:   mov    %ecx,0x40(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@184 (line 113)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.14%  │                     0x00007f38dc63babb:   bswap  %esi                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@196 (line 114)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63babd:   mov    %esi,0x44(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@199 (line 114)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63bac2:   vmovd  %xmm6,%r9d
   0.00%  │                     0x00007f38dc63bac7:   bswap  %r9d                         ;*invokestatic reverseBytes {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - jdk.internal.misc.Unsafe::convEndian@12 (line 3818)
          │                                                                               ; - jdk.internal.misc.Unsafe::getIntUnaligned@8 (line 3575)
          │                                                                               ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::get@32 (line 116)
          │                                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_I@45 (line 163)
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@211 (line 115)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.13%  │                     0x00007f38dc63baca:   mov    %r9d,0x48(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@214 (line 115)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
          │                     0x00007f38dc63bacf:   vmovd  %xmm1,%r8d
          │                     0x00007f38dc63bad4:   mov    %r8d,0x4c(%r12,%r11,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.ByteArrayAccess::b2iBig64@229 (line 116)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@21 (line 154)
   0.01%  │                     0x00007f38dc63bad9:   vmovd  %xmm3,%r8d
   0.13%  │                     0x00007f38dc63bade:   xchg   %ax,%ax
          │                     0x00007f38dc63bae0:   cmp    $0xd,%r8d
          │                     0x00007f38dc63bae4:   jbe    0x00007f38dc63c28c
   0.00%  │                     0x00007f38dc63baea:   mov    %r8d,%r13d
   0.00%  │                     0x00007f38dc63baed:   cmp    $0x4c,%r8d
          │                     0x00007f38dc63baf1:   jbe    0x00007f38dc63c28c
   0.12%  │                     0x00007f38dc63baf7:   test   %r8d,%r8d
          │                     0x00007f38dc63bafa:   nopw   0x0(%rax,%rax,1)
          │                     0x00007f38dc63bb00:   jbe    0x00007f38dc63c28c
   0.00%  │                     0x00007f38dc63bb06:   cmp    $0x3f,%r8d
          │                     0x00007f38dc63bb0a:   jbe    0x00007f38dc63c28c
   0.13%  │                     0x00007f38dc63bb10:   cmp    $0x10,%r8d
          │                     0x00007f38dc63bb14:   jbe    0x00007f38dc63c28c
   0.00%  │                     0x00007f38dc63bb1a:   nopw   0x0(%rax,%rax,1)
          │                     0x00007f38dc63bb20:   cmp    $0x4f,%r8d
          │                     0x00007f38dc63bb24:   jbe    0x00007f38dc63c28c
   0.01%  │                     0x00007f38dc63bb2a:   xor    %r10d,%esi
   0.12%  │                     0x00007f38dc63bb2d:   xor    %r14d,%esi
   0.00%  │                     0x00007f38dc63bb30:   xor    (%rsp),%esi
          │                     0x00007f38dc63bb33:   rorx   $0x1f,%esi,%r11d
          │                     0x00007f38dc63bb39:   vmovd  %xmm2,%esi
   0.13%  │                     0x00007f38dc63bb3d:   mov    %r11d,0x50(%r12,%rsi,8)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@84 (line 159)
          │                     0x00007f38dc63bb42:   mov    $0x11,%r8d
          │                     0x00007f38dc63bb48:   lea    (%r12,%rsi,8),%rbx
   0.00%  │╭                    0x00007f38dc63bb4c:   jmp    0x00007f38dc63bb53
          ││                    0x00007f38dc63bb4e:   xchg   %ax,%ax
   0.46%  ││↗                   0x00007f38dc63bb50:   mov    %r10d,%r8d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                             ; - sun.security.provider.SHA::implCompress0@33 (line 158)
          │││                                                                             ;   {no_reloc}
   0.17%  │↘│                   0x00007f38dc63bb53:   mov    -0x10(%rbx,%r8,4),%r11d
   1.41%  │ │                   0x00007f38dc63bb58:   xor    0x4(%rbx,%r8,4),%r11d
   0.44%  │ │                   0x00007f38dc63bb5d:   xor    -0x28(%rbx,%r8,4),%r11d
   0.67%  │ │                   0x00007f38dc63bb62:   xor    -0x30(%rbx,%r8,4),%r11d
   0.55%  │ │                   0x00007f38dc63bb67:   rorx   $0x1f,%r11d,%r11d
   1.45%  │ │                   0x00007f38dc63bb6d:   mov    %r11d,0x10(%rbx,%r8,4)
   2.04%  │ │                   0x00007f38dc63bb72:   mov    -0xc(%rbx,%r8,4),%r10d
   0.40%  │ │                   0x00007f38dc63bb77:   xor    0x8(%rbx,%r8,4),%r10d
   0.56%  │ │                   0x00007f38dc63bb7c:   xor    -0x24(%rbx,%r8,4),%r10d
   0.94%  │ │                   0x00007f38dc63bb81:   xor    -0x2c(%rbx,%r8,4),%r10d
   1.27%  │ │                   0x00007f38dc63bb86:   rorx   $0x1f,%r10d,%r10d
   0.63%  │ │                   0x00007f38dc63bb8c:   mov    %r10d,0x14(%rbx,%r8,4)
   2.40%  │ │                   0x00007f38dc63bb91:   mov    -0x8(%rbx,%r8,4),%r11d
   0.46%  │ │                   0x00007f38dc63bb96:   xor    0xc(%rbx,%r8,4),%r11d
   1.01%  │ │                   0x00007f38dc63bb9b:   xor    -0x20(%rbx,%r8,4),%r11d
   0.21%  │ │                   0x00007f38dc63bba0:   xor    -0x28(%rbx,%r8,4),%r11d
   1.35%  │ │                   0x00007f38dc63bba5:   rorx   $0x1f,%r11d,%r11d
   0.72%  │ │                   0x00007f38dc63bbab:   mov    %r11d,0x18(%rbx,%r8,4)
   2.78%  │ │                   0x00007f38dc63bbb0:   mov    -0x4(%rbx,%r8,4),%r11d
          │ │                   0x00007f38dc63bbb5:   xor    0x10(%rbx,%r8,4),%r11d
   1.25%  │ │                   0x00007f38dc63bbba:   xor    -0x1c(%rbx,%r8,4),%r11d
   0.48%  │ │                   0x00007f38dc63bbbf:   xor    -0x24(%rbx,%r8,4),%r11d
   1.43%  │ │                   0x00007f38dc63bbc4:   rorx   $0x1f,%r11d,%r11d
   0.57%  │ │                   0x00007f38dc63bbca:   mov    %r11d,0x1c(%rbx,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                             ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   2.99%  │ │                   0x00007f38dc63bbcf:   lea    0x4(%r8),%r10d
   0.03%  │ │                   0x00007f38dc63bbd3:   cmp    $0x4d,%r10d
          │ ╰                   0x00007f38dc63bbd7:   jl     0x00007f38dc63bb50           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@30 (line 157)
   0.04%  │                     0x00007f38dc63bbdd:   add    $0x4,%r8d                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@33 (line 158)
          │  ↗                  0x00007f38dc63bbe1:   mov    -0x10(%rbx,%r8,4),%r10d
   0.19%  │  │                  0x00007f38dc63bbe6:   xor    0x4(%rbx,%r8,4),%r10d
   0.18%  │  │                  0x00007f38dc63bbeb:   xor    -0x28(%rbx,%r8,4),%r10d
   0.09%  │  │                  0x00007f38dc63bbf0:   xor    -0x30(%rbx,%r8,4),%r10d
   0.02%  │  │                  0x00007f38dc63bbf5:   rorx   $0x1f,%r10d,%r10d
   0.21%  │  │                  0x00007f38dc63bbfb:   mov    %r10d,0x10(%rbx,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                            ; - sun.security.provider.SHA::implCompress0@84 (line 159)
   0.43%  │  │                  0x00007f38dc63bc00:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                            ; - sun.security.provider.SHA::implCompress0@85 (line 157)
   0.03%  │  │                  0x00007f38dc63bc03:   cmp    $0x50,%r8d
          │  ╰                  0x00007f38dc63bc07:   jl     0x00007f38dc63bbe1           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@30 (line 157)
          │                     0x00007f38dc63bc09:   vmovq  %xmm0,%rax
          │                     0x00007f38dc63bc0e:   mov    0x34(%rax),%r10d             ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@424 (line 211)
   0.11%  │                     0x00007f38dc63bc12:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f38dc63c388
   0.00%  │                     0x00007f38dc63bc17:   cmp    $0x4,%r8d
          │                     0x00007f38dc63bc1b:   nopl   0x0(%rax,%rax,1)
          │                     0x00007f38dc63bc20:   jbe    0x00007f38dc63c2a4
   0.14%  │                     0x00007f38dc63bc26:   mov    0x20(%r12,%r10,8),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@127 (line 166)
          │                     0x00007f38dc63bc2b:   mov    0x1c(%r12,%r10,8),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@119 (line 165)
          │                     0x00007f38dc63bc30:   mov    0x10(%r12,%r10,8),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@96 (line 162)
          │                     0x00007f38dc63bc35:   mov    0x18(%r12,%r10,8),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@111 (line 164)
   0.13%  │                     0x00007f38dc63bc3a:   mov    0x14(%r12,%r10,8),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@103 (line 163)
          │                     0x00007f38dc63bc3f:   nop
          │                     0x00007f38dc63bc40:   cmp    $0x13,%r13d
          │                     0x00007f38dc63bc44:   jbe    0x00007f38dc63c2c0
          │                     0x00007f38dc63bc4a:   andn   %r8d,%ebp,%edx
   0.13%  │                     0x00007f38dc63bc4f:   mov    %ecx,%edi
          │                     0x00007f38dc63bc51:   and    %ebp,%edi                    ;   {no_reloc}
          │                     0x00007f38dc63bc53:   or     %edx,%edi
          │                     0x00007f38dc63bc55:   rorx   $0x2,%ebp,%edx               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.14%  │                     0x00007f38dc63bc5b:   rorx   $0x1b,%r9d,%ebp
          │                     0x00007f38dc63bc61:   add    %edi,%ebp
          │                     0x00007f38dc63bc63:   add    %r11d,%ebp
          │                     0x00007f38dc63bc66:   add    0x10(%r12,%rsi,8),%ebp
   0.13%  │                     0x00007f38dc63bc6b:   add    $0x5a827999,%ebp             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@172 (line 170)
          │                     0x00007f38dc63bc71:   mov    $0x1,%edi
          │                     0x00007f38dc63bc76:   vmovd  %esi,%xmm2
          │                     0x00007f38dc63bc7a:   vmovd  %r10d,%xmm3
   0.14%  │                     0x00007f38dc63bc7f:   mov    %r8d,%r14d
          │                     0x00007f38dc63bc82:   mov    %r9d,(%rsp)
          │                     0x00007f38dc63bc86:   mov    %ecx,%r8d
          │   ╭                 0x00007f38dc63bc89:   jmp    0x00007f38dc63bc9b
          │   │                 0x00007f38dc63bc8b:   nopl   0x0(%rax,%rax,1)
   0.39%  │   │↗                0x00007f38dc63bc90:   mov    %edx,%r14d
          │   ││                0x00007f38dc63bc93:   mov    %ecx,%edi
          │   ││                0x00007f38dc63bc95:   mov    %r11d,%edx
   0.04%  │   ││                0x00007f38dc63bc98:   mov    %r10d,%ebp                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                                          ; - sun.security.provider.SHA::implCompress0@140 (line 170)
   0.50%  │   ↘│                0x00007f38dc63bc9b:   andn   %edx,%ebp,%esi
          │    │                0x00007f38dc63bca0:   mov    %r9d,%r11d
          │    │                0x00007f38dc63bca3:   mov    %edx,%ecx
   0.05%  │    │                0x00007f38dc63bca5:   and    %edx,%r11d
   0.52%  │    │                0x00007f38dc63bca8:   andn   %r8d,%r9d,%r10d
   0.00%  │    │                0x00007f38dc63bcad:   or     %r10d,%r11d
          │    │                0x00007f38dc63bcb0:   rorx   $0x2,%ebp,%edx
   0.05%  │    │                0x00007f38dc63bcb6:   rorx   $0x2,%r9d,%r10d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.50%  │    │                0x00007f38dc63bcbc:   mov    %r10d,%r9d
          │    │                0x00007f38dc63bcbf:   and    %ebp,%r9d
          │    │                0x00007f38dc63bcc2:   or     %esi,%r9d
   0.06%  │    │                0x00007f38dc63bcc5:   rorx   $0x1b,%ebp,%esi
   0.62%  │    │                0x00007f38dc63bccb:   add    %r11d,%esi
   0.00%  │    │                0x00007f38dc63bcce:   add    %r14d,%esi
   0.05%  │    │                0x00007f38dc63bcd1:   add    0x10(%rbx,%rdi,4),%esi       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@169 (line 170)
   0.26%  │    │                0x00007f38dc63bcd5:   mov    $0xa57d8666,%r11d
   0.33%  │    │                0x00007f38dc63bcdb:   sub    %esi,%r11d
   0.27%  │    │                0x00007f38dc63bcde:   and    %r10d,%r11d
   0.49%  │    │                0x00007f38dc63bce1:   add    $0x5a827999,%esi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.03%  │    │                0x00007f38dc63bce7:   mov    %esi,%ebp
   0.13%  │    │                0x00007f38dc63bce9:   and    %edx,%ebp
   0.19%  │    │                0x00007f38dc63bceb:   or     %r11d,%ebp
   0.48%  │    │                0x00007f38dc63bcee:   rorx   $0x1b,%esi,%r11d
   0.03%  │    │                0x00007f38dc63bcf4:   add    %r9d,%r11d
   0.24%  │    │                0x00007f38dc63bcf7:   add    %r8d,%r11d
   0.31%  │    │                0x00007f38dc63bcfa:   add    0x14(%rbx,%rdi,4),%r11d      ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@169 (line 170)
   0.42%  │    │                0x00007f38dc63bcff:   mov    $0xa57d8666,%r9d
   0.01%  │    │                0x00007f38dc63bd05:   sub    %r11d,%r9d
   0.44%  │    │                0x00007f38dc63bd08:   and    %edx,%r9d
   0.43%  │    │                0x00007f38dc63bd0b:   rorx   $0x2,%esi,%r8d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
          │    │                0x00007f38dc63bd11:   add    $0x5a827999,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.02%  │    │                0x00007f38dc63bd18:   mov    %r8d,%eax
   0.15%  │    │                0x00007f38dc63bd1b:   and    %r11d,%eax
   0.67%  │    │                0x00007f38dc63bd1e:   or     %r9d,%eax
   0.16%  │    │                0x00007f38dc63bd21:   rorx   $0x1b,%r11d,%r9d
   0.01%  │    │                0x00007f38dc63bd27:   add    %ebp,%r9d
   0.21%  │    │                0x00007f38dc63bd2a:   add    %ecx,%r9d
   0.52%  │    │                0x00007f38dc63bd2d:   add    0x18(%rbx,%rdi,4),%r9d
   0.32%  │    │                0x00007f38dc63bd32:   rorx   $0x2,%r11d,%r11d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@187 (line 174)
   0.01%  │    │                0x00007f38dc63bd38:   add    $0x5a827999,%r9d
   0.53%  │    │                0x00007f38dc63bd3f:   rorx   $0x1b,%r9d,%ecx
   0.76%  │    │                0x00007f38dc63bd45:   add    %eax,%ecx
   0.23%  │    │                0x00007f38dc63bd47:   add    %r10d,%ecx
   0.50%  │    │                0x00007f38dc63bd4a:   add    0x1c(%rbx,%rdi,4),%ecx
   0.49%  │    │                0x00007f38dc63bd4e:   add    $0x5a827999,%ecx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                                          ; - sun.security.provider.SHA::implCompress0@172 (line 170)
          │    │                                                                          ;   {no_reloc}
   0.55%  │    │                0x00007f38dc63bd54:   mov    %ecx,%r10d
          │    │                0x00007f38dc63bd57:   lea    0x4(%rdi),%ecx
   0.00%  │    │                0x00007f38dc63bd5a:   nopw   0x0(%rax,%rax,1)
   0.04%  │    │                0x00007f38dc63bd60:   cmp    $0x11,%ecx
          │    ╰                0x00007f38dc63bd63:   jl     0x00007f38dc63bc90           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@137 (line 169)
   0.12%  │                     0x00007f38dc63bd69:   add    $0x4,%edi                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@140 (line 170)
   0.29%  │      ↗              0x00007f38dc63bd6c:   andn   %r8d,%r9d,%ecx
          │      │              0x00007f38dc63bd71:   mov    %r11d,%esi
          │      │              0x00007f38dc63bd74:   and    %r9d,%esi
   0.13%  │      │              0x00007f38dc63bd77:   or     %ecx,%esi
   0.43%  │      │              0x00007f38dc63bd79:   rorx   $0x1b,%r10d,%eax
          │      │              0x00007f38dc63bd7f:   add    %esi,%eax
          │      │              0x00007f38dc63bd81:   add    %edx,%eax
   0.36%  │      │              0x00007f38dc63bd83:   add    0x10(%rbx,%rdi,4),%eax
   0.35%  │      │              0x00007f38dc63bd87:   rorx   $0x2,%r9d,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@187 (line 174)
          │      │              0x00007f38dc63bd8d:   add    $0x5a827999,%eax             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@172 (line 170)
   0.50%  │      │              0x00007f38dc63bd92:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                                        ; - sun.security.provider.SHA::implCompress0@198 (line 169)
          │      │              0x00007f38dc63bd94:   cmp    $0x14,%edi
          │     ╭│              0x00007f38dc63bd97:   jge    0x00007f38dc63bdaa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                                        ; - sun.security.provider.SHA::implCompress0@137 (line 169)
          │     ││              0x00007f38dc63bd99:   mov    %r8d,%edx
          │     ││              0x00007f38dc63bd9c:   mov    %r11d,%r8d
   0.29%  │     ││              0x00007f38dc63bd9f:   mov    %r10d,%r9d
          │     ││              0x00007f38dc63bda2:   mov    %ebp,%r11d
          │     ││              0x00007f38dc63bda5:   mov    %eax,%r10d
          │     │╰              0x00007f38dc63bda8:   jmp    0x00007f38dc63bd6c
          │     ↘               0x00007f38dc63bdaa:   cmp    $0x14,%r13d
          │                     0x00007f38dc63bdae:   jbe    0x00007f38dc63c2ec
          │                     0x00007f38dc63bdb4:   cmp    $0x27,%r13d
          │                     0x00007f38dc63bdb8:   jbe    0x00007f38dc63c2ec
   0.17%  │                     0x00007f38dc63bdbe:   mov    %ebp,%edi
          │                     0x00007f38dc63bdc0:   xor    %r10d,%edi
          │                     0x00007f38dc63bdc3:   xor    %r11d,%edi
          │                     0x00007f38dc63bdc6:   rorx   $0x1b,%eax,%edx
   0.12%  │                     0x00007f38dc63bdcc:   add    %edi,%edx
          │                     0x00007f38dc63bdce:   add    %r8d,%edx
   0.14%  │                     0x00007f38dc63bdd1:   vmovd  %xmm2,%r8d
          │                     0x00007f38dc63bdd6:   add    0x60(%r12,%r8,8),%edx
   0.13%  │                     0x00007f38dc63bddb:   rorx   $0x2,%r10d,%ecx              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │                     0x00007f38dc63bde1:   add    $0x6ed9eba1,%edx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.15%  │                     0x00007f38dc63bde7:   mov    $0x15,%edi
          │                     0x00007f38dc63bdec:   mov    %ebp,%r9d
          │       ╭             0x00007f38dc63bdef:   jmp    0x00007f38dc63bdfa
          │       │↗            0x00007f38dc63bdf1:   mov    %eax,%r11d
   0.40%  │       ││            0x00007f38dc63bdf4:   mov    %r8d,%edi
          │       ││            0x00007f38dc63bdf7:   mov    %r10d,%eax                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                                      ; - sun.security.provider.SHA::implCompress0@215 (line 181)
          │       ↘│            0x00007f38dc63bdfa:   mov    %eax,%r10d
   0.14%  │        │            0x00007f38dc63bdfd:   mov    %eax,%r8d
   0.45%  │        │            0x00007f38dc63be00:   xor    %ecx,%r10d
          │        │            0x00007f38dc63be03:   xor    %r9d,%r10d
          │        │            0x00007f38dc63be06:   rorx   $0x2,%edx,%eax
   0.23%  │        │            0x00007f38dc63be0c:   rorx   $0x1b,%edx,%esi
   0.62%  │        │            0x00007f38dc63be12:   add    %r10d,%esi
   0.03%  │        │            0x00007f38dc63be15:   add    %r11d,%esi
   0.09%  │        │            0x00007f38dc63be18:   add    0x10(%rbx,%rdi,4),%esi
   0.41%  │        │            0x00007f38dc63be1c:   rorx   $0x2,%r8d,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
   0.19%  │        │            0x00007f38dc63be22:   mov    %ebp,%r11d
          │        │            0x00007f38dc63be25:   xor    %edx,%r11d
          │        │            0x00007f38dc63be28:   xor    %ecx,%r11d
   0.39%  │        │            0x00007f38dc63be2b:   add    $0x6ed9eba1,%esi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.32%  │        │            0x00007f38dc63be31:   mov    %esi,%r8d
          │        │            0x00007f38dc63be34:   xor    %eax,%r8d
   0.72%  │        │            0x00007f38dc63be37:   xor    %ebp,%r8d
   0.42%  │        │            0x00007f38dc63be3a:   rorx   $0x1b,%esi,%r14d
   0.13%  │        │            0x00007f38dc63be40:   add    %r11d,%r14d
   0.13%  │        │            0x00007f38dc63be43:   add    %r9d,%r14d
   0.47%  │        │            0x00007f38dc63be46:   add    0x14(%rbx,%rdi,4),%r14d
   0.40%  │        │            0x00007f38dc63be4b:   rorx   $0x2,%esi,%r9d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │        │                                                                      ;   {no_reloc}
   0.02%  │        │            0x00007f38dc63be51:   add    $0x6ed9eba1,%r14d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.51%  │        │            0x00007f38dc63be58:   mov    %r9d,%r11d
          │        │            0x00007f38dc63be5b:   xor    %r14d,%r11d
   1.06%  │        │            0x00007f38dc63be5e:   xor    %eax,%r11d
   0.41%  │        │            0x00007f38dc63be61:   rorx   $0x1b,%r14d,%r10d
   0.01%  │        │            0x00007f38dc63be67:   add    %r8d,%r10d
   0.18%  │        │            0x00007f38dc63be6a:   add    %ecx,%r10d
   0.59%  │        │            0x00007f38dc63be6d:   add    0x18(%rbx,%rdi,4),%r10d
   0.58%  │        │            0x00007f38dc63be72:   rorx   $0x2,%r14d,%ecx              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@257 (line 185)
   0.00%  │        │            0x00007f38dc63be78:   add    $0x6ed9eba1,%r10d
   0.46%  │        │            0x00007f38dc63be7f:   rorx   $0x1b,%r10d,%edx
   0.81%  │        │            0x00007f38dc63be85:   add    %r11d,%edx
   0.27%  │        │            0x00007f38dc63be88:   add    %ebp,%edx
   0.63%  │        │            0x00007f38dc63be8a:   add    0x1c(%rbx,%rdi,4),%edx
   0.58%  │        │            0x00007f38dc63be8e:   add    $0x6ed9eba1,%edx             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                                      ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.59%  │        │            0x00007f38dc63be94:   lea    0x4(%rdi),%r8d
          │        │            0x00007f38dc63be98:   nopl   0x0(%rax,%rax,1)
          │        │            0x00007f38dc63bea0:   cmp    $0x25,%r8d
          │        ╰            0x00007f38dc63bea4:   jl     0x00007f38dc63bdf1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@212 (line 180)
          │                     0x00007f38dc63beaa:   add    $0x4,%edi                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@215 (line 181)
   0.39%  │          ↗          0x00007f38dc63bead:   mov    %ecx,%esi
          │          │          0x00007f38dc63beaf:   xor    %r10d,%esi
          │          │          0x00007f38dc63beb2:   xor    %r9d,%esi
          │          │          0x00007f38dc63beb5:   rorx   $0x1b,%edx,%r11d
   0.74%  │          │          0x00007f38dc63bebb:   add    %esi,%r11d
          │          │          0x00007f38dc63bebe:   add    %eax,%r11d
   0.14%  │          │          0x00007f38dc63bec1:   add    0x10(%rbx,%rdi,4),%r11d
   0.43%  │          │          0x00007f38dc63bec6:   rorx   $0x2,%r10d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@257 (line 185)
          │          │          0x00007f38dc63becc:   add    $0x6ed9eba1,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@242 (line 181)
   0.44%  │          │          0x00007f38dc63bed3:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                                    ; - sun.security.provider.SHA::implCompress0@268 (line 180)
          │          │          0x00007f38dc63bed5:   cmp    $0x28,%edi
          │         ╭│          0x00007f38dc63bed8:   jge    0x00007f38dc63beeb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         ││                                                                    ; - sun.security.provider.SHA::implCompress0@212 (line 180)
          │         ││          0x00007f38dc63beda:   mov    %r9d,%eax
          │         ││          0x00007f38dc63bedd:   mov    %ecx,%r9d
   0.32%  │         ││          0x00007f38dc63bee0:   mov    %edx,%r10d
          │         ││          0x00007f38dc63bee3:   mov    %r8d,%ecx
          │         ││          0x00007f38dc63bee6:   mov    %r11d,%edx
          │         │╰          0x00007f38dc63bee9:   jmp    0x00007f38dc63bead
          │         ↘           0x00007f38dc63beeb:   cmp    $0x28,%r13d
          │                     0x00007f38dc63beef:   jbe    0x00007f38dc63c318
          │                     0x00007f38dc63bef5:   cmp    $0x3b,%r13d
          │                     0x00007f38dc63bef9:   jbe    0x00007f38dc63c318
   0.13%  │                     0x00007f38dc63beff:   mov    %ecx,%edi
          │                     0x00007f38dc63bf01:   and    %edx,%edi
          │                     0x00007f38dc63bf03:   mov    %r8d,%esi
          │                     0x00007f38dc63bf06:   and    %edx,%esi
   0.15%  │                     0x00007f38dc63bf08:   mov    %r8d,%r10d
          │                     0x00007f38dc63bf0b:   and    %ecx,%r10d
          │                     0x00007f38dc63bf0e:   or     %edi,%esi
          │                     0x00007f38dc63bf10:   or     %r10d,%esi
   0.14%  │                     0x00007f38dc63bf13:   rorx   $0x1b,%r11d,%edi
          │                     0x00007f38dc63bf19:   add    %esi,%edi
          │                     0x00007f38dc63bf1b:   add    %r9d,%edi
          │                     0x00007f38dc63bf1e:   vmovd  %xmm2,%r10d
   0.22%  │                     0x00007f38dc63bf23:   add    0xb0(%r12,%r10,8),%edi
   0.00%  │                     0x00007f38dc63bf2b:   rorx   $0x2,%edx,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@336 (line 196)
          │                     0x00007f38dc63bf31:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.07%  │                     0x00007f38dc63bf37:   mov    $0x29,%r9d
   0.11%  │                     0x00007f38dc63bf3d:   vmovd  %r10d,%xmm1
          │                     0x00007f38dc63bf42:   mov    %r11d,%eax
          │           ╭         0x00007f38dc63bf45:   jmp    0x00007f38dc63bf55
          │           │         0x00007f38dc63bf47:   nopw   0x0(%rax,%rax,1)             ;   {no_reloc}
          │           │↗        0x00007f38dc63bf50:   mov    %edx,%ecx
          │           ││        0x00007f38dc63bf52:   mov    %r11d,%r9d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │           ││                                                                  ; - sun.security.provider.SHA::implCompress0@285 (line 192)
   0.57%  │           ↘│        0x00007f38dc63bf55:   mov    %edi,%r11d
   0.08%  │            │        0x00007f38dc63bf58:   mov    %edi,%r10d
          │            │        0x00007f38dc63bf5b:   and    %ebp,%r11d
   0.01%  │            │        0x00007f38dc63bf5e:   mov    %r8d,%esi
   0.46%  │            │        0x00007f38dc63bf61:   and    %eax,%esi
   0.08%  │            │        0x00007f38dc63bf63:   mov    %r8d,%edx
          │            │        0x00007f38dc63bf66:   and    %ebp,%edx
   0.01%  │            │        0x00007f38dc63bf68:   mov    %eax,%edi
   0.50%  │            │        0x00007f38dc63bf6a:   and    %ebp,%edi
   0.08%  │            │        0x00007f38dc63bf6c:   or     %esi,%edi
   0.00%  │            │        0x00007f38dc63bf6e:   or     %edx,%edi
   0.01%  │            │        0x00007f38dc63bf70:   rorx   $0x2,%r10d,%edx
   0.49%  │            │        0x00007f38dc63bf76:   rorx   $0x2,%eax,%esi               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.09%  │            │        0x00007f38dc63bf7c:   mov    %esi,%eax
   0.00%  │            │        0x00007f38dc63bf7e:   and    %r10d,%eax
   0.02%  │            │        0x00007f38dc63bf81:   mov    %edx,%r14d
   0.51%  │            │        0x00007f38dc63bf84:   and    %esi,%r14d
   0.08%  │            │        0x00007f38dc63bf87:   or     %r11d,%eax
   0.00%  │            │        0x00007f38dc63bf8a:   mov    %esi,%r11d
   0.01%  │            │        0x00007f38dc63bf8d:   and    %ebp,%r11d
   0.48%  │            │        0x00007f38dc63bf90:   or     %r11d,%eax
   0.12%  │            │        0x00007f38dc63bf93:   rorx   $0x1b,%r10d,%r11d
          │            │        0x00007f38dc63bf99:   add    %edi,%r11d
   0.01%  │            │        0x00007f38dc63bf9c:   add    %ecx,%r11d
   0.46%  │            │        0x00007f38dc63bf9f:   add    0x10(%rbx,%r9,4),%r11d
   0.14%  │            │        0x00007f38dc63bfa4:   add    $0x8f1bbcdc,%r11d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.27%  │            │        0x00007f38dc63bfab:   mov    %r11d,%edi
   0.00%  │            │        0x00007f38dc63bfae:   and    %esi,%edi
   0.85%  │            │        0x00007f38dc63bfb0:   mov    %r11d,%ecx
   0.08%  │            │        0x00007f38dc63bfb3:   and    %edx,%ecx
   0.08%  │            │        0x00007f38dc63bfb5:   or     %edi,%ecx
   0.28%  │            │        0x00007f38dc63bfb7:   or     %r14d,%ecx
   0.58%  │            │        0x00007f38dc63bfba:   rorx   $0x1b,%r11d,%edi
   0.05%  │            │        0x00007f38dc63bfc0:   add    %eax,%edi
   0.01%  │            │        0x00007f38dc63bfc2:   add    %r8d,%edi
   0.08%  │            │        0x00007f38dc63bfc5:   add    0x14(%rbx,%r9,4),%edi
   0.55%  │            │        0x00007f38dc63bfca:   rorx   $0x2,%r11d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.04%  │            │        0x00007f38dc63bfd0:   mov    %r8d,%r10d
          │            │        0x00007f38dc63bfd3:   and    %edx,%r10d
   0.02%  │            │        0x00007f38dc63bfd6:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.51%  │            │        0x00007f38dc63bfdc:   mov    %edi,%eax
   0.04%  │            │        0x00007f38dc63bfde:   and    %edx,%eax
   0.93%  │            │        0x00007f38dc63bfe0:   mov    %r8d,%r14d
   0.01%  │            │        0x00007f38dc63bfe3:   and    %edi,%r14d
   0.19%  │            │        0x00007f38dc63bfe6:   or     %eax,%r14d
   0.27%  │            │        0x00007f38dc63bfe9:   or     %r10d,%r14d
   0.60%  │            │        0x00007f38dc63bfec:   rorx   $0x1b,%edi,%r10d
   0.00%  │            │        0x00007f38dc63bff2:   add    %ecx,%r10d
   0.01%  │            │        0x00007f38dc63bff5:   add    %ebp,%r10d
   0.12%  │            │        0x00007f38dc63bff8:   add    0x18(%rbx,%r9,4),%r10d
   0.54%  │            │        0x00007f38dc63bffd:   rorx   $0x2,%edi,%ebp               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.01%  │            │        0x00007f38dc63c003:   add    $0x8f1bbcdc,%r10d
   0.49%  │            │        0x00007f38dc63c00a:   mov    %r10d,%eax
          │            │        0x00007f38dc63c00d:   rorx   $0x1b,%r10d,%edi
   0.95%  │            │        0x00007f38dc63c013:   add    %r14d,%edi
   0.25%  │            │        0x00007f38dc63c016:   add    %esi,%edi
   0.57%  │            │        0x00007f38dc63c018:   add    0x1c(%rbx,%r9,4),%edi
   0.56%  │            │        0x00007f38dc63c01d:   add    $0x8f1bbcdc,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                                  ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.55%  │            │        0x00007f38dc63c023:   lea    0x4(%r9),%r11d
          │            │        0x00007f38dc63c027:   cmp    $0x39,%r11d
          │            ╰        0x00007f38dc63c02b:   jl     0x00007f38dc63bf50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@282 (line 191)
          │                     0x00007f38dc63c031:   add    $0x4,%r9d                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@285 (line 192)
   0.17%  │              ↗      0x00007f38dc63c035:   mov    %eax,%r10d
   0.15%  │              │      0x00007f38dc63c038:   and    %r8d,%r10d
          │              │      0x00007f38dc63c03b:   mov    %ebp,%ecx
   0.08%  │              │      0x00007f38dc63c03d:   and    %eax,%ecx
   0.18%  │              │      0x00007f38dc63c03f:   mov    %ebp,%r11d
   0.19%  │              │      0x00007f38dc63c042:   and    %r8d,%r11d
   0.00%  │              │      0x00007f38dc63c045:   or     %r10d,%ecx
   0.09%  │              │      0x00007f38dc63c048:   or     %r11d,%ecx
   0.18%  │              │      0x00007f38dc63c04b:   rorx   $0x1b,%edi,%r10d             ;   {no_reloc}
   0.25%  │              │      0x00007f38dc63c051:   add    %ecx,%r10d
          │              │      0x00007f38dc63c054:   add    %edx,%r10d
   0.15%  │              │      0x00007f38dc63c057:   add    0x10(%rbx,%r9,4),%r10d
   0.28%  │              │      0x00007f38dc63c05c:   rorx   $0x2,%eax,%r11d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@336 (line 196)
   0.14%  │              │      0x00007f38dc63c062:   add    $0x8f1bbcdc,%r10d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@321 (line 192)
   0.27%  │              │      0x00007f38dc63c069:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                                ; - sun.security.provider.SHA::implCompress0@347 (line 191)
   0.05%  │              │      0x00007f38dc63c06c:   cmp    $0x3c,%r9d
          │             ╭│      0x00007f38dc63c070:   jge    0x00007f38dc63c082           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │             ││                                                                ; - sun.security.provider.SHA::implCompress0@282 (line 191)
          │             ││      0x00007f38dc63c072:   mov    %r8d,%edx
   0.06%  │             ││      0x00007f38dc63c075:   mov    %ebp,%r8d
   0.16%  │             ││      0x00007f38dc63c078:   mov    %edi,%eax
   0.04%  │             ││      0x00007f38dc63c07a:   mov    %r11d,%ebp
          │             ││      0x00007f38dc63c07d:   mov    %r10d,%edi
   0.10%  │             │╰      0x00007f38dc63c080:   jmp    0x00007f38dc63c035
          │             ↘       0x00007f38dc63c082:   cmp    $0x3c,%r13d
          │                     0x00007f38dc63c086:   jbe    0x00007f38dc63c348
   0.05%  │                     0x00007f38dc63c08c:   mov    %r11d,%ecx
   0.10%  │                     0x00007f38dc63c08f:   xor    %edi,%ecx
          │                     0x00007f38dc63c091:   xor    %ebp,%ecx
          │                     0x00007f38dc63c093:   rorx   $0x1b,%r10d,%r9d
   0.04%  │                     0x00007f38dc63c099:   add    %ecx,%r9d
   0.11%  │                     0x00007f38dc63c09c:   add    %r8d,%r9d
   0.10%  │                     0x00007f38dc63c09f:   vmovd  %xmm1,%ecx
          │                     0x00007f38dc63c0a3:   add    0x100(%r12,%rcx,8),%r9d
   0.16%  │                     0x00007f38dc63c0ab:   rorx   $0x2,%edi,%r8d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                                                                               ; - sun.security.provider.SHA::implCompress0@406 (line 207)
          │                     0x00007f38dc63c0b1:   add    $0xca62c1d6,%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.15%  │                     0x00007f38dc63c0b8:   mov    $0x3d,%ecx
          │               ╭     0x00007f38dc63c0bd:   jmp    0x00007f38dc63c0c8
          │               │     0x00007f38dc63c0bf:   nop
          │               │↗    0x00007f38dc63c0c0:   mov    %edx,%ebp
   0.45%  │               ││    0x00007f38dc63c0c2:   mov    %r10d,%ecx
          │               ││    0x00007f38dc63c0c5:   mov    %eax,%r10d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │               ││                                                              ; - sun.security.provider.SHA::implCompress0@364 (line 203)
          │               ↘│    0x00007f38dc63c0c8:   mov    %r10d,%eax
          │                │    0x00007f38dc63c0cb:   xor    %r8d,%eax
   0.56%  │                │    0x00007f38dc63c0ce:   xor    %r11d,%eax
          │                │    0x00007f38dc63c0d1:   rorx   $0x2,%r9d,%edx
   0.02%  │                │    0x00007f38dc63c0d7:   rorx   $0x1b,%r9d,%edi
   0.02%  │                │    0x00007f38dc63c0dd:   add    %eax,%edi
   0.54%  │                │    0x00007f38dc63c0df:   add    %ebp,%edi
   0.28%  │                │    0x00007f38dc63c0e1:   add    0x10(%rbx,%rcx,4),%edi
   0.62%  │                │    0x00007f38dc63c0e5:   rorx   $0x2,%r10d,%esi              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
          │                │    0x00007f38dc63c0eb:   mov    %esi,%eax
          │                │    0x00007f38dc63c0ed:   xor    %r9d,%eax
          │                │    0x00007f38dc63c0f0:   xor    %r8d,%eax
   0.54%  │                │    0x00007f38dc63c0f3:   add    $0xca62c1d6,%edi             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.00%  │                │    0x00007f38dc63c0f9:   mov    %edi,%r9d
          │                │    0x00007f38dc63c0fc:   xor    %edx,%r9d
   0.99%  │                │    0x00007f38dc63c0ff:   xor    %esi,%r9d
   0.40%  │                │    0x00007f38dc63c102:   rorx   $0x1b,%edi,%r10d
          │                │    0x00007f38dc63c108:   add    %eax,%r10d
   0.13%  │                │    0x00007f38dc63c10b:   add    %r11d,%r10d
   0.57%  │                │    0x00007f38dc63c10e:   add    0x14(%rbx,%rcx,4),%r10d
   0.45%  │                │    0x00007f38dc63c113:   rorx   $0x2,%edi,%r11d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
          │                │    0x00007f38dc63c119:   add    $0xca62c1d6,%r10d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.61%  │                │    0x00007f38dc63c120:   mov    %r11d,%ebp
          │                │    0x00007f38dc63c123:   xor    %r10d,%ebp
   1.06%  │                │    0x00007f38dc63c126:   xor    %edx,%ebp
   0.50%  │                │    0x00007f38dc63c128:   rorx   $0x1b,%r10d,%eax
   0.01%  │                │    0x00007f38dc63c12e:   add    %r9d,%eax
   0.15%  │                │    0x00007f38dc63c131:   add    %r8d,%eax
   0.54%  │                │    0x00007f38dc63c134:   add    0x18(%rbx,%rcx,4),%eax
   0.49%  │                │    0x00007f38dc63c138:   rorx   $0x2,%r10d,%r8d              ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@406 (line 207)
   0.01%  │                │    0x00007f38dc63c13e:   add    $0xca62c1d6,%eax
   0.54%  │                │    0x00007f38dc63c143:   rorx   $0x1b,%eax,%r9d
   0.92%  │                │    0x00007f38dc63c149:   add    %ebp,%r9d
   0.20%  │                │    0x00007f38dc63c14c:   add    %esi,%r9d                    ;   {no_reloc}
   0.59%  │                │    0x00007f38dc63c14f:   add    0x1c(%rbx,%rcx,4),%r9d
   0.57%  │                │    0x00007f38dc63c154:   add    $0xca62c1d6,%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                │                                                              ; - sun.security.provider.SHA::implCompress0@391 (line 203)
   0.60%  │                │    0x00007f38dc63c15b:   lea    0x4(%rcx),%r10d
          │                │    0x00007f38dc63c15f:   nop
          │                │    0x00007f38dc63c160:   cmp    $0x4d,%r10d
          │                ╰    0x00007f38dc63c164:   jl     0x00007f38dc63c0c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@361 (line 202)
          │                     0x00007f38dc63c16a:   add    $0x4,%ecx                    ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@364 (line 203)
   0.15%  │                  ↗  0x00007f38dc63c16d:   mov    %r8d,%esi
   0.18%  │                  │  0x00007f38dc63c170:   xor    %eax,%esi
   0.17%  │                  │  0x00007f38dc63c172:   xor    %r11d,%esi
          │                  │  0x00007f38dc63c175:   rorx   $0x2,%eax,%edi               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - java.lang.Integer::rotateLeft@7 (line 1724)
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@406 (line 207)
   0.25%  │                  │  0x00007f38dc63c17b:   rorx   $0x1b,%r9d,%ebp
   0.31%  │                  │  0x00007f38dc63c181:   add    %esi,%ebp
   0.13%  │                  │  0x00007f38dc63c183:   add    %edx,%ebp
          │                  │  0x00007f38dc63c185:   add    0x10(%rbx,%rcx,4),%ebp       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@388 (line 203)
   0.30%  │                  │  0x00007f38dc63c189:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                  │                                                            ; - sun.security.provider.SHA::implCompress0@417 (line 202)
   0.17%  │                  │  0x00007f38dc63c18b:   cmp    $0x50,%ecx
          │                 ╭│  0x00007f38dc63c18e:   jge    0x00007f38dc63c1ad           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                 ││                                                            ; - sun.security.provider.SHA::implCompress0@361 (line 202)
          │                 ││  0x00007f38dc63c190:   add    $0xca62c1d6,%ebp             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                 ││                                                            ; - sun.security.provider.SHA::implCompress0@391 (line 203)
          │                 ││  0x00007f38dc63c196:   mov    %r11d,%edx
   0.14%  │                 ││  0x00007f38dc63c199:   mov    %r8d,%r10d
   0.15%  │                 ││  0x00007f38dc63c19c:   mov    %r9d,%r11d
          │                 ││  0x00007f38dc63c19f:   mov    %edi,%r8d
          │                 ││  0x00007f38dc63c1a2:   mov    %ebp,%r9d
   0.14%  │                 ││  0x00007f38dc63c1a5:   mov    %r11d,%eax
   0.11%  │                 ││  0x00007f38dc63c1a8:   mov    %r10d,%r11d
          │                 │╰  0x00007f38dc63c1ab:   jmp    0x00007f38dc63c16d
   0.15%  │                 ↘   0x00007f38dc63c1ad:   add    (%rsp),%ebp
   0.00%  │                     0x00007f38dc63c1b0:   add    $0xca62c1d6,%ebp
   0.16%  │                     0x00007f38dc63c1b6:   vmovd  %xmm3,%r10d
          │                     0x00007f38dc63c1bb:   mov    %ebp,0x10(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@432 (line 211)
   0.26%  │                     0x00007f38dc63c1c0:   add    %r9d,0x14(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@443 (line 212)
   0.00%  │                     0x00007f38dc63c1c5:   add    %edi,0x18(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@454 (line 213)
   0.15%  │                     0x00007f38dc63c1ca:   add    %r8d,0x1c(%r12,%r10,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - sun.security.provider.SHA::implCompress0@465 (line 214)
   0.15%  │                     0x00007f38dc63c1cf:   add    %r11d,0x20(%r12,%r10,8)
   0.13%  │                     0x00007f38dc63c1d4:   add    $0x40,%rsp
          │                     0x00007f38dc63c1d8:   pop    %rbp
          │                     0x00007f38dc63c1d9:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │                     0x00007f38dc63c1e0:   ja     0x00007f38dc63c3c0
   0.15%  │                     0x00007f38dc63c1e6:   ret    
          ↘                     0x00007f38dc63c1e7:   mov    $0xffffffe4,%esi
                                0x00007f38dc63c1ec:   mov    %r9,%rbp
                                0x00007f38dc63c1ef:   mov    %r10d,0x10(%rsp)
                                0x00007f38dc63c1f4:   mov    %r11,0x18(%rsp)
                                0x00007f38dc63c1f9:   mov    %ecx,0x14(%rsp)
                                0x00007f38dc63c1fd:   mov    %r8d,0x20(%rsp)
                                0x00007f38dc63c202:   nop
                                0x00007f38dc63c203:   call   0x00007f38dc0c9f00           ; ImmutableOopMap {rbp=Oop [16]=NarrowOop [24]=Oop }
                                                                                          ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.lang.invoke.VarHandleByteArrayAsInts$ArrayHandle::index@8 (line 101)
....................................................................................................
  95.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.82%         c2, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 581 
   1.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 623 
   1.11%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 623 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 623 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.19%  <...other 371 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.82%         c2, level 4  sun.security.provider.SHA::implCompress0, version 3, compile id 581 
   2.50%              kernel  [unknown] 
   1.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 623 
   0.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 651 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%  libpthread-2.31.so  __libc_write 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.12%         c2, level 4
   2.50%              kernel
   0.11%           libjvm.so
   0.09%        runtime stub
   0.09%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    perf-1943069.map
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-224, length = 16384)

# Run progress: 18.18% complete, ETA 00:16:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.457 us/op
# Warmup Iteration   2: 54.321 us/op
# Warmup Iteration   3: 54.289 us/op
# Warmup Iteration   4: 54.306 us/op
# Warmup Iteration   5: 54.315 us/op
Iteration   1: 54.313 us/op
Iteration   2: 54.316 us/op
Iteration   3: 54.312 us/op
Iteration   4: 54.308 us/op
Iteration   5: 54.301 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.310 ±(99.9%) 0.022 us/op [Average]
  (min, avg, max) = (54.301, 54.310, 54.316), stdev = 0.006
  CI (99.9%): [54.288, 54.332] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 144181 total address lines.
Perf output processed (skipped 56.280 seconds):
 Column 1: cycles (50597 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1092 lines, but threshold is 1000>
....................................................................................................
  96.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.32%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.42%              kernel  [unknown] 
   0.37%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.29%        runtime stub  StubRoutines::sha256_implCompress 
   0.25%        runtime stub  StubRoutines::sha256_implCompress 
   0.23%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.13%        runtime stub  StubRoutines::sha256_implCompress 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%        runtime stub  StubRoutines::sha256_implCompress 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        runtime stub  StubRoutines::sha256_implCompress 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 641 
   0.04%                      <unknown> 
   0.04%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 638 
   0.03%              kernel  [unknown] 
   0.03%        runtime stub  StubRoutines::sha256_implCompress 
   1.34%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.92%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.42%              kernel  [unknown] 
   0.91%        runtime stub  StubRoutines::sha256_implCompress 
   0.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 641 
   0.13%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 638 
   0.07%                      <unknown> 
   0.04%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.03%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 669 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.16%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%        runtime stub
   1.42%              kernel
   0.33%         c2, level 4
   0.14%           libjvm.so
   0.07%                    
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-1943133.map
   0.00%         c1, level 3
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-256, length = 16384)

# Run progress: 27.27% complete, ETA 00:14:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 60.247 us/op
# Warmup Iteration   2: 54.362 us/op
# Warmup Iteration   3: 54.349 us/op
# Warmup Iteration   4: 54.365 us/op
# Warmup Iteration   5: 54.357 us/op
Iteration   1: 54.346 us/op
Iteration   2: 54.349 us/op
Iteration   3: 54.352 us/op
Iteration   4: 54.358 us/op
Iteration   5: 54.353 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.352 ±(99.9%) 0.016 us/op [Average]
  (min, avg, max) = (54.346, 54.352, 54.358), stdev = 0.004
  CI (99.9%): [54.336, 54.367] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 141608 total address lines.
Perf output processed (skipped 56.150 seconds):
 Column 1: cycles (50742 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompress 

 <region is too big to display, has 1153 lines, but threshold is 1000>
....................................................................................................
  96.43%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.43%        runtime stub  StubRoutines::sha256_implCompress 
   0.54%              kernel  [unknown] 
   0.42%        runtime stub  StubRoutines::sha256_implCompress 
   0.22%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.18%        runtime stub  StubRoutines::sha256_implCompress 
   0.10%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::sha256_implCompress 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        runtime stub  StubRoutines::sha256_implCompress 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%        runtime stub  StubRoutines::sha256_implCompress 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 622 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%        runtime stub  StubRoutines::sha256_implCompress 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 621 
   1.43%  <...other 331 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.33%        runtime stub  StubRoutines::sha256_implCompress 
   1.69%              kernel  [unknown] 
   0.22%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 622 
   0.15%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 621 
   0.04%                      <unknown> 
   0.03%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.02%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%         c2, level 4  sun.security.provider.SHA2::implCompress, version 2, compile id 586 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  _pthread_cleanup_push 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.20%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%        runtime stub
   1.69%              kernel
   0.35%         c2, level 4
   0.17%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-384, length = 16384)

# Run progress: 36.36% complete, ETA 00:12:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.218 us/op
# Warmup Iteration   2: 37.866 us/op
# Warmup Iteration   3: 37.857 us/op
# Warmup Iteration   4: 37.864 us/op
# Warmup Iteration   5: 37.866 us/op
Iteration   1: 37.865 us/op
Iteration   2: 37.863 us/op
Iteration   3: 37.857 us/op
Iteration   4: 37.863 us/op
Iteration   5: 37.877 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.865 ±(99.9%) 0.028 us/op [Average]
  (min, avg, max) = (37.857, 37.865, 37.877), stdev = 0.007
  CI (99.9%): [37.837, 37.893] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 146092 total address lines.
Perf output processed (skipped 55.992 seconds):
 Column 1: cycles (50894 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                    0x00007f07500ef36d:   and    $0xffffffffffffffe0,%rsp
                    0x00007f07500ef371:   mov    %rax,0x38(%rsp)
   0.00%            0x00007f07500ef376:   mov    %rbp,0x40(%rsp)
   0.00%            0x00007f07500ef37b:   mov    %rbx,0x48(%rsp)
                    0x00007f07500ef380:   mov    %r12,0x50(%rsp)
                    0x00007f07500ef385:   mov    %r13,0x58(%rsp)
                    0x00007f07500ef38a:   mov    %r14,0x60(%rsp)
                    0x00007f07500ef38f:   mov    %r15,0x68(%rsp)
                    0x00007f07500ef394:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f07500ef39a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
   0.00%            0x00007f07500ef3a0:   xor    %rax,%rax
   0.01%   ↗        0x00007f07500ef3a3:   cmp    %rcx,%rdx
          ╭│        0x00007f07500ef3a6:   jae    0x00007f07500ef3b7
   0.06%  ││        0x00007f07500ef3a8:   add    $0x80,%rdx
   0.02%  ││        0x00007f07500ef3af:   add    $0x80,%rax
   0.05%  │╰        0x00007f07500ef3b5:   jmp    0x00007f07500ef3a3
   0.01%  ↘         0x00007f07500ef3b7:   mov    %rax,%rdx
                    0x00007f07500ef3ba:   cmp    $0x0,%rdx
            ╭       0x00007f07500ef3be:   je     0x00007f07500f016b
   0.01%    │       0x00007f07500ef3c4:   add    %rdi,%rdx
   0.01%    │       0x00007f07500ef3c7:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007f07500ef3cc:   mov    (%rsi),%rax
            │       0x00007f07500ef3cf:   mov    0x8(%rsi),%rbx
            │       0x00007f07500ef3d3:   mov    0x10(%rsi),%rcx
            │       0x00007f07500ef3d7:   mov    0x18(%rsi),%r8
            │       0x00007f07500ef3db:   mov    0x20(%rsi),%rdx
            │       0x00007f07500ef3df:   mov    0x28(%rsi),%r9
            │       0x00007f07500ef3e3:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007f07500ef3e7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f07500ee500
   0.00%    │       0x00007f07500ef3ef:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f07500ee520
            │       0x00007f07500ef3f7:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f07500ef3fb:   movabs $0x7f0765d12d40,%rbp
   0.01%    │  │    0x00007f07500ef405:   vmovdqu (%rdi),%ymm4
   0.01%    │  │    0x00007f07500ef409:   vpshufb %ymm9,%ymm4,%ymm4
   0.12%    │  │    0x00007f07500ef40e:   vmovdqu 0x20(%rdi),%ymm5
   0.03%    │  │    0x00007f07500ef413:   vpshufb %ymm9,%ymm5,%ymm5
   0.07%    │  │    0x00007f07500ef418:   vmovdqu 0x40(%rdi),%ymm6
   0.04%    │  │    0x00007f07500ef41d:   vpshufb %ymm9,%ymm6,%ymm6
   0.11%    │  │    0x00007f07500ef422:   vmovdqu 0x60(%rdi),%ymm7
   0.04%    │  │    0x00007f07500ef427:   vpshufb %ymm9,%ymm7,%ymm7
   0.10%    │  │    0x00007f07500ef42c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f07500ef431:   movq   $0x4,0x20(%rsp)
   0.06%    │  │    0x00007f07500ef43a:   nopw   0x0(%rax,%rax,1)
   0.05%    │↗ │    0x00007f07500ef440:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.23%    ││ │    0x00007f07500ef445:   vmovdqu %ymm0,(%rsp)
   0.15%    ││ │    0x00007f07500ef44a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.31%    ││ │    0x00007f07500ef450:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.36%    ││ │    0x00007f07500ef456:   vpaddq %ymm4,%ymm0,%ymm0
   0.69%    ││ │    0x00007f07500ef45a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.14%    ││ │    0x00007f07500ef460:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.10%    ││ │    0x00007f07500ef466:   vpsrlq $0x1,%ymm1,%ymm2
   0.08%    ││ │    0x00007f07500ef46b:   vpsllq $0x3f,%ymm1,%ymm3
   0.30%    ││ │    0x00007f07500ef470:   vpor   %ymm2,%ymm3,%ymm3
   0.18%    ││ │    0x00007f07500ef474:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007f07500ef479:   mov    %rax,%rdi
   0.05%    ││ │    0x00007f07500ef47c:   rorx   $0x29,%rdx,%r13
   0.19%    ││ │    0x00007f07500ef482:   rorx   $0x12,%rdx,%r14
   0.17%    ││ │    0x00007f07500ef488:   add    (%rsp),%r11
   0.08%    ││ │    0x00007f07500ef48c:   or     %rcx,%rdi
   0.05%    ││ │    0x00007f07500ef48f:   mov    %r9,%r15
   0.21%    ││ │    0x00007f07500ef492:   xor    %r10,%r15
   0.19%    ││ │    0x00007f07500ef495:   rorx   $0x22,%rax,%r12
   0.08%    ││ │    0x00007f07500ef49b:   xor    %r14,%r13
   0.06%    ││ │    0x00007f07500ef49e:   rorx   $0xe,%rdx,%r14
   0.21%    ││ │    0x00007f07500ef4a4:   and    %rdx,%r15
   0.16%    ││ │    0x00007f07500ef4a7:   add    %r11,%r8
   0.07%    ││ │    0x00007f07500ef4aa:   and    %rbx,%rdi
   0.05%    ││ │    0x00007f07500ef4ad:   xor    %r14,%r13
   0.21%    ││ │    0x00007f07500ef4b0:   rorx   $0x27,%rax,%r14
   0.22%    ││ │    0x00007f07500ef4b6:   xor    %r12,%r14
   0.05%    ││ │    0x00007f07500ef4b9:   rorx   $0x1c,%rax,%r12
   0.06%    ││ │    0x00007f07500ef4bf:   xor    %r10,%r15
   0.22%    ││ │    0x00007f07500ef4c2:   xor    %r12,%r14
   0.19%    ││ │    0x00007f07500ef4c5:   mov    %rax,%r12
   0.06%    ││ │    0x00007f07500ef4c8:   and    %rcx,%r12
   0.06%    ││ │    0x00007f07500ef4cb:   add    %r13,%r15
   0.19%    ││ │    0x00007f07500ef4ce:   or     %r12,%rdi
   0.15%    ││ │    0x00007f07500ef4d1:   add    %r14,%r11
   0.07%    ││ │    0x00007f07500ef4d4:   add    %r15,%r8
   0.05%    ││ │    0x00007f07500ef4d7:   add    %r15,%r11
   0.21%    ││ │    0x00007f07500ef4da:   add    %rdi,%r11
   0.15%    ││ │    0x00007f07500ef4dd:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007f07500ef4e2:   vpsllq $0x38,%ymm1,%ymm1
   0.07%    ││ │    0x00007f07500ef4e7:   vpor   %ymm2,%ymm1,%ymm1
   0.22%    ││ │    0x00007f07500ef4eb:   vpxor  %ymm8,%ymm3,%ymm3
   0.19%    ││ │    0x00007f07500ef4f0:   vpxor  %ymm1,%ymm3,%ymm1
   0.08%    ││ │    0x00007f07500ef4f4:   vpaddq %ymm1,%ymm0,%ymm0
   0.06%    ││ │    0x00007f07500ef4f8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.19%    ││ │    0x00007f07500ef4fe:   vpand  %ymm10,%ymm0,%ymm0
   0.16%    ││ │    0x00007f07500ef503:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.08%    ││ │    0x00007f07500ef509:   vpsrlq $0x6,%ymm2,%ymm8
   0.03%    ││ │    0x00007f07500ef50e:   mov    %r11,%rdi
   0.21%    ││ │    0x00007f07500ef511:   rorx   $0x29,%r8,%r13
   0.16%    ││ │    0x00007f07500ef517:   rorx   $0x12,%r8,%r14
   0.08%    ││ │    0x00007f07500ef51d:   add    0x8(%rsp),%r10
   0.06%    ││ │    0x00007f07500ef522:   or     %rbx,%rdi
   0.21%    ││ │    0x00007f07500ef525:   mov    %rdx,%r15
   0.17%    ││ │    0x00007f07500ef528:   xor    %r9,%r15
   0.07%    ││ │    0x00007f07500ef52b:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007f07500ef531:   xor    %r14,%r13
   0.20%    ││ │    0x00007f07500ef534:   rorx   $0xe,%r8,%r14
   0.17%    ││ │    0x00007f07500ef53a:   and    %r8,%r15
   0.09%    ││ │    0x00007f07500ef53d:   add    %r10,%rcx
   0.05%    ││ │    0x00007f07500ef540:   and    %rax,%rdi
   0.22%    ││ │    0x00007f07500ef543:   xor    %r14,%r13
   0.14%    ││ │    0x00007f07500ef546:   rorx   $0x27,%r11,%r14
   0.08%    ││ │    0x00007f07500ef54c:   xor    %r12,%r14
   0.05%    ││ │    0x00007f07500ef54f:   rorx   $0x1c,%r11,%r12
   0.22%    ││ │    0x00007f07500ef555:   xor    %r9,%r15
   0.20%    ││ │    0x00007f07500ef558:   xor    %r12,%r14
   0.08%    ││ │    0x00007f07500ef55b:   mov    %r11,%r12
   0.04%    ││ │    0x00007f07500ef55e:   and    %rbx,%r12
   0.21%    ││ │    0x00007f07500ef561:   add    %r13,%r15
   0.14%    ││ │    0x00007f07500ef564:   or     %r12,%rdi
   0.07%    ││ │    0x00007f07500ef567:   add    %r14,%r10
   0.07%    ││ │    0x00007f07500ef56a:   add    %r15,%rcx
   0.19%    ││ │    0x00007f07500ef56d:   add    %r15,%r10
   0.19%    ││ │    0x00007f07500ef570:   add    %rdi,%r10
   0.08%    ││ │    0x00007f07500ef573:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007f07500ef578:   vpsllq $0x2d,%ymm2,%ymm1
   0.20%    ││ │    0x00007f07500ef57d:   vpor   %ymm1,%ymm3,%ymm3
   0.19%    ││ │    0x00007f07500ef581:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f07500ef585:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%    ││ │    0x00007f07500ef58a:   vpsllq $0x3,%ymm2,%ymm1
   0.22%    ││ │    0x00007f07500ef58f:   vpor   %ymm1,%ymm3,%ymm3
   0.19%    ││ │    0x00007f07500ef593:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f07500ef597:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%    ││ │    0x00007f07500ef59c:   vpsrlq $0x6,%ymm4,%ymm8
   0.24%    ││ │    0x00007f07500ef5a1:   mov    %r10,%rdi
   0.16%    ││ │    0x00007f07500ef5a4:   rorx   $0x29,%rcx,%r13
   0.08%    ││ │    0x00007f07500ef5aa:   rorx   $0x12,%rcx,%r14
   0.05%    ││ │    0x00007f07500ef5b0:   add    0x10(%rsp),%r9
   0.26%    ││ │    0x00007f07500ef5b5:   or     %rax,%rdi
   0.20%    ││ │    0x00007f07500ef5b8:   mov    %r8,%r15
   0.08%    ││ │    0x00007f07500ef5bb:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f07500ef5be:   rorx   $0x22,%r10,%r12
   0.20%    ││ │    0x00007f07500ef5c4:   xor    %r14,%r13
   0.19%    ││ │    0x00007f07500ef5c7:   rorx   $0xe,%rcx,%r14
   0.05%    ││ │    0x00007f07500ef5cd:   and    %rcx,%r15
   0.06%    ││ │    0x00007f07500ef5d0:   add    %r9,%rbx
   0.21%    ││ │    0x00007f07500ef5d3:   and    %r11,%rdi
   0.18%    ││ │    0x00007f07500ef5d6:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500ef5d9:   rorx   $0x27,%r10,%r14
   0.06%    ││ │    0x00007f07500ef5df:   xor    %r12,%r14
   0.22%    ││ │    0x00007f07500ef5e2:   rorx   $0x1c,%r10,%r12
   0.18%    ││ │    0x00007f07500ef5e8:   xor    %rdx,%r15
   0.07%    ││ │    0x00007f07500ef5eb:   xor    %r12,%r14
   0.04%    ││ │    0x00007f07500ef5ee:   mov    %r10,%r12
   0.23%    ││ │    0x00007f07500ef5f1:   and    %rax,%r12
   0.18%    ││ │    0x00007f07500ef5f4:   add    %r13,%r15
   0.06%    ││ │    0x00007f07500ef5f7:   or     %r12,%rdi
   0.04%    ││ │    0x00007f07500ef5fa:   add    %r14,%r9
   0.23%    ││ │    0x00007f07500ef5fd:   add    %r15,%rbx
   0.13%    ││ │    0x00007f07500ef600:   add    %r15,%r9
   0.08%    ││ │    0x00007f07500ef603:   add    %rdi,%r9
   0.05%    ││ │    0x00007f07500ef606:   vpsrlq $0x13,%ymm4,%ymm3
   0.21%    ││ │    0x00007f07500ef60b:   vpsllq $0x2d,%ymm4,%ymm1
   0.18%    ││ │    0x00007f07500ef610:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f07500ef614:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f07500ef618:   vpsrlq $0x3d,%ymm4,%ymm3
   0.23%    ││ │    0x00007f07500ef61d:   vpsllq $0x3,%ymm4,%ymm1
   0.19%    ││ │    0x00007f07500ef622:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f07500ef626:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f07500ef62a:   vpaddq %ymm8,%ymm0,%ymm2
   0.20%    ││ │    0x00007f07500ef62f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.24%    ││ │    0x00007f07500ef635:   mov    %r9,%rdi
   0.07%    ││ │    0x00007f07500ef638:   rorx   $0x29,%rbx,%r13
   0.05%    ││ │    0x00007f07500ef63e:   rorx   $0x12,%rbx,%r14
   0.20%    ││ │    0x00007f07500ef644:   add    0x18(%rsp),%rdx
   0.21%    ││ │    0x00007f07500ef649:   or     %r11,%rdi
   0.09%    ││ │    0x00007f07500ef64c:   mov    %rcx,%r15
   0.05%    ││ │    0x00007f07500ef64f:   xor    %r8,%r15
   0.17%    ││ │    0x00007f07500ef652:   rorx   $0x22,%r9,%r12
   0.22%    ││ │    0x00007f07500ef658:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500ef65b:   rorx   $0xe,%rbx,%r14
   0.04%    ││ │    0x00007f07500ef661:   and    %rbx,%r15
   0.19%    ││ │    0x00007f07500ef664:   add    %rdx,%rax
   0.25%    ││ │    0x00007f07500ef667:   and    %r10,%rdi
   0.07%    ││ │    0x00007f07500ef66a:   xor    %r14,%r13
   0.05%    ││ │    0x00007f07500ef66d:   rorx   $0x27,%r9,%r14
   0.19%    ││ │    0x00007f07500ef673:   xor    %r12,%r14
   0.21%    ││ │    0x00007f07500ef676:   rorx   $0x1c,%r9,%r12
   0.06%    ││ │    0x00007f07500ef67c:   xor    %r8,%r15
   0.04%    ││ │    0x00007f07500ef67f:   xor    %r12,%r14
   0.19%    ││ │    0x00007f07500ef682:   mov    %r9,%r12
   0.19%    ││ │    0x00007f07500ef685:   and    %r11,%r12
   0.08%    ││ │    0x00007f07500ef688:   add    %r13,%r15
   0.05%    ││ │    0x00007f07500ef68b:   or     %r12,%rdi
   0.19%    ││ │    0x00007f07500ef68e:   add    %r14,%rdx
   0.17%    ││ │    0x00007f07500ef691:   add    %r15,%rax
   0.05%    ││ │    0x00007f07500ef694:   add    %r15,%rdx
   0.04%    ││ │    0x00007f07500ef697:   add    %rdi,%rdx
   0.18%    ││ │    0x00007f07500ef69a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.21%    ││ │    0x00007f07500ef69f:   vmovdqu %ymm0,(%rsp)
   0.07%    ││ │    0x00007f07500ef6a4:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%    ││ │    0x00007f07500ef6aa:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.20%    ││ │    0x00007f07500ef6b0:   vpaddq %ymm5,%ymm0,%ymm0
   0.27%    ││ │    0x00007f07500ef6b4:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%    ││ │    0x00007f07500ef6ba:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.05%    ││ │    0x00007f07500ef6c0:   vpsrlq $0x1,%ymm1,%ymm2
   0.23%    ││ │    0x00007f07500ef6c5:   vpsllq $0x3f,%ymm1,%ymm3
   0.22%    ││ │    0x00007f07500ef6ca:   vpor   %ymm2,%ymm3,%ymm3
   0.09%    ││ │    0x00007f07500ef6ce:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%    ││ │    0x00007f07500ef6d3:   mov    %rdx,%rdi
   0.16%    ││ │    0x00007f07500ef6d6:   rorx   $0x29,%rax,%r13
   0.23%    ││ │    0x00007f07500ef6dc:   rorx   $0x12,%rax,%r14
   0.07%    ││ │    0x00007f07500ef6e2:   add    (%rsp),%r8
   0.04%    ││ │    0x00007f07500ef6e6:   or     %r10,%rdi
   0.19%    ││ │    0x00007f07500ef6e9:   mov    %rbx,%r15
   0.25%    ││ │    0x00007f07500ef6ec:   xor    %rcx,%r15
   0.08%    ││ │    0x00007f07500ef6ef:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007f07500ef6f5:   xor    %r14,%r13
   0.18%    ││ │    0x00007f07500ef6f8:   rorx   $0xe,%rax,%r14
   0.19%    ││ │    0x00007f07500ef6fe:   and    %rax,%r15
   0.07%    ││ │    0x00007f07500ef701:   add    %r8,%r11
   0.03%    ││ │    0x00007f07500ef704:   and    %r9,%rdi
   0.15%    ││ │    0x00007f07500ef707:   xor    %r14,%r13
   0.20%    ││ │    0x00007f07500ef70a:   rorx   $0x27,%rdx,%r14
   0.07%    ││ │    0x00007f07500ef710:   xor    %r12,%r14
   0.03%    ││ │    0x00007f07500ef713:   rorx   $0x1c,%rdx,%r12
   0.14%    ││ │    0x00007f07500ef719:   xor    %rcx,%r15
   0.24%    ││ │    0x00007f07500ef71c:   xor    %r12,%r14
   0.10%    ││ │    0x00007f07500ef71f:   mov    %rdx,%r12
   0.04%    ││ │    0x00007f07500ef722:   and    %r10,%r12
   0.17%    ││ │    0x00007f07500ef725:   add    %r13,%r15
   0.25%    ││ │    0x00007f07500ef728:   or     %r12,%rdi
   0.09%    ││ │    0x00007f07500ef72b:   add    %r14,%r8
   0.04%    ││ │    0x00007f07500ef72e:   add    %r15,%r11
   0.17%    ││ │    0x00007f07500ef731:   add    %r15,%r8
   0.22%    ││ │    0x00007f07500ef734:   add    %rdi,%r8
   0.07%    ││ │    0x00007f07500ef737:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f07500ef73c:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007f07500ef741:   vpor   %ymm2,%ymm1,%ymm1
   0.24%    ││ │    0x00007f07500ef745:   vpxor  %ymm8,%ymm3,%ymm3
   0.06%    ││ │    0x00007f07500ef74a:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%    ││ │    0x00007f07500ef74e:   vpaddq %ymm1,%ymm0,%ymm0
   0.15%    ││ │    0x00007f07500ef752:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.24%    ││ │    0x00007f07500ef758:   vpand  %ymm10,%ymm0,%ymm0
   0.08%    ││ │    0x00007f07500ef75d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%    ││ │    0x00007f07500ef763:   vpsrlq $0x6,%ymm2,%ymm8
   0.18%    ││ │    0x00007f07500ef768:   mov    %r8,%rdi
   0.21%    ││ │    0x00007f07500ef76b:   rorx   $0x29,%r11,%r13
   0.07%    ││ │    0x00007f07500ef771:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007f07500ef777:   add    0x8(%rsp),%rcx
   0.17%    ││ │    0x00007f07500ef77c:   or     %r9,%rdi
   0.23%    ││ │    0x00007f07500ef77f:   mov    %rax,%r15
   0.10%    ││ │    0x00007f07500ef782:   xor    %rbx,%r15
   0.05%    ││ │    0x00007f07500ef785:   rorx   $0x22,%r8,%r12
   0.17%    ││ │    0x00007f07500ef78b:   xor    %r14,%r13
   0.22%    ││ │    0x00007f07500ef78e:   rorx   $0xe,%r11,%r14
   0.09%    ││ │    0x00007f07500ef794:   and    %r11,%r15
   0.05%    ││ │    0x00007f07500ef797:   add    %rcx,%r10
   0.17%    ││ │    0x00007f07500ef79a:   and    %rdx,%rdi
   0.23%    ││ │    0x00007f07500ef79d:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500ef7a0:   rorx   $0x27,%r8,%r14
   0.05%    ││ │    0x00007f07500ef7a6:   xor    %r12,%r14
   0.18%    ││ │    0x00007f07500ef7a9:   rorx   $0x1c,%r8,%r12
   0.20%    ││ │    0x00007f07500ef7af:   xor    %rbx,%r15
   0.10%    ││ │    0x00007f07500ef7b2:   xor    %r12,%r14
   0.03%    ││ │    0x00007f07500ef7b5:   mov    %r8,%r12
   0.15%    ││ │    0x00007f07500ef7b8:   and    %r9,%r12
   0.20%    ││ │    0x00007f07500ef7bb:   add    %r13,%r15
   0.10%    ││ │    0x00007f07500ef7be:   or     %r12,%rdi
   0.03%    ││ │    0x00007f07500ef7c1:   add    %r14,%rcx
   0.21%    ││ │    0x00007f07500ef7c4:   add    %r15,%r10
   0.20%    ││ │    0x00007f07500ef7c7:   add    %r15,%rcx
   0.08%    ││ │    0x00007f07500ef7ca:   add    %rdi,%rcx
   0.03%    ││ │    0x00007f07500ef7cd:   vpsrlq $0x13,%ymm2,%ymm3
   0.20%    ││ │    0x00007f07500ef7d2:   vpsllq $0x2d,%ymm2,%ymm1
   0.21%    ││ │    0x00007f07500ef7d7:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f07500ef7db:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f07500ef7df:   vpsrlq $0x3d,%ymm2,%ymm3
   0.17%    ││ │    0x00007f07500ef7e4:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f07500ef7e9:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f07500ef7ed:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f07500ef7f1:   vpaddq %ymm8,%ymm5,%ymm5
   0.17%    ││ │    0x00007f07500ef7f6:   vpsrlq $0x6,%ymm5,%ymm8
   0.27%    ││ │    0x00007f07500ef7fb:   mov    %rcx,%rdi
   0.08%    ││ │    0x00007f07500ef7fe:   rorx   $0x29,%r10,%r13
   0.04%    ││ │    0x00007f07500ef804:   rorx   $0x12,%r10,%r14
   0.12%    ││ │    0x00007f07500ef80a:   add    0x10(%rsp),%rbx
   0.23%    ││ │    0x00007f07500ef80f:   or     %rdx,%rdi
   0.09%    ││ │    0x00007f07500ef812:   mov    %r11,%r15
   0.04%    ││ │    0x00007f07500ef815:   xor    %rax,%r15
   0.16%    ││ │    0x00007f07500ef818:   rorx   $0x22,%rcx,%r12
   0.21%    ││ │    0x00007f07500ef81e:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500ef821:   rorx   $0xe,%r10,%r14
   0.04%    ││ │    0x00007f07500ef827:   and    %r10,%r15
   0.15%    ││ │    0x00007f07500ef82a:   add    %rbx,%r9
   0.20%    ││ │    0x00007f07500ef82d:   and    %r8,%rdi
   0.08%    ││ │    0x00007f07500ef830:   xor    %r14,%r13
   0.03%    ││ │    0x00007f07500ef833:   rorx   $0x27,%rcx,%r14
   0.16%    ││ │    0x00007f07500ef839:   xor    %r12,%r14
   0.22%    ││ │    0x00007f07500ef83c:   rorx   $0x1c,%rcx,%r12
   0.10%    ││ │    0x00007f07500ef842:   xor    %rax,%r15
   0.04%    ││ │    0x00007f07500ef845:   xor    %r12,%r14
   0.17%    ││ │    0x00007f07500ef848:   mov    %rcx,%r12
   0.25%    ││ │    0x00007f07500ef84b:   and    %rdx,%r12
   0.07%    ││ │    0x00007f07500ef84e:   add    %r13,%r15
   0.04%    ││ │    0x00007f07500ef851:   or     %r12,%rdi
   0.17%    ││ │    0x00007f07500ef854:   add    %r14,%rbx
   0.21%    ││ │    0x00007f07500ef857:   add    %r15,%r9
   0.08%    ││ │    0x00007f07500ef85a:   add    %r15,%rbx
   0.03%    ││ │    0x00007f07500ef85d:   add    %rdi,%rbx
   0.17%    ││ │    0x00007f07500ef860:   vpsrlq $0x13,%ymm5,%ymm3
   0.26%    ││ │    0x00007f07500ef865:   vpsllq $0x2d,%ymm5,%ymm1
   0.08%    ││ │    0x00007f07500ef86a:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f07500ef86e:   vpxor  %ymm3,%ymm8,%ymm8
   0.20%    ││ │    0x00007f07500ef872:   vpsrlq $0x3d,%ymm5,%ymm3
   0.21%    ││ │    0x00007f07500ef877:   vpsllq $0x3,%ymm5,%ymm1
   0.11%    ││ │    0x00007f07500ef87c:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f07500ef880:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f07500ef884:   vpaddq %ymm8,%ymm0,%ymm2
   0.26%    ││ │    0x00007f07500ef889:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.13%    ││ │    0x00007f07500ef88f:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007f07500ef892:   rorx   $0x29,%r9,%r13
   0.13%    ││ │    0x00007f07500ef898:   rorx   $0x12,%r9,%r14
   0.19%    ││ │    0x00007f07500ef89e:   add    0x18(%rsp),%rax
   0.12%    ││ │    0x00007f07500ef8a3:   or     %r8,%rdi
   0.05%    ││ │    0x00007f07500ef8a6:   mov    %r10,%r15
   0.11%    ││ │    0x00007f07500ef8a9:   xor    %r11,%r15
   0.23%    ││ │    0x00007f07500ef8ac:   rorx   $0x22,%rbx,%r12
   0.12%    ││ │    0x00007f07500ef8b2:   xor    %r14,%r13
   0.04%    ││ │    0x00007f07500ef8b5:   rorx   $0xe,%r9,%r14
   0.17%    ││ │    0x00007f07500ef8bb:   and    %r9,%r15
   0.18%    ││ │    0x00007f07500ef8be:   add    %rax,%rdx
   0.12%    ││ │    0x00007f07500ef8c1:   and    %rcx,%rdi
   0.04%    ││ │    0x00007f07500ef8c4:   xor    %r14,%r13
   0.12%    ││ │    0x00007f07500ef8c7:   rorx   $0x27,%rbx,%r14
   0.22%    ││ │    0x00007f07500ef8cd:   xor    %r12,%r14
   0.11%    ││ │    0x00007f07500ef8d0:   rorx   $0x1c,%rbx,%r12
   0.04%    ││ │    0x00007f07500ef8d6:   xor    %r11,%r15
   0.14%    ││ │    0x00007f07500ef8d9:   xor    %r12,%r14
   0.19%    ││ │    0x00007f07500ef8dc:   mov    %rbx,%r12
   0.13%    ││ │    0x00007f07500ef8df:   and    %r8,%r12
   0.03%    ││ │    0x00007f07500ef8e2:   add    %r13,%r15
   0.14%    ││ │    0x00007f07500ef8e5:   or     %r12,%rdi
   0.18%    ││ │    0x00007f07500ef8e8:   add    %r14,%rax
   0.13%    ││ │    0x00007f07500ef8eb:   add    %r15,%rdx
   0.03%    ││ │    0x00007f07500ef8ee:   add    %r15,%rax
   0.14%    ││ │    0x00007f07500ef8f1:   add    %rdi,%rax
   0.20%    ││ │    0x00007f07500ef8f4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.10%    ││ │    0x00007f07500ef8f9:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f07500ef8fe:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.11%    ││ │    0x00007f07500ef904:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.19%    ││ │    0x00007f07500ef90a:   vpaddq %ymm6,%ymm0,%ymm0
   0.22%    ││ │    0x00007f07500ef90e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%    ││ │    0x00007f07500ef914:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.16%    ││ │    0x00007f07500ef91a:   vpsrlq $0x1,%ymm1,%ymm2
   0.19%    ││ │    0x00007f07500ef91f:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f07500ef924:   vpor   %ymm2,%ymm3,%ymm3
   0.05%    ││ │    0x00007f07500ef928:   vpsrlq $0x7,%ymm1,%ymm8
   0.12%    ││ │    0x00007f07500ef92d:   mov    %rax,%rdi
   0.17%    ││ │    0x00007f07500ef930:   rorx   $0x29,%rdx,%r13
   0.15%    ││ │    0x00007f07500ef936:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f07500ef93c:   add    (%rsp),%r11
   0.13%    ││ │    0x00007f07500ef940:   or     %rcx,%rdi
   0.17%    ││ │    0x00007f07500ef943:   mov    %r9,%r15
   0.12%    ││ │    0x00007f07500ef946:   xor    %r10,%r15
   0.04%    ││ │    0x00007f07500ef949:   rorx   $0x22,%rax,%r12
   0.13%    ││ │    0x00007f07500ef94f:   xor    %r14,%r13
   0.21%    ││ │    0x00007f07500ef952:   rorx   $0xe,%rdx,%r14
   0.12%    ││ │    0x00007f07500ef958:   and    %rdx,%r15
   0.04%    ││ │    0x00007f07500ef95b:   add    %r11,%r8
   0.12%    ││ │    0x00007f07500ef95e:   and    %rbx,%rdi
   0.22%    ││ │    0x00007f07500ef961:   xor    %r14,%r13
   0.15%    ││ │    0x00007f07500ef964:   rorx   $0x27,%rax,%r14
   0.05%    ││ │    0x00007f07500ef96a:   xor    %r12,%r14
   0.13%    ││ │    0x00007f07500ef96d:   rorx   $0x1c,%rax,%r12
   0.18%    ││ │    0x00007f07500ef973:   xor    %r10,%r15
   0.15%    ││ │    0x00007f07500ef976:   xor    %r12,%r14
   0.04%    ││ │    0x00007f07500ef979:   mov    %rax,%r12
   0.15%    ││ │    0x00007f07500ef97c:   and    %rcx,%r12
   0.20%    ││ │    0x00007f07500ef97f:   add    %r13,%r15
   0.18%    ││ │    0x00007f07500ef982:   or     %r12,%rdi
   0.04%    ││ │    0x00007f07500ef985:   add    %r14,%r11
   0.10%    ││ │    0x00007f07500ef988:   add    %r15,%r8
   0.21%    ││ │    0x00007f07500ef98b:   add    %r15,%r11
   0.15%    ││ │    0x00007f07500ef98e:   add    %rdi,%r11
   0.04%    ││ │    0x00007f07500ef991:   vpsrlq $0x8,%ymm1,%ymm2
   0.12%    ││ │    0x00007f07500ef996:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007f07500ef99b:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007f07500ef99f:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%    ││ │    0x00007f07500ef9a4:   vpxor  %ymm1,%ymm3,%ymm1
   0.17%    ││ │    0x00007f07500ef9a8:   vpaddq %ymm1,%ymm0,%ymm0
   0.16%    ││ │    0x00007f07500ef9ac:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.17%    ││ │    0x00007f07500ef9b2:   vpand  %ymm10,%ymm0,%ymm0
   0.05%    ││ │    0x00007f07500ef9b7:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.13%    ││ │    0x00007f07500ef9bd:   vpsrlq $0x6,%ymm2,%ymm8
   0.19%    ││ │    0x00007f07500ef9c2:   mov    %r11,%rdi
   0.12%    ││ │    0x00007f07500ef9c5:   rorx   $0x29,%r8,%r13
   0.05%    ││ │    0x00007f07500ef9cb:   rorx   $0x12,%r8,%r14
   0.16%    ││ │    0x00007f07500ef9d1:   add    0x8(%rsp),%r10
   0.17%    ││ │    0x00007f07500ef9d6:   or     %rbx,%rdi
   0.16%    ││ │    0x00007f07500ef9d9:   mov    %rdx,%r15
   0.05%    ││ │    0x00007f07500ef9dc:   xor    %r9,%r15
   0.13%    ││ │    0x00007f07500ef9df:   rorx   $0x22,%r11,%r12
   0.18%    ││ │    0x00007f07500ef9e5:   xor    %r14,%r13
   0.13%    ││ │    0x00007f07500ef9e8:   rorx   $0xe,%r8,%r14
   0.06%    ││ │    0x00007f07500ef9ee:   and    %r8,%r15
   0.15%    ││ │    0x00007f07500ef9f1:   add    %r10,%rcx
   0.19%    ││ │    0x00007f07500ef9f4:   and    %rax,%rdi
   0.13%    ││ │    0x00007f07500ef9f7:   xor    %r14,%r13
   0.04%    ││ │    0x00007f07500ef9fa:   rorx   $0x27,%r11,%r14
   0.13%    ││ │    0x00007f07500efa00:   xor    %r12,%r14
   0.20%    ││ │    0x00007f07500efa03:   rorx   $0x1c,%r11,%r12
   0.16%    ││ │    0x00007f07500efa09:   xor    %r9,%r15
   0.04%    ││ │    0x00007f07500efa0c:   xor    %r12,%r14
   0.12%    ││ │    0x00007f07500efa0f:   mov    %r11,%r12
   0.17%    ││ │    0x00007f07500efa12:   and    %rbx,%r12
   0.17%    ││ │    0x00007f07500efa15:   add    %r13,%r15
   0.05%    ││ │    0x00007f07500efa18:   or     %r12,%rdi
   0.10%    ││ │    0x00007f07500efa1b:   add    %r14,%r10
   0.17%    ││ │    0x00007f07500efa1e:   add    %r15,%rcx
   0.17%    ││ │    0x00007f07500efa21:   add    %r15,%r10
   0.05%    ││ │    0x00007f07500efa24:   add    %rdi,%r10
   0.12%    ││ │    0x00007f07500efa27:   vpsrlq $0x13,%ymm2,%ymm3
   0.19%    ││ │    0x00007f07500efa2c:   vpsllq $0x2d,%ymm2,%ymm1
   0.16%    ││ │    0x00007f07500efa31:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f07500efa35:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007f07500efa39:   vpsrlq $0x3d,%ymm2,%ymm3
   0.15%    ││ │    0x00007f07500efa3e:   vpsllq $0x3,%ymm2,%ymm1
   0.16%    ││ │    0x00007f07500efa43:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f07500efa47:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f07500efa4b:   vpaddq %ymm8,%ymm6,%ymm6
   0.16%    ││ │    0x00007f07500efa50:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%    ││ │    0x00007f07500efa55:   mov    %r10,%rdi
   0.05%    ││ │    0x00007f07500efa58:   rorx   $0x29,%rcx,%r13
   0.15%    ││ │    0x00007f07500efa5e:   rorx   $0x12,%rcx,%r14
   0.17%    ││ │    0x00007f07500efa64:   add    0x10(%rsp),%r9
   0.15%    ││ │    0x00007f07500efa69:   or     %rax,%rdi
   0.04%    ││ │    0x00007f07500efa6c:   mov    %r8,%r15
   0.11%    ││ │    0x00007f07500efa6f:   xor    %rdx,%r15
   0.14%    ││ │    0x00007f07500efa72:   rorx   $0x22,%r10,%r12
   0.15%    ││ │    0x00007f07500efa78:   xor    %r14,%r13
   0.06%    ││ │    0x00007f07500efa7b:   rorx   $0xe,%rcx,%r14
   0.14%    ││ │    0x00007f07500efa81:   and    %rcx,%r15
   0.17%    ││ │    0x00007f07500efa84:   add    %r9,%rbx
   0.18%    ││ │    0x00007f07500efa87:   and    %r11,%rdi
   0.04%    ││ │    0x00007f07500efa8a:   xor    %r14,%r13
   0.14%    ││ │    0x00007f07500efa8d:   rorx   $0x27,%r10,%r14
   0.16%    ││ │    0x00007f07500efa93:   xor    %r12,%r14
   0.18%    ││ │    0x00007f07500efa96:   rorx   $0x1c,%r10,%r12
   0.06%    ││ │    0x00007f07500efa9c:   xor    %rdx,%r15
   0.13%    ││ │    0x00007f07500efa9f:   xor    %r12,%r14
   0.20%    ││ │    0x00007f07500efaa2:   mov    %r10,%r12
   0.14%    ││ │    0x00007f07500efaa5:   and    %rax,%r12
   0.04%    ││ │    0x00007f07500efaa8:   add    %r13,%r15
   0.14%    ││ │    0x00007f07500efaab:   or     %r12,%rdi
   0.20%    ││ │    0x00007f07500efaae:   add    %r14,%r9
   0.14%    ││ │    0x00007f07500efab1:   add    %r15,%rbx
   0.05%    ││ │    0x00007f07500efab4:   add    %r15,%r9
   0.12%    ││ │    0x00007f07500efab7:   add    %rdi,%r9
   0.16%    ││ │    0x00007f07500efaba:   vpsrlq $0x13,%ymm6,%ymm3
   0.18%    ││ │    0x00007f07500efabf:   vpsllq $0x2d,%ymm6,%ymm1
   0.06%    ││ │    0x00007f07500efac4:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007f07500efac8:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%    ││ │    0x00007f07500efacc:   vpsrlq $0x3d,%ymm6,%ymm3
   0.20%    ││ │    0x00007f07500efad1:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007f07500efad6:   vpor   %ymm1,%ymm3,%ymm3
   0.16%    ││ │    0x00007f07500efada:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%    ││ │    0x00007f07500efade:   vpaddq %ymm8,%ymm0,%ymm2
   0.16%    ││ │    0x00007f07500efae3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.12%    ││ │    0x00007f07500efae9:   mov    %r9,%rdi
   0.10%    ││ │    0x00007f07500efaec:   rorx   $0x29,%rbx,%r13
   0.14%    ││ │    0x00007f07500efaf2:   rorx   $0x12,%rbx,%r14
   0.13%    ││ │    0x00007f07500efaf8:   add    0x18(%rsp),%rdx
   0.10%    ││ │    0x00007f07500efafd:   or     %r11,%rdi
   0.11%    ││ │    0x00007f07500efb00:   mov    %rcx,%r15
   0.13%    ││ │    0x00007f07500efb03:   xor    %r8,%r15
   0.14%    ││ │    0x00007f07500efb06:   rorx   $0x22,%r9,%r12
   0.14%    ││ │    0x00007f07500efb0c:   xor    %r14,%r13
   0.13%    ││ │    0x00007f07500efb0f:   rorx   $0xe,%rbx,%r14
   0.15%    ││ │    0x00007f07500efb15:   and    %rbx,%r15
   0.13%    ││ │    0x00007f07500efb18:   add    %rdx,%rax
   0.13%    ││ │    0x00007f07500efb1b:   and    %r10,%rdi
   0.13%    ││ │    0x00007f07500efb1e:   xor    %r14,%r13
   0.11%    ││ │    0x00007f07500efb21:   rorx   $0x27,%r9,%r14
   0.12%    ││ │    0x00007f07500efb27:   xor    %r12,%r14
   0.14%    ││ │    0x00007f07500efb2a:   rorx   $0x1c,%r9,%r12
   0.11%    ││ │    0x00007f07500efb30:   xor    %r8,%r15
   0.13%    ││ │    0x00007f07500efb33:   xor    %r12,%r14
   0.16%    ││ │    0x00007f07500efb36:   mov    %r9,%r12
   0.12%    ││ │    0x00007f07500efb39:   and    %r11,%r12
   0.12%    ││ │    0x00007f07500efb3c:   add    %r13,%r15
   0.15%    ││ │    0x00007f07500efb3f:   or     %r12,%rdi
   0.13%    ││ │    0x00007f07500efb42:   add    %r14,%rdx
   0.10%    ││ │    0x00007f07500efb45:   add    %r15,%rax
   0.13%    ││ │    0x00007f07500efb48:   add    %r15,%rdx
   0.12%    ││ │    0x00007f07500efb4b:   add    %rdi,%rdx
   0.13%    ││ │    0x00007f07500efb4e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.12%    ││ │    0x00007f07500efb53:   vmovdqu %ymm0,(%rsp)
   0.12%    ││ │    0x00007f07500efb58:   add    $0x80,%rbp
   0.15%    ││ │    0x00007f07500efb5f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.12%    ││ │    0x00007f07500efb65:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.12%    ││ │    0x00007f07500efb6b:   vpaddq %ymm7,%ymm0,%ymm0
   0.23%    ││ │    0x00007f07500efb6f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.12%    ││ │    0x00007f07500efb75:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.17%    ││ │    0x00007f07500efb7b:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%    ││ │    0x00007f07500efb80:   vpsllq $0x3f,%ymm1,%ymm3
   0.19%    ││ │    0x00007f07500efb85:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007f07500efb89:   vpsrlq $0x7,%ymm1,%ymm8
   0.14%    ││ │    0x00007f07500efb8e:   mov    %rdx,%rdi
   0.12%    ││ │    0x00007f07500efb91:   rorx   $0x29,%rax,%r13
   0.16%    ││ │    0x00007f07500efb97:   rorx   $0x12,%rax,%r14
   0.12%    ││ │    0x00007f07500efb9d:   add    (%rsp),%r8
   0.11%    ││ │    0x00007f07500efba1:   or     %r10,%rdi
   0.09%    ││ │    0x00007f07500efba4:   mov    %rbx,%r15
   0.14%    ││ │    0x00007f07500efba7:   xor    %rcx,%r15
   0.15%    ││ │    0x00007f07500efbaa:   rorx   $0x22,%rdx,%r12
   0.12%    ││ │    0x00007f07500efbb0:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500efbb3:   rorx   $0xe,%rax,%r14
   0.14%    ││ │    0x00007f07500efbb9:   and    %rax,%r15
   0.13%    ││ │    0x00007f07500efbbc:   add    %r8,%r11
   0.11%    ││ │    0x00007f07500efbbf:   and    %r9,%rdi
   0.10%    ││ │    0x00007f07500efbc2:   xor    %r14,%r13
   0.18%    ││ │    0x00007f07500efbc5:   rorx   $0x27,%rdx,%r14
   0.15%    ││ │    0x00007f07500efbcb:   xor    %r12,%r14
   0.13%    ││ │    0x00007f07500efbce:   rorx   $0x1c,%rdx,%r12
   0.10%    ││ │    0x00007f07500efbd4:   xor    %rcx,%r15
   0.18%    ││ │    0x00007f07500efbd7:   xor    %r12,%r14
   0.15%    ││ │    0x00007f07500efbda:   mov    %rdx,%r12
   0.08%    ││ │    0x00007f07500efbdd:   and    %r10,%r12
   0.11%    ││ │    0x00007f07500efbe0:   add    %r13,%r15
   0.16%    ││ │    0x00007f07500efbe3:   or     %r12,%rdi
   0.12%    ││ │    0x00007f07500efbe6:   add    %r14,%r8
   0.14%    ││ │    0x00007f07500efbe9:   add    %r15,%r11
   0.08%    ││ │    0x00007f07500efbec:   add    %r15,%r8
   0.14%    ││ │    0x00007f07500efbef:   add    %rdi,%r8
   0.11%    ││ │    0x00007f07500efbf2:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%    ││ │    0x00007f07500efbf7:   vpsllq $0x38,%ymm1,%ymm1
   0.10%    ││ │    0x00007f07500efbfc:   vpor   %ymm2,%ymm1,%ymm1
   0.15%    ││ │    0x00007f07500efc00:   vpxor  %ymm8,%ymm3,%ymm3
   0.15%    ││ │    0x00007f07500efc05:   vpxor  %ymm1,%ymm3,%ymm1
   0.11%    ││ │    0x00007f07500efc09:   vpaddq %ymm1,%ymm0,%ymm0
   0.10%    ││ │    0x00007f07500efc0d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.15%    ││ │    0x00007f07500efc13:   vpand  %ymm10,%ymm0,%ymm0
   0.13%    ││ │    0x00007f07500efc18:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.10%    ││ │    0x00007f07500efc1e:   vpsrlq $0x6,%ymm2,%ymm8
   0.08%    ││ │    0x00007f07500efc23:   mov    %r8,%rdi
   0.14%    ││ │    0x00007f07500efc26:   rorx   $0x29,%r11,%r13
   0.12%    ││ │    0x00007f07500efc2c:   rorx   $0x12,%r11,%r14
   0.12%    ││ │    0x00007f07500efc32:   add    0x8(%rsp),%rcx
   0.08%    ││ │    0x00007f07500efc37:   or     %r9,%rdi
   0.14%    ││ │    0x00007f07500efc3a:   mov    %rax,%r15
   0.12%    ││ │    0x00007f07500efc3d:   xor    %rbx,%r15
   0.14%    ││ │    0x00007f07500efc40:   rorx   $0x22,%r8,%r12
   0.10%    ││ │    0x00007f07500efc46:   xor    %r14,%r13
   0.18%    ││ │    0x00007f07500efc49:   rorx   $0xe,%r11,%r14
   0.15%    ││ │    0x00007f07500efc4f:   and    %r11,%r15
   0.08%    ││ │    0x00007f07500efc52:   add    %rcx,%r10
   0.10%    ││ │    0x00007f07500efc55:   and    %rdx,%rdi
   0.14%    ││ │    0x00007f07500efc58:   xor    %r14,%r13
   0.15%    ││ │    0x00007f07500efc5b:   rorx   $0x27,%r8,%r14
   0.11%    ││ │    0x00007f07500efc61:   xor    %r12,%r14
   0.12%    ││ │    0x00007f07500efc64:   rorx   $0x1c,%r8,%r12
   0.14%    ││ │    0x00007f07500efc6a:   xor    %rbx,%r15
   0.13%    ││ │    0x00007f07500efc6d:   xor    %r12,%r14
   0.11%    ││ │    0x00007f07500efc70:   mov    %r8,%r12
   0.09%    ││ │    0x00007f07500efc73:   and    %r9,%r12
   0.18%    ││ │    0x00007f07500efc76:   add    %r13,%r15
   0.15%    ││ │    0x00007f07500efc79:   or     %r12,%rdi
   0.11%    ││ │    0x00007f07500efc7c:   add    %r14,%rcx
   0.09%    ││ │    0x00007f07500efc7f:   add    %r15,%r10
   0.17%    ││ │    0x00007f07500efc82:   add    %r15,%rcx
   0.13%    ││ │    0x00007f07500efc85:   add    %rdi,%rcx
   0.11%    ││ │    0x00007f07500efc88:   vpsrlq $0x13,%ymm2,%ymm3
   0.10%    ││ │    0x00007f07500efc8d:   vpsllq $0x2d,%ymm2,%ymm1
   0.17%    ││ │    0x00007f07500efc92:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f07500efc96:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f07500efc9a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.09%    ││ │    0x00007f07500efc9f:   vpsllq $0x3,%ymm2,%ymm1
   0.16%    ││ │    0x00007f07500efca4:   vpor   %ymm1,%ymm3,%ymm3
   0.16%    ││ │    0x00007f07500efca8:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f07500efcac:   vpaddq %ymm8,%ymm7,%ymm7
   0.08%    ││ │    0x00007f07500efcb1:   vpsrlq $0x6,%ymm7,%ymm8
   0.15%    ││ │    0x00007f07500efcb6:   mov    %rcx,%rdi
   0.16%    ││ │    0x00007f07500efcb9:   rorx   $0x29,%r10,%r13
   0.11%    ││ │    0x00007f07500efcbf:   rorx   $0x12,%r10,%r14
   0.09%    ││ │    0x00007f07500efcc5:   add    0x10(%rsp),%rbx
   0.17%    ││ │    0x00007f07500efcca:   or     %rdx,%rdi
   0.15%    ││ │    0x00007f07500efccd:   mov    %r11,%r15
   0.15%    ││ │    0x00007f07500efcd0:   xor    %rax,%r15
   0.10%    ││ │    0x00007f07500efcd3:   rorx   $0x22,%rcx,%r12
   0.15%    ││ │    0x00007f07500efcd9:   xor    %r14,%r13
   0.15%    ││ │    0x00007f07500efcdc:   rorx   $0xe,%r10,%r14
   0.11%    ││ │    0x00007f07500efce2:   and    %r10,%r15
   0.06%    ││ │    0x00007f07500efce5:   add    %rbx,%r9
   0.14%    ││ │    0x00007f07500efce8:   and    %r8,%rdi
   0.16%    ││ │    0x00007f07500efceb:   xor    %r14,%r13
   0.09%    ││ │    0x00007f07500efcee:   rorx   $0x27,%rcx,%r14
   0.07%    ││ │    0x00007f07500efcf4:   xor    %r12,%r14
   0.18%    ││ │    0x00007f07500efcf7:   rorx   $0x1c,%rcx,%r12
   0.16%    ││ │    0x00007f07500efcfd:   xor    %rax,%r15
   0.10%    ││ │    0x00007f07500efd00:   xor    %r12,%r14
   0.10%    ││ │    0x00007f07500efd03:   mov    %rcx,%r12
   0.20%    ││ │    0x00007f07500efd06:   and    %rdx,%r12
   0.16%    ││ │    0x00007f07500efd09:   add    %r13,%r15
   0.09%    ││ │    0x00007f07500efd0c:   or     %r12,%rdi
   0.08%    ││ │    0x00007f07500efd0f:   add    %r14,%rbx
   0.17%    ││ │    0x00007f07500efd12:   add    %r15,%r9
   0.16%    ││ │    0x00007f07500efd15:   add    %r15,%rbx
   0.09%    ││ │    0x00007f07500efd18:   add    %rdi,%rbx
   0.09%    ││ │    0x00007f07500efd1b:   vpsrlq $0x13,%ymm7,%ymm3
   0.18%    ││ │    0x00007f07500efd20:   vpsllq $0x2d,%ymm7,%ymm1
   0.11%    ││ │    0x00007f07500efd25:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f07500efd29:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f07500efd2d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.17%    ││ │    0x00007f07500efd32:   vpsllq $0x3,%ymm7,%ymm1
   0.14%    ││ │    0x00007f07500efd37:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f07500efd3b:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%    ││ │    0x00007f07500efd3f:   vpaddq %ymm8,%ymm0,%ymm2
   0.15%    ││ │    0x00007f07500efd44:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.22%    ││ │    0x00007f07500efd4a:   mov    %rbx,%rdi
   0.09%    ││ │    0x00007f07500efd4d:   rorx   $0x29,%r9,%r13
   0.05%    ││ │    0x00007f07500efd53:   rorx   $0x12,%r9,%r14
   0.15%    ││ │    0x00007f07500efd59:   add    0x18(%rsp),%rax
   0.18%    ││ │    0x00007f07500efd5e:   or     %r8,%rdi
   0.11%    ││ │    0x00007f07500efd61:   mov    %r10,%r15
   0.08%    ││ │    0x00007f07500efd64:   xor    %r11,%r15
   0.14%    ││ │    0x00007f07500efd67:   rorx   $0x22,%rbx,%r12
   0.20%    ││ │    0x00007f07500efd6d:   xor    %r14,%r13
   0.11%    ││ │    0x00007f07500efd70:   rorx   $0xe,%r9,%r14
   0.06%    ││ │    0x00007f07500efd76:   and    %r9,%r15
   0.14%    ││ │    0x00007f07500efd79:   add    %rax,%rdx
   0.20%    ││ │    0x00007f07500efd7c:   and    %rcx,%rdi
   0.11%    ││ │    0x00007f07500efd7f:   xor    %r14,%r13
   0.07%    ││ │    0x00007f07500efd82:   rorx   $0x27,%rbx,%r14
   0.15%    ││ │    0x00007f07500efd88:   xor    %r12,%r14
   0.17%    ││ │    0x00007f07500efd8b:   rorx   $0x1c,%rbx,%r12
   0.09%    ││ │    0x00007f07500efd91:   xor    %r11,%r15
   0.09%    ││ │    0x00007f07500efd94:   xor    %r12,%r14
   0.15%    ││ │    0x00007f07500efd97:   mov    %rbx,%r12
   0.21%    ││ │    0x00007f07500efd9a:   and    %r8,%r12
   0.09%    ││ │    0x00007f07500efd9d:   add    %r13,%r15
   0.05%    ││ │    0x00007f07500efda0:   or     %r12,%rdi
   0.13%    ││ │    0x00007f07500efda3:   add    %r14,%rax
   0.21%    ││ │    0x00007f07500efda6:   add    %r15,%rdx
   0.11%    ││ │    0x00007f07500efda9:   add    %r15,%rax
   0.07%    ││ │    0x00007f07500efdac:   add    %rdi,%rax
   0.16%    ││ │    0x00007f07500efdaf:   subq   $0x1,0x20(%rsp)
   0.27%    │╰ │    0x00007f07500efdb5:   jne    0x00007f07500ef440
   0.02%    │  │    0x00007f07500efdbb:   movq   $0x2,0x20(%rsp)
   0.05%    │ ↗│    0x00007f07500efdc4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%    │ ││    0x00007f07500efdc9:   vmovdqu %ymm0,(%rsp)
   0.06%    │ ││    0x00007f07500efdce:   mov    %r9,%r15
   0.07%    │ ││    0x00007f07500efdd1:   rorx   $0x29,%rdx,%r13
   0.04%    │ ││    0x00007f07500efdd7:   rorx   $0x12,%rdx,%r14
   0.06%    │ ││    0x00007f07500efddd:   xor    %r10,%r15
   0.07%    │ ││    0x00007f07500efde0:   xor    %r14,%r13
   0.08%    │ ││    0x00007f07500efde3:   rorx   $0xe,%rdx,%r14
   0.08%    │ ││    0x00007f07500efde9:   and    %rdx,%r15
   0.06%    │ ││    0x00007f07500efdec:   xor    %r14,%r13
   0.05%    │ ││    0x00007f07500efdef:   rorx   $0x22,%rax,%r12
   0.06%    │ ││    0x00007f07500efdf5:   xor    %r10,%r15
   0.04%    │ ││    0x00007f07500efdf8:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f07500efdfe:   mov    %rax,%rdi
   0.07%    │ ││    0x00007f07500efe01:   xor    %r12,%r14
   0.06%    │ ││    0x00007f07500efe04:   rorx   $0x1c,%rax,%r12
   0.06%    │ ││    0x00007f07500efe0a:   add    (%rsp),%r11
   0.07%    │ ││    0x00007f07500efe0e:   or     %rcx,%rdi
   0.06%    │ ││    0x00007f07500efe11:   xor    %r12,%r14
   0.05%    │ ││    0x00007f07500efe14:   mov    %rax,%r12
   0.06%    │ ││    0x00007f07500efe17:   and    %rbx,%rdi
   0.07%    │ ││    0x00007f07500efe1a:   and    %rcx,%r12
   0.05%    │ ││    0x00007f07500efe1d:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500efe20:   add    %r11,%r8
   0.05%    │ ││    0x00007f07500efe23:   or     %r12,%rdi
   0.07%    │ ││    0x00007f07500efe26:   add    %r14,%r11
   0.06%    │ ││    0x00007f07500efe29:   add    %r15,%r8
   0.07%    │ ││    0x00007f07500efe2c:   add    %r15,%r11
   0.04%    │ ││    0x00007f07500efe2f:   mov    %rdx,%r15
   0.06%    │ ││    0x00007f07500efe32:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007f07500efe38:   rorx   $0x12,%r8,%r14
   0.12%    │ ││    0x00007f07500efe3e:   xor    %r9,%r15
   0.06%    │ ││    0x00007f07500efe41:   xor    %r14,%r13
   0.05%    │ ││    0x00007f07500efe44:   rorx   $0xe,%r8,%r14
   0.06%    │ ││    0x00007f07500efe4a:   and    %r8,%r15
   0.06%    │ ││    0x00007f07500efe4d:   add    %rdi,%r11
   0.05%    │ ││    0x00007f07500efe50:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500efe53:   rorx   $0x22,%r11,%r12
   0.06%    │ ││    0x00007f07500efe59:   xor    %r9,%r15
   0.06%    │ ││    0x00007f07500efe5c:   rorx   $0x27,%r11,%r14
   0.05%    │ ││    0x00007f07500efe62:   mov    %r11,%rdi
   0.07%    │ ││    0x00007f07500efe65:   xor    %r12,%r14
   0.07%    │ ││    0x00007f07500efe68:   rorx   $0x1c,%r11,%r12
   0.08%    │ ││    0x00007f07500efe6e:   add    0x8(%rsp),%r10
   0.07%    │ ││    0x00007f07500efe73:   or     %rbx,%rdi
   0.06%    │ ││    0x00007f07500efe76:   xor    %r12,%r14
   0.05%    │ ││    0x00007f07500efe79:   mov    %r11,%r12
   0.05%    │ ││    0x00007f07500efe7c:   and    %rax,%rdi
   0.05%    │ ││    0x00007f07500efe7f:   and    %rbx,%r12
   0.05%    │ ││    0x00007f07500efe82:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500efe85:   add    %r10,%rcx
   0.08%    │ ││    0x00007f07500efe88:   or     %r12,%rdi
   0.05%    │ ││    0x00007f07500efe8b:   add    %r14,%r10
   0.09%    │ ││    0x00007f07500efe8e:   add    %r15,%rcx
   0.06%    │ ││    0x00007f07500efe91:   add    %r15,%r10
   0.06%    │ ││    0x00007f07500efe94:   mov    %r8,%r15
   0.05%    │ ││    0x00007f07500efe97:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││    0x00007f07500efe9d:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007f07500efea3:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f07500efea6:   xor    %r14,%r13
   0.07%    │ ││    0x00007f07500efea9:   rorx   $0xe,%rcx,%r14
   0.06%    │ ││    0x00007f07500efeaf:   and    %rcx,%r15
   0.06%    │ ││    0x00007f07500efeb2:   add    %rdi,%r10
   0.07%    │ ││    0x00007f07500efeb5:   xor    %r14,%r13
   0.08%    │ ││    0x00007f07500efeb8:   rorx   $0x22,%r10,%r12
   0.06%    │ ││    0x00007f07500efebe:   xor    %rdx,%r15
   0.08%    │ ││    0x00007f07500efec1:   rorx   $0x27,%r10,%r14
   0.08%    │ ││    0x00007f07500efec7:   mov    %r10,%rdi
   0.06%    │ ││    0x00007f07500efeca:   xor    %r12,%r14
   0.07%    │ ││    0x00007f07500efecd:   rorx   $0x1c,%r10,%r12
   0.06%    │ ││    0x00007f07500efed3:   add    0x10(%rsp),%r9
   0.05%    │ ││    0x00007f07500efed8:   or     %rax,%rdi
   0.05%    │ ││    0x00007f07500efedb:   xor    %r12,%r14
   0.07%    │ ││    0x00007f07500efede:   mov    %r10,%r12
   0.06%    │ ││    0x00007f07500efee1:   and    %r11,%rdi
   0.09%    │ ││    0x00007f07500efee4:   and    %rax,%r12
   0.08%    │ ││    0x00007f07500efee7:   add    %r13,%r15
   0.08%    │ ││    0x00007f07500efeea:   add    %r9,%rbx
   0.07%    │ ││    0x00007f07500efeed:   or     %r12,%rdi
   0.08%    │ ││    0x00007f07500efef0:   add    %r14,%r9
   0.04%    │ ││    0x00007f07500efef3:   add    %r15,%rbx
   0.08%    │ ││    0x00007f07500efef6:   add    %r15,%r9
   0.06%    │ ││    0x00007f07500efef9:   mov    %rcx,%r15
   0.05%    │ ││    0x00007f07500efefc:   rorx   $0x29,%rbx,%r13
   0.06%    │ ││    0x00007f07500eff02:   rorx   $0x12,%rbx,%r14
   0.09%    │ ││    0x00007f07500eff08:   xor    %r8,%r15
   0.08%    │ ││    0x00007f07500eff0b:   xor    %r14,%r13
   0.08%    │ ││    0x00007f07500eff0e:   rorx   $0xe,%rbx,%r14
   0.09%    │ ││    0x00007f07500eff14:   and    %rbx,%r15
   0.09%    │ ││    0x00007f07500eff17:   add    %rdi,%r9
   0.07%    │ ││    0x00007f07500eff1a:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500eff1d:   rorx   $0x22,%r9,%r12
   0.06%    │ ││    0x00007f07500eff23:   xor    %r8,%r15
   0.08%    │ ││    0x00007f07500eff26:   rorx   $0x27,%r9,%r14
   0.06%    │ ││    0x00007f07500eff2c:   mov    %r9,%rdi
   0.05%    │ ││    0x00007f07500eff2f:   xor    %r12,%r14
   0.06%    │ ││    0x00007f07500eff32:   rorx   $0x1c,%r9,%r12
   0.07%    │ ││    0x00007f07500eff38:   add    0x18(%rsp),%rdx
   0.06%    │ ││    0x00007f07500eff3d:   or     %r11,%rdi
   0.04%    │ ││    0x00007f07500eff40:   xor    %r12,%r14
   0.06%    │ ││    0x00007f07500eff43:   mov    %r9,%r12
   0.09%    │ ││    0x00007f07500eff46:   and    %r10,%rdi
   0.07%    │ ││    0x00007f07500eff49:   and    %r11,%r12
   0.05%    │ ││    0x00007f07500eff4c:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500eff4f:   add    %rdx,%rax
   0.07%    │ ││    0x00007f07500eff52:   or     %r12,%rdi
   0.07%    │ ││    0x00007f07500eff55:   add    %r14,%rdx
   0.08%    │ ││    0x00007f07500eff58:   add    %r15,%rax
   0.09%    │ ││    0x00007f07500eff5b:   add    %r15,%rdx
   0.06%    │ ││    0x00007f07500eff5e:   add    %rdi,%rdx
   0.09%    │ ││    0x00007f07500eff61:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││    0x00007f07500eff66:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f07500eff6b:   add    $0x40,%rbp
   0.07%    │ ││    0x00007f07500eff6f:   mov    %rbx,%r15
   0.09%    │ ││    0x00007f07500eff72:   rorx   $0x29,%rax,%r13
   0.04%    │ ││    0x00007f07500eff78:   rorx   $0x12,%rax,%r14
   0.06%    │ ││    0x00007f07500eff7e:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f07500eff81:   xor    %r14,%r13
   0.08%    │ ││    0x00007f07500eff84:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007f07500eff8a:   and    %rax,%r15
   0.06%    │ ││    0x00007f07500eff8d:   xor    %r14,%r13
   0.09%    │ ││    0x00007f07500eff90:   rorx   $0x22,%rdx,%r12
   0.10%    │ ││    0x00007f07500eff96:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f07500eff99:   rorx   $0x27,%rdx,%r14
   0.04%    │ ││    0x00007f07500eff9f:   mov    %rdx,%rdi
   0.05%    │ ││    0x00007f07500effa2:   xor    %r12,%r14
   0.08%    │ ││    0x00007f07500effa5:   rorx   $0x1c,%rdx,%r12
   0.06%    │ ││    0x00007f07500effab:   add    (%rsp),%r8
   0.05%    │ ││    0x00007f07500effaf:   or     %r10,%rdi
   0.08%    │ ││    0x00007f07500effb2:   xor    %r12,%r14
   0.11%    │ ││    0x00007f07500effb5:   mov    %rdx,%r12
   0.06%    │ ││    0x00007f07500effb8:   and    %r9,%rdi
   0.06%    │ ││    0x00007f07500effbb:   and    %r10,%r12
   0.07%    │ ││    0x00007f07500effbe:   add    %r13,%r15
   0.08%    │ ││    0x00007f07500effc1:   add    %r8,%r11
   0.07%    │ ││    0x00007f07500effc4:   or     %r12,%rdi
   0.05%    │ ││    0x00007f07500effc7:   add    %r14,%r8
   0.05%    │ ││    0x00007f07500effca:   add    %r15,%r11
   0.11%    │ ││    0x00007f07500effcd:   add    %r15,%r8
   0.06%    │ ││    0x00007f07500effd0:   mov    %rax,%r15
   0.05%    │ ││    0x00007f07500effd3:   rorx   $0x29,%r11,%r13
   0.06%    │ ││    0x00007f07500effd9:   rorx   $0x12,%r11,%r14
   0.12%    │ ││    0x00007f07500effdf:   xor    %rbx,%r15
   0.06%    │ ││    0x00007f07500effe2:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500effe5:   rorx   $0xe,%r11,%r14
   0.07%    │ ││    0x00007f07500effeb:   and    %r11,%r15
   0.08%    │ ││    0x00007f07500effee:   add    %rdi,%r8
   0.06%    │ ││    0x00007f07500efff1:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500efff4:   rorx   $0x22,%r8,%r12
   0.06%    │ ││    0x00007f07500efffa:   xor    %rbx,%r15
   0.10%    │ ││    0x00007f07500efffd:   rorx   $0x27,%r8,%r14
   0.07%    │ ││    0x00007f07500f0003:   mov    %r8,%rdi
   0.06%    │ ││    0x00007f07500f0006:   xor    %r12,%r14
   0.08%    │ ││    0x00007f07500f0009:   rorx   $0x1c,%r8,%r12
   0.08%    │ ││    0x00007f07500f000f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007f07500f0014:   or     %r9,%rdi
   0.05%    │ ││    0x00007f07500f0017:   xor    %r12,%r14
   0.07%    │ ││    0x00007f07500f001a:   mov    %r8,%r12
   0.06%    │ ││    0x00007f07500f001d:   and    %rdx,%rdi
   0.06%    │ ││    0x00007f07500f0020:   and    %r9,%r12
   0.06%    │ ││    0x00007f07500f0023:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500f0026:   add    %rcx,%r10
   0.08%    │ ││    0x00007f07500f0029:   or     %r12,%rdi
   0.06%    │ ││    0x00007f07500f002c:   add    %r14,%rcx
   0.04%    │ ││    0x00007f07500f002f:   add    %r15,%r10
   0.07%    │ ││    0x00007f07500f0032:   add    %r15,%rcx
   0.07%    │ ││    0x00007f07500f0035:   mov    %r11,%r15
   0.06%    │ ││    0x00007f07500f0038:   rorx   $0x29,%r10,%r13
   0.05%    │ ││    0x00007f07500f003e:   rorx   $0x12,%r10,%r14
   0.08%    │ ││    0x00007f07500f0044:   xor    %rax,%r15
   0.08%    │ ││    0x00007f07500f0047:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500f004a:   rorx   $0xe,%r10,%r14
   0.07%    │ ││    0x00007f07500f0050:   and    %r10,%r15
   0.10%    │ ││    0x00007f07500f0053:   add    %rdi,%rcx
   0.06%    │ ││    0x00007f07500f0056:   xor    %r14,%r13
   0.05%    │ ││    0x00007f07500f0059:   rorx   $0x22,%rcx,%r12
   0.05%    │ ││    0x00007f07500f005f:   xor    %rax,%r15
   0.11%    │ ││    0x00007f07500f0062:   rorx   $0x27,%rcx,%r14
   0.07%    │ ││    0x00007f07500f0068:   mov    %rcx,%rdi
   0.06%    │ ││    0x00007f07500f006b:   xor    %r12,%r14
   0.08%    │ ││    0x00007f07500f006e:   rorx   $0x1c,%rcx,%r12
   0.10%    │ ││    0x00007f07500f0074:   add    0x10(%rsp),%rbx
   0.06%    │ ││    0x00007f07500f0079:   or     %rdx,%rdi
   0.05%    │ ││    0x00007f07500f007c:   xor    %r12,%r14
   0.06%    │ ││    0x00007f07500f007f:   mov    %rcx,%r12
   0.08%    │ ││    0x00007f07500f0082:   and    %r8,%rdi
   0.06%    │ ││    0x00007f07500f0085:   and    %rdx,%r12
   0.05%    │ ││    0x00007f07500f0088:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500f008b:   add    %rbx,%r9
   0.08%    │ ││    0x00007f07500f008e:   or     %r12,%rdi
   0.08%    │ ││    0x00007f07500f0091:   add    %r14,%rbx
   0.06%    │ ││    0x00007f07500f0094:   add    %r15,%r9
   0.07%    │ ││    0x00007f07500f0097:   add    %r15,%rbx
   0.09%    │ ││    0x00007f07500f009a:   mov    %r10,%r15
   0.05%    │ ││    0x00007f07500f009d:   rorx   $0x29,%r9,%r13
   0.07%    │ ││    0x00007f07500f00a3:   rorx   $0x12,%r9,%r14
   0.06%    │ ││    0x00007f07500f00a9:   xor    %r11,%r15
   0.06%    │ ││    0x00007f07500f00ac:   xor    %r14,%r13
   0.06%    │ ││    0x00007f07500f00af:   rorx   $0xe,%r9,%r14
   0.07%    │ ││    0x00007f07500f00b5:   and    %r9,%r15
   0.08%    │ ││    0x00007f07500f00b8:   add    %rdi,%rbx
   0.05%    │ ││    0x00007f07500f00bb:   xor    %r14,%r13
   0.08%    │ ││    0x00007f07500f00be:   rorx   $0x22,%rbx,%r12
   0.08%    │ ││    0x00007f07500f00c4:   xor    %r11,%r15
   0.08%    │ ││    0x00007f07500f00c7:   rorx   $0x27,%rbx,%r14
   0.08%    │ ││    0x00007f07500f00cd:   mov    %rbx,%rdi
   0.05%    │ ││    0x00007f07500f00d0:   xor    %r12,%r14
   0.07%    │ ││    0x00007f07500f00d3:   rorx   $0x1c,%rbx,%r12
   0.07%    │ ││    0x00007f07500f00d9:   add    0x18(%rsp),%rax
   0.05%    │ ││    0x00007f07500f00de:   or     %r8,%rdi
   0.08%    │ ││    0x00007f07500f00e1:   xor    %r12,%r14
   0.08%    │ ││    0x00007f07500f00e4:   mov    %rbx,%r12
   0.06%    │ ││    0x00007f07500f00e7:   and    %rcx,%rdi
   0.06%    │ ││    0x00007f07500f00ea:   and    %r8,%r12
   0.05%    │ ││    0x00007f07500f00ed:   add    %r13,%r15
   0.07%    │ ││    0x00007f07500f00f0:   add    %rax,%rdx
   0.06%    │ ││    0x00007f07500f00f3:   or     %r12,%rdi
   0.07%    │ ││    0x00007f07500f00f6:   add    %r14,%rax
   0.09%    │ ││    0x00007f07500f00f9:   add    %r15,%rdx
   0.08%    │ ││    0x00007f07500f00fc:   add    %r15,%rax
   0.06%    │ ││    0x00007f07500f00ff:   add    %rdi,%rax
   0.10%    │ ││    0x00007f07500f0102:   vmovdqu %ymm6,%ymm4
   0.07%    │ ││    0x00007f07500f0106:   vmovdqu %ymm7,%ymm5
   0.02%    │ ││    0x00007f07500f010a:   subq   $0x1,0x20(%rsp)
   0.17%    │ ╰│    0x00007f07500f0110:   jne    0x00007f07500efdc4
   0.02%    │  │    0x00007f07500f0116:   add    (%rsi),%rax
   0.00%    │  │    0x00007f07500f0119:   mov    %rax,(%rsi)
   0.30%    │  │    0x00007f07500f011c:   add    0x8(%rsi),%rbx
   0.00%    │  │    0x00007f07500f0120:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007f07500f0124:   add    0x10(%rsi),%rcx
   0.00%    │  │    0x00007f07500f0128:   mov    %rcx,0x10(%rsi)
   0.13%    │  │    0x00007f07500f012c:   add    0x18(%rsi),%r8
   0.00%    │  │    0x00007f07500f0130:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f07500f0134:   add    0x20(%rsi),%rdx
            │  │    0x00007f07500f0138:   mov    %rdx,0x20(%rsi)
   0.11%    │  │    0x00007f07500f013c:   add    0x28(%rsi),%r9
   0.00%    │  │    0x00007f07500f0140:   mov    %r9,0x28(%rsi)
   0.03%    │  │    0x00007f07500f0144:   add    0x30(%rsi),%r10
   0.00%    │  │    0x00007f07500f0148:   mov    %r10,0x30(%rsi)
   0.13%    │  │    0x00007f07500f014c:   add    0x38(%rsi),%r11
            │  │    0x00007f07500f0150:   mov    %r11,0x38(%rsi)
   0.02%    │  │    0x00007f07500f0154:   mov    0x28(%rsp),%rdi
            │  │    0x00007f07500f0159:   add    $0x80,%rdi
   0.09%    │  │    0x00007f07500f0160:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f07500f0165:   jne    0x00007f07500ef3fb
   0.01%    ↘       0x00007f07500f016b:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f07500f0170:   mov    0x48(%rsp),%rbx
   0.01%            0x00007f07500f0175:   mov    0x50(%rsp),%r12
                    0x00007f07500f017a:   mov    0x58(%rsp),%r13
                    0x00007f07500f017f:   mov    0x60(%rsp),%r14
                    0x00007f07500f0184:   mov    0x68(%rsp),%r15
                    0x00007f07500f0189:   mov    0x38(%rsp),%rsp
                    0x00007f07500f018e:   pop    %rcx
   0.00%            0x00007f07500f018f:   pop    %rdx
                    0x00007f07500f0190:   mov    %rdx,%rax
   0.24%         ↗  0x00007f07500f0193:   cmp    %rcx,%rax
                ╭│  0x00007f07500f0196:   jae    0x00007f07500f01a0
   0.01%        ││  0x00007f07500f0198:   add    $0x80,%rax
   0.00%        │╰  0x00007f07500f019e:   jmp    0x00007f07500f0193
   0.01%        ↘   0x00007f07500f01a0:   vzeroupper 
   0.00%            0x00007f07500f01a3:   leave  
   0.01%            0x00007f07500f01a4:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f07500f01c0, 0x00007f07500f01e0] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  95.35%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.35%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.86%        runtime stub  StubRoutines::sha512_implCompress 
   0.63%        runtime stub  StubRoutines::sha512_implCompress 
   0.52%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.13%        runtime stub  StubRoutines::sha512_implCompress 
   0.10%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%        runtime stub  StubRoutines::sha512_implCompress 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 648 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 648 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 648 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 648 
   1.35%  <...other 336 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.35%        runtime stub  StubRoutines::sha512_implCompressMB 
   2.09%              kernel  [unknown] 
   1.70%        runtime stub  StubRoutines::sha512_implCompress 
   0.40%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 648 
   0.11%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 679 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 600 
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.17%        runtime stub
   2.09%              kernel
   0.43%         c2, level 4
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    perf-1943262.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/224, length = 16384)

# Run progress: 45.45% complete, ETA 00:10:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.343 us/op
# Warmup Iteration   2: 37.869 us/op
# Warmup Iteration   3: 37.887 us/op
# Warmup Iteration   4: 37.865 us/op
# Warmup Iteration   5: 37.862 us/op
Iteration   1: 37.867 us/op
Iteration   2: 37.858 us/op
Iteration   3: 37.858 us/op
Iteration   4: 37.859 us/op
Iteration   5: 37.859 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.860 ±(99.9%) 0.015 us/op [Average]
  (min, avg, max) = (37.858, 37.860, 37.867), stdev = 0.004
  CI (99.9%): [37.846, 37.875] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 144541 total address lines.
Perf output processed (skipped 56.050 seconds):
 Column 1: cycles (50579 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompress 

 <region is too big to display, has 1038 lines, but threshold is 1000>
....................................................................................................
  96.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.13%        runtime stub  StubRoutines::sha512_implCompress 
   1.12%        runtime stub  StubRoutines::sha512_implCompress 
   0.30%              kernel  [unknown] 
   0.29%        runtime stub  StubRoutines::sha512_implCompress 
   0.28%        runtime stub  StubRoutines::sha512_implCompress 
   0.11%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.08%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 659 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 659 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 659 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 657 
   1.13%  <...other 297 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.82%        runtime stub  StubRoutines::sha512_implCompress 
   1.36%              kernel  [unknown] 
   0.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 659 
   0.14%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 657 
   0.09%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 601 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.17%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%        runtime stub
   1.36%              kernel
   0.35%         c2, level 4
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%    perf-1943325.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/256, length = 16384)

# Run progress: 54.55% complete, ETA 00:09:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.526 us/op
# Warmup Iteration   2: 37.872 us/op
# Warmup Iteration   3: 37.863 us/op
# Warmup Iteration   4: 37.863 us/op
# Warmup Iteration   5: 37.863 us/op
Iteration   1: 37.864 us/op
Iteration   2: 37.866 us/op
Iteration   3: 37.865 us/op
Iteration   4: 37.865 us/op
Iteration   5: 37.861 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.864 ±(99.9%) 0.008 us/op [Average]
  (min, avg, max) = (37.861, 37.864, 37.866), stdev = 0.002
  CI (99.9%): [37.856, 37.871] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 145616 total address lines.
Perf output processed (skipped 56.054 seconds):
 Column 1: cycles (50848 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompress 

                    0x00007f1bbc0ef40b:   mov    0x40(%rsp),%rbp
                    0x00007f1bbc0ef410:   mov    0x48(%rsp),%rbx
                    0x00007f1bbc0ef415:   mov    0x50(%rsp),%r12
                    0x00007f1bbc0ef41a:   mov    0x58(%rsp),%r13
                    0x00007f1bbc0ef41f:   mov    0x60(%rsp),%r14
                    0x00007f1bbc0ef424:   mov    0x68(%rsp),%r15
                    0x00007f1bbc0ef429:   mov    0x38(%rsp),%rsp
                    0x00007f1bbc0ef42e:   pop    %rcx
                    0x00007f1bbc0ef42f:   pop    %rdx
                    0x00007f1bbc0ef430:   vzeroupper 
   0.00%            0x00007f1bbc0ef433:   leave  
   0.00%            0x00007f1bbc0ef434:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  <task_queued compile_id='1' method='java.lang.Object &lt;init&gt; ()V' bytes='1' count='384' iicount='384' level='3' stamp='1.628' comment='tiered' hot_count='384'/>
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007f1bbc0ef440, 0x00007f1bbc0f0285] (3653 bytes)
                  --------------------------------------------------------------------------------
                    0x00007f1bbc0ef440:   push   %rbp
                    0x00007f1bbc0ef441:   mov    %rsp,%rbp
                    0x00007f1bbc0ef444:   push   %rdx
   0.00%            0x00007f1bbc0ef445:   push   %rcx
   0.01%            0x00007f1bbc0ef446:   mov    %rsp,%rax
                    0x00007f1bbc0ef449:   sub    $0x70,%rsp
                    0x00007f1bbc0ef44d:   and    $0xffffffffffffffe0,%rsp
   0.00%            0x00007f1bbc0ef451:   mov    %rax,0x38(%rsp)
   0.01%            0x00007f1bbc0ef456:   mov    %rbp,0x40(%rsp)
   0.00%            0x00007f1bbc0ef45b:   mov    %rbx,0x48(%rsp)
                    0x00007f1bbc0ef460:   mov    %r12,0x50(%rsp)
   0.00%            0x00007f1bbc0ef465:   mov    %r13,0x58(%rsp)
                    0x00007f1bbc0ef46a:   mov    %r14,0x60(%rsp)
                    0x00007f1bbc0ef46f:   mov    %r15,0x68(%rsp)
                    0x00007f1bbc0ef474:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f1bbc0ef47a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f1bbc0ef480:   xor    %rax,%rax
   0.01%   ↗        0x00007f1bbc0ef483:   cmp    %rcx,%rdx
          ╭│        0x00007f1bbc0ef486:   jae    0x00007f1bbc0ef497
   0.09%  ││        0x00007f1bbc0ef488:   add    $0x80,%rdx
   0.03%  ││        0x00007f1bbc0ef48f:   add    $0x80,%rax
   0.06%  │╰        0x00007f1bbc0ef495:   jmp    0x00007f1bbc0ef483
   0.01%  ↘         0x00007f1bbc0ef497:   mov    %rax,%rdx
   0.00%            0x00007f1bbc0ef49a:   cmp    $0x0,%rdx
            ╭       0x00007f1bbc0ef49e:   je     0x00007f1bbc0f024b
   0.00%    │       0x00007f1bbc0ef4a4:   add    %rdi,%rdx
            │       0x00007f1bbc0ef4a7:   mov    %rdx,0x30(%rsp)
   0.01%    │       0x00007f1bbc0ef4ac:   mov    (%rsi),%rax
            │       0x00007f1bbc0ef4af:   mov    0x8(%rsi),%rbx
            │       0x00007f1bbc0ef4b3:   mov    0x10(%rsi),%rcx
            │       0x00007f1bbc0ef4b7:   mov    0x18(%rsi),%r8
            │       0x00007f1bbc0ef4bb:   mov    0x20(%rsi),%rdx
            │       0x00007f1bbc0ef4bf:   mov    0x28(%rsi),%r9
            │       0x00007f1bbc0ef4c3:   mov    0x38(%rsi),%r11
   0.01%    │       0x00007f1bbc0ef4c7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f1bbc0ee5e0
            │       0x00007f1bbc0ef4cf:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f1bbc0ee600
   0.00%    │       0x00007f1bbc0ef4d7:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f1bbc0ef4db:   movabs $0x7f1bd4606d40,%rbp
   0.02%    │  │    0x00007f1bbc0ef4e5:   vmovdqu (%rdi),%ymm4
   0.03%    │  │    0x00007f1bbc0ef4e9:   vpshufb %ymm9,%ymm4,%ymm4
   0.14%    │  │    0x00007f1bbc0ef4ee:   vmovdqu 0x20(%rdi),%ymm5
   0.02%    │  │    0x00007f1bbc0ef4f3:   vpshufb %ymm9,%ymm5,%ymm5
   0.05%    │  │    0x00007f1bbc0ef4f8:   vmovdqu 0x40(%rdi),%ymm6
   0.03%    │  │    0x00007f1bbc0ef4fd:   vpshufb %ymm9,%ymm6,%ymm6
   0.10%    │  │    0x00007f1bbc0ef502:   vmovdqu 0x60(%rdi),%ymm7
   0.04%    │  │    0x00007f1bbc0ef507:   vpshufb %ymm9,%ymm7,%ymm7
   0.08%    │  │    0x00007f1bbc0ef50c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f1bbc0ef511:   movq   $0x4,0x20(%rsp)
   0.05%    │  │    0x00007f1bbc0ef51a:   nopw   0x0(%rax,%rax,1)
   0.05%    │↗ │    0x00007f1bbc0ef520:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.24%    ││ │    0x00007f1bbc0ef525:   vmovdqu %ymm0,(%rsp)
   0.15%    ││ │    0x00007f1bbc0ef52a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.26%    ││ │    0x00007f1bbc0ef530:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.34%    ││ │    0x00007f1bbc0ef536:   vpaddq %ymm4,%ymm0,%ymm0
   0.64%    ││ │    0x00007f1bbc0ef53a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.16%    ││ │    0x00007f1bbc0ef540:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.07%    ││ │    0x00007f1bbc0ef546:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%    ││ │    0x00007f1bbc0ef54b:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%    ││ │    0x00007f1bbc0ef550:   vpor   %ymm2,%ymm3,%ymm3
   0.17%    ││ │    0x00007f1bbc0ef554:   vpsrlq $0x7,%ymm1,%ymm8
   0.06%    ││ │    0x00007f1bbc0ef559:   mov    %rax,%rdi
   0.05%    ││ │    0x00007f1bbc0ef55c:   rorx   $0x29,%rdx,%r13
   0.24%    ││ │    0x00007f1bbc0ef562:   rorx   $0x12,%rdx,%r14
   0.16%    ││ │    0x00007f1bbc0ef568:   add    (%rsp),%r11
   0.11%    ││ │    0x00007f1bbc0ef56c:   or     %rcx,%rdi
   0.07%    ││ │    0x00007f1bbc0ef56f:   mov    %r9,%r15
   0.23%    ││ │    0x00007f1bbc0ef572:   xor    %r10,%r15
   0.17%    ││ │    0x00007f1bbc0ef575:   rorx   $0x22,%rax,%r12
   0.08%    ││ │    0x00007f1bbc0ef57b:   xor    %r14,%r13
   0.05%    ││ │    0x00007f1bbc0ef57e:   rorx   $0xe,%rdx,%r14
   0.22%    ││ │    0x00007f1bbc0ef584:   and    %rdx,%r15
   0.20%    ││ │    0x00007f1bbc0ef587:   add    %r11,%r8
   0.07%    ││ │    0x00007f1bbc0ef58a:   and    %rbx,%rdi
   0.06%    ││ │    0x00007f1bbc0ef58d:   xor    %r14,%r13
   0.21%    ││ │    0x00007f1bbc0ef590:   rorx   $0x27,%rax,%r14
   0.18%    ││ │    0x00007f1bbc0ef596:   xor    %r12,%r14
   0.08%    ││ │    0x00007f1bbc0ef599:   rorx   $0x1c,%rax,%r12
   0.05%    ││ │    0x00007f1bbc0ef59f:   xor    %r10,%r15
   0.20%    ││ │    0x00007f1bbc0ef5a2:   xor    %r12,%r14
   0.16%    ││ │    0x00007f1bbc0ef5a5:   mov    %rax,%r12
   0.07%    ││ │    0x00007f1bbc0ef5a8:   and    %rcx,%r12
   0.05%    ││ │    0x00007f1bbc0ef5ab:   add    %r13,%r15
   0.23%    ││ │    0x00007f1bbc0ef5ae:   or     %r12,%rdi
   0.14%    ││ │    0x00007f1bbc0ef5b1:   add    %r14,%r11
   0.08%    ││ │    0x00007f1bbc0ef5b4:   add    %r15,%r8
   0.05%    ││ │    0x00007f1bbc0ef5b7:   add    %r15,%r11
   0.22%    ││ │    0x00007f1bbc0ef5ba:   add    %rdi,%r11
   0.19%    ││ │    0x00007f1bbc0ef5bd:   vpsrlq $0x8,%ymm1,%ymm2
   0.06%    ││ │    0x00007f1bbc0ef5c2:   vpsllq $0x38,%ymm1,%ymm1
   0.05%    ││ │    0x00007f1bbc0ef5c7:   vpor   %ymm2,%ymm1,%ymm1
   0.18%    ││ │    0x00007f1bbc0ef5cb:   vpxor  %ymm8,%ymm3,%ymm3
   0.18%    ││ │    0x00007f1bbc0ef5d0:   vpxor  %ymm1,%ymm3,%ymm1
   0.07%    ││ │    0x00007f1bbc0ef5d4:   vpaddq %ymm1,%ymm0,%ymm0
   0.05%    ││ │    0x00007f1bbc0ef5d8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.20%    ││ │    0x00007f1bbc0ef5de:   vpand  %ymm10,%ymm0,%ymm0
   0.17%    ││ │    0x00007f1bbc0ef5e3:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.08%    ││ │    0x00007f1bbc0ef5e9:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%    ││ │    0x00007f1bbc0ef5ee:   mov    %r11,%rdi
   0.20%    ││ │    0x00007f1bbc0ef5f1:   rorx   $0x29,%r8,%r13
   0.19%    ││ │    0x00007f1bbc0ef5f7:   rorx   $0x12,%r8,%r14
   0.09%    ││ │    0x00007f1bbc0ef5fd:   add    0x8(%rsp),%r10
   0.04%    ││ │    0x00007f1bbc0ef602:   or     %rbx,%rdi
   0.22%    ││ │    0x00007f1bbc0ef605:   mov    %rdx,%r15
   0.18%    ││ │    0x00007f1bbc0ef608:   xor    %r9,%r15
   0.07%    ││ │    0x00007f1bbc0ef60b:   rorx   $0x22,%r11,%r12
   0.05%    ││ │    0x00007f1bbc0ef611:   xor    %r14,%r13
   0.19%    ││ │    0x00007f1bbc0ef614:   rorx   $0xe,%r8,%r14
   0.18%    ││ │    0x00007f1bbc0ef61a:   and    %r8,%r15
   0.05%    ││ │    0x00007f1bbc0ef61d:   add    %r10,%rcx
   0.05%    ││ │    0x00007f1bbc0ef620:   and    %rax,%rdi
   0.19%    ││ │    0x00007f1bbc0ef623:   xor    %r14,%r13
   0.15%    ││ │    0x00007f1bbc0ef626:   rorx   $0x27,%r11,%r14
   0.07%    ││ │    0x00007f1bbc0ef62c:   xor    %r12,%r14
   0.05%    ││ │    0x00007f1bbc0ef62f:   rorx   $0x1c,%r11,%r12
   0.23%    ││ │    0x00007f1bbc0ef635:   xor    %r9,%r15
   0.19%    ││ │    0x00007f1bbc0ef638:   xor    %r12,%r14
   0.08%    ││ │    0x00007f1bbc0ef63b:   mov    %r11,%r12
   0.04%    ││ │    0x00007f1bbc0ef63e:   and    %rbx,%r12
   0.20%    ││ │    0x00007f1bbc0ef641:   add    %r13,%r15
   0.19%    ││ │    0x00007f1bbc0ef644:   or     %r12,%rdi
   0.07%    ││ │    0x00007f1bbc0ef647:   add    %r14,%r10
   0.08%    ││ │    0x00007f1bbc0ef64a:   add    %r15,%rcx
   0.18%    ││ │    0x00007f1bbc0ef64d:   add    %r15,%r10
   0.17%    ││ │    0x00007f1bbc0ef650:   add    %rdi,%r10
   0.07%    ││ │    0x00007f1bbc0ef653:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007f1bbc0ef658:   vpsllq $0x2d,%ymm2,%ymm1
   0.20%    ││ │    0x00007f1bbc0ef65d:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f1bbc0ef661:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f1bbc0ef665:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%    ││ │    0x00007f1bbc0ef66a:   vpsllq $0x3,%ymm2,%ymm1
   0.18%    ││ │    0x00007f1bbc0ef66f:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f1bbc0ef673:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f1bbc0ef677:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%    ││ │    0x00007f1bbc0ef67c:   vpsrlq $0x6,%ymm4,%ymm8
   0.23%    ││ │    0x00007f1bbc0ef681:   mov    %r10,%rdi
   0.14%    ││ │    0x00007f1bbc0ef684:   rorx   $0x29,%rcx,%r13
   0.06%    ││ │    0x00007f1bbc0ef68a:   rorx   $0x12,%rcx,%r14
   0.05%    ││ │    0x00007f1bbc0ef690:   add    0x10(%rsp),%r9
   0.19%    ││ │    0x00007f1bbc0ef695:   or     %rax,%rdi
   0.20%    ││ │    0x00007f1bbc0ef698:   mov    %r8,%r15
   0.08%    ││ │    0x00007f1bbc0ef69b:   xor    %rdx,%r15
   0.06%    ││ │    0x00007f1bbc0ef69e:   rorx   $0x22,%r10,%r12
   0.24%    ││ │    0x00007f1bbc0ef6a4:   xor    %r14,%r13
   0.18%    ││ │    0x00007f1bbc0ef6a7:   rorx   $0xe,%rcx,%r14
   0.06%    ││ │    0x00007f1bbc0ef6ad:   and    %rcx,%r15
   0.05%    ││ │    0x00007f1bbc0ef6b0:   add    %r9,%rbx
   0.19%    ││ │    0x00007f1bbc0ef6b3:   and    %r11,%rdi
   0.18%    ││ │    0x00007f1bbc0ef6b6:   xor    %r14,%r13
   0.08%    ││ │    0x00007f1bbc0ef6b9:   rorx   $0x27,%r10,%r14
   0.06%    ││ │    0x00007f1bbc0ef6bf:   xor    %r12,%r14
   0.21%    ││ │    0x00007f1bbc0ef6c2:   rorx   $0x1c,%r10,%r12
   0.15%    ││ │    0x00007f1bbc0ef6c8:   xor    %rdx,%r15
   0.07%    ││ │    0x00007f1bbc0ef6cb:   xor    %r12,%r14
   0.06%    ││ │    0x00007f1bbc0ef6ce:   mov    %r10,%r12
   0.18%    ││ │    0x00007f1bbc0ef6d1:   and    %rax,%r12
   0.21%    ││ │    0x00007f1bbc0ef6d4:   add    %r13,%r15
   0.08%    ││ │    0x00007f1bbc0ef6d7:   or     %r12,%rdi
   0.04%    ││ │    0x00007f1bbc0ef6da:   add    %r14,%r9
   0.18%    ││ │    0x00007f1bbc0ef6dd:   add    %r15,%rbx
   0.19%    ││ │    0x00007f1bbc0ef6e0:   add    %r15,%r9
   0.07%    ││ │    0x00007f1bbc0ef6e3:   add    %rdi,%r9
   0.04%    ││ │    0x00007f1bbc0ef6e6:   vpsrlq $0x13,%ymm4,%ymm3
   0.23%    ││ │    0x00007f1bbc0ef6eb:   vpsllq $0x2d,%ymm4,%ymm1
   0.18%    ││ │    0x00007f1bbc0ef6f0:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f1bbc0ef6f4:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f1bbc0ef6f8:   vpsrlq $0x3d,%ymm4,%ymm3
   0.24%    ││ │    0x00007f1bbc0ef6fd:   vpsllq $0x3,%ymm4,%ymm1
   0.19%    ││ │    0x00007f1bbc0ef702:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f1bbc0ef706:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%    ││ │    0x00007f1bbc0ef70a:   vpaddq %ymm8,%ymm0,%ymm2
   0.22%    ││ │    0x00007f1bbc0ef70f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.24%    ││ │    0x00007f1bbc0ef715:   mov    %r9,%rdi
   0.08%    ││ │    0x00007f1bbc0ef718:   rorx   $0x29,%rbx,%r13
   0.06%    ││ │    0x00007f1bbc0ef71e:   rorx   $0x12,%rbx,%r14
   0.18%    ││ │    0x00007f1bbc0ef724:   add    0x18(%rsp),%rdx
   0.21%    ││ │    0x00007f1bbc0ef729:   or     %r11,%rdi
   0.07%    ││ │    0x00007f1bbc0ef72c:   mov    %rcx,%r15
   0.03%    ││ │    0x00007f1bbc0ef72f:   xor    %r8,%r15
   0.16%    ││ │    0x00007f1bbc0ef732:   rorx   $0x22,%r9,%r12
   0.20%    ││ │    0x00007f1bbc0ef738:   xor    %r14,%r13
   0.07%    ││ │    0x00007f1bbc0ef73b:   rorx   $0xe,%rbx,%r14
   0.06%    ││ │    0x00007f1bbc0ef741:   and    %rbx,%r15
   0.18%    ││ │    0x00007f1bbc0ef744:   add    %rdx,%rax
   0.23%    ││ │    0x00007f1bbc0ef747:   and    %r10,%rdi
   0.07%    ││ │    0x00007f1bbc0ef74a:   xor    %r14,%r13
   0.04%    ││ │    0x00007f1bbc0ef74d:   rorx   $0x27,%r9,%r14
   0.17%    ││ │    0x00007f1bbc0ef753:   xor    %r12,%r14
   0.20%    ││ │    0x00007f1bbc0ef756:   rorx   $0x1c,%r9,%r12
   0.07%    ││ │    0x00007f1bbc0ef75c:   xor    %r8,%r15
   0.04%    ││ │    0x00007f1bbc0ef75f:   xor    %r12,%r14
   0.16%    ││ │    0x00007f1bbc0ef762:   mov    %r9,%r12
   0.27%    ││ │    0x00007f1bbc0ef765:   and    %r11,%r12
   0.09%    ││ │    0x00007f1bbc0ef768:   add    %r13,%r15
   0.03%    ││ │    0x00007f1bbc0ef76b:   or     %r12,%rdi
   0.17%    ││ │    0x00007f1bbc0ef76e:   add    %r14,%rdx
   0.26%    ││ │    0x00007f1bbc0ef771:   add    %r15,%rax
   0.06%    ││ │    0x00007f1bbc0ef774:   add    %r15,%rdx
   0.04%    ││ │    0x00007f1bbc0ef777:   add    %rdi,%rdx
   0.19%    ││ │    0x00007f1bbc0ef77a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.19%    ││ │    0x00007f1bbc0ef77f:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f1bbc0ef784:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.04%    ││ │    0x00007f1bbc0ef78a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.20%    ││ │    0x00007f1bbc0ef790:   vpaddq %ymm5,%ymm0,%ymm0
   0.29%    ││ │    0x00007f1bbc0ef794:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%    ││ │    0x00007f1bbc0ef79a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.06%    ││ │    0x00007f1bbc0ef7a0:   vpsrlq $0x1,%ymm1,%ymm2
   0.22%    ││ │    0x00007f1bbc0ef7a5:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%    ││ │    0x00007f1bbc0ef7aa:   vpor   %ymm2,%ymm3,%ymm3
   0.10%    ││ │    0x00007f1bbc0ef7ae:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007f1bbc0ef7b3:   mov    %rdx,%rdi
   0.19%    ││ │    0x00007f1bbc0ef7b6:   rorx   $0x29,%rax,%r13
   0.22%    ││ │    0x00007f1bbc0ef7bc:   rorx   $0x12,%rax,%r14
   0.08%    ││ │    0x00007f1bbc0ef7c2:   add    (%rsp),%r8
   0.04%    ││ │    0x00007f1bbc0ef7c6:   or     %r10,%rdi
   0.18%    ││ │    0x00007f1bbc0ef7c9:   mov    %rbx,%r15
   0.25%    ││ │    0x00007f1bbc0ef7cc:   xor    %rcx,%r15
   0.08%    ││ │    0x00007f1bbc0ef7cf:   rorx   $0x22,%rdx,%r12
   0.04%    ││ │    0x00007f1bbc0ef7d5:   xor    %r14,%r13
   0.19%    ││ │    0x00007f1bbc0ef7d8:   rorx   $0xe,%rax,%r14
   0.27%    ││ │    0x00007f1bbc0ef7de:   and    %rax,%r15
   0.09%    ││ │    0x00007f1bbc0ef7e1:   add    %r8,%r11
   0.04%    ││ │    0x00007f1bbc0ef7e4:   and    %r9,%rdi
   0.19%    ││ │    0x00007f1bbc0ef7e7:   xor    %r14,%r13
   0.24%    ││ │    0x00007f1bbc0ef7ea:   rorx   $0x27,%rdx,%r14
   0.09%    ││ │    0x00007f1bbc0ef7f0:   xor    %r12,%r14
   0.03%    ││ │    0x00007f1bbc0ef7f3:   rorx   $0x1c,%rdx,%r12
   0.15%    ││ │    0x00007f1bbc0ef7f9:   xor    %rcx,%r15
   0.21%    ││ │    0x00007f1bbc0ef7fc:   xor    %r12,%r14
   0.07%    ││ │    0x00007f1bbc0ef7ff:   mov    %rdx,%r12
   0.05%    ││ │    0x00007f1bbc0ef802:   and    %r10,%r12
   0.17%    ││ │    0x00007f1bbc0ef805:   add    %r13,%r15
   0.22%    ││ │    0x00007f1bbc0ef808:   or     %r12,%rdi
   0.07%    ││ │    0x00007f1bbc0ef80b:   add    %r14,%r8
   0.05%    ││ │    0x00007f1bbc0ef80e:   add    %r15,%r11
   0.19%    ││ │    0x00007f1bbc0ef811:   add    %r15,%r8
   0.20%    ││ │    0x00007f1bbc0ef814:   add    %rdi,%r8
   0.08%    ││ │    0x00007f1bbc0ef817:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%    ││ │    0x00007f1bbc0ef81c:   vpsllq $0x38,%ymm1,%ymm1
   0.18%    ││ │    0x00007f1bbc0ef821:   vpor   %ymm2,%ymm1,%ymm1
   0.22%    ││ │    0x00007f1bbc0ef825:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%    ││ │    0x00007f1bbc0ef82a:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%    ││ │    0x00007f1bbc0ef82e:   vpaddq %ymm1,%ymm0,%ymm0
   0.18%    ││ │    0x00007f1bbc0ef832:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.21%    ││ │    0x00007f1bbc0ef838:   vpand  %ymm10,%ymm0,%ymm0
   0.09%    ││ │    0x00007f1bbc0ef83d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.05%    ││ │    0x00007f1bbc0ef843:   vpsrlq $0x6,%ymm2,%ymm8
   0.15%    ││ │    0x00007f1bbc0ef848:   mov    %r8,%rdi
   0.20%    ││ │    0x00007f1bbc0ef84b:   rorx   $0x29,%r11,%r13
   0.06%    ││ │    0x00007f1bbc0ef851:   rorx   $0x12,%r11,%r14
   0.06%    ││ │    0x00007f1bbc0ef857:   add    0x8(%rsp),%rcx
   0.14%    ││ │    0x00007f1bbc0ef85c:   or     %r9,%rdi
   0.21%    ││ │    0x00007f1bbc0ef85f:   mov    %rax,%r15
   0.10%    ││ │    0x00007f1bbc0ef862:   xor    %rbx,%r15
   0.05%    ││ │    0x00007f1bbc0ef865:   rorx   $0x22,%r8,%r12
   0.17%    ││ │    0x00007f1bbc0ef86b:   xor    %r14,%r13
   0.23%    ││ │    0x00007f1bbc0ef86e:   rorx   $0xe,%r11,%r14
   0.10%    ││ │    0x00007f1bbc0ef874:   and    %r11,%r15
   0.03%    ││ │    0x00007f1bbc0ef877:   add    %rcx,%r10
   0.16%    ││ │    0x00007f1bbc0ef87a:   and    %rdx,%rdi
   0.25%    ││ │    0x00007f1bbc0ef87d:   xor    %r14,%r13
   0.08%    ││ │    0x00007f1bbc0ef880:   rorx   $0x27,%r8,%r14
   0.05%    ││ │    0x00007f1bbc0ef886:   xor    %r12,%r14
   0.15%    ││ │    0x00007f1bbc0ef889:   rorx   $0x1c,%r8,%r12
   0.22%    ││ │    0x00007f1bbc0ef88f:   xor    %rbx,%r15
   0.06%    ││ │    0x00007f1bbc0ef892:   xor    %r12,%r14
   0.05%    ││ │    0x00007f1bbc0ef895:   mov    %r8,%r12
   0.18%    ││ │    0x00007f1bbc0ef898:   and    %r9,%r12
   0.22%    ││ │    0x00007f1bbc0ef89b:   add    %r13,%r15
   0.09%    ││ │    0x00007f1bbc0ef89e:   or     %r12,%rdi
   0.02%    ││ │    0x00007f1bbc0ef8a1:   add    %r14,%rcx
   0.17%    ││ │    0x00007f1bbc0ef8a4:   add    %r15,%r10
   0.21%    ││ │    0x00007f1bbc0ef8a7:   add    %r15,%rcx
   0.11%    ││ │    0x00007f1bbc0ef8aa:   add    %rdi,%rcx
   0.04%    ││ │    0x00007f1bbc0ef8ad:   vpsrlq $0x13,%ymm2,%ymm3
   0.18%    ││ │    0x00007f1bbc0ef8b2:   vpsllq $0x2d,%ymm2,%ymm1
   0.18%    ││ │    0x00007f1bbc0ef8b7:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f1bbc0ef8bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f1bbc0ef8bf:   vpsrlq $0x3d,%ymm2,%ymm3
   0.15%    ││ │    0x00007f1bbc0ef8c4:   vpsllq $0x3,%ymm2,%ymm1
   0.23%    ││ │    0x00007f1bbc0ef8c9:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f1bbc0ef8cd:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f1bbc0ef8d1:   vpaddq %ymm8,%ymm5,%ymm5
   0.12%    ││ │    0x00007f1bbc0ef8d6:   vpsrlq $0x6,%ymm5,%ymm8
   0.21%    ││ │    0x00007f1bbc0ef8db:   mov    %rcx,%rdi
   0.09%    ││ │    0x00007f1bbc0ef8de:   rorx   $0x29,%r10,%r13
   0.03%    ││ │    0x00007f1bbc0ef8e4:   rorx   $0x12,%r10,%r14
   0.16%    ││ │    0x00007f1bbc0ef8ea:   add    0x10(%rsp),%rbx
   0.23%    ││ │    0x00007f1bbc0ef8ef:   or     %rdx,%rdi
   0.10%    ││ │    0x00007f1bbc0ef8f2:   mov    %r11,%r15
   0.05%    ││ │    0x00007f1bbc0ef8f5:   xor    %rax,%r15
   0.15%    ││ │    0x00007f1bbc0ef8f8:   rorx   $0x22,%rcx,%r12
   0.25%    ││ │    0x00007f1bbc0ef8fe:   xor    %r14,%r13
   0.09%    ││ │    0x00007f1bbc0ef901:   rorx   $0xe,%r10,%r14
   0.05%    ││ │    0x00007f1bbc0ef907:   and    %r10,%r15
   0.14%    ││ │    0x00007f1bbc0ef90a:   add    %rbx,%r9
   0.22%    ││ │    0x00007f1bbc0ef90d:   and    %r8,%rdi
   0.08%    ││ │    0x00007f1bbc0ef910:   xor    %r14,%r13
   0.06%    ││ │    0x00007f1bbc0ef913:   rorx   $0x27,%rcx,%r14
   0.16%    ││ │    0x00007f1bbc0ef919:   xor    %r12,%r14
   0.23%    ││ │    0x00007f1bbc0ef91c:   rorx   $0x1c,%rcx,%r12
   0.11%    ││ │    0x00007f1bbc0ef922:   xor    %rax,%r15
   0.03%    ││ │    0x00007f1bbc0ef925:   xor    %r12,%r14
   0.17%    ││ │    0x00007f1bbc0ef928:   mov    %rcx,%r12
   0.22%    ││ │    0x00007f1bbc0ef92b:   and    %rdx,%r12
   0.07%    ││ │    0x00007f1bbc0ef92e:   add    %r13,%r15
   0.04%    ││ │    0x00007f1bbc0ef931:   or     %r12,%rdi
   0.16%    ││ │    0x00007f1bbc0ef934:   add    %r14,%rbx
   0.23%    ││ │    0x00007f1bbc0ef937:   add    %r15,%r9
   0.07%    ││ │    0x00007f1bbc0ef93a:   add    %r15,%rbx
   0.03%    ││ │    0x00007f1bbc0ef93d:   add    %rdi,%rbx
   0.19%    ││ │    0x00007f1bbc0ef940:   vpsrlq $0x13,%ymm5,%ymm3
   0.24%    ││ │    0x00007f1bbc0ef945:   vpsllq $0x2d,%ymm5,%ymm1
   0.10%    ││ │    0x00007f1bbc0ef94a:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f1bbc0ef94e:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f1bbc0ef952:   vpsrlq $0x3d,%ymm5,%ymm3
   0.22%    ││ │    0x00007f1bbc0ef957:   vpsllq $0x3,%ymm5,%ymm1
   0.10%    ││ │    0x00007f1bbc0ef95c:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f1bbc0ef960:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%    ││ │    0x00007f1bbc0ef964:   vpaddq %ymm8,%ymm0,%ymm2
   0.24%    ││ │    0x00007f1bbc0ef969:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.11%    ││ │    0x00007f1bbc0ef96f:   mov    %rbx,%rdi
   0.04%    ││ │    0x00007f1bbc0ef972:   rorx   $0x29,%r9,%r13
   0.16%    ││ │    0x00007f1bbc0ef978:   rorx   $0x12,%r9,%r14
   0.21%    ││ │    0x00007f1bbc0ef97e:   add    0x18(%rsp),%rax
   0.09%    ││ │    0x00007f1bbc0ef983:   or     %r8,%rdi
   0.03%    ││ │    0x00007f1bbc0ef986:   mov    %r10,%r15
   0.14%    ││ │    0x00007f1bbc0ef989:   xor    %r11,%r15
   0.17%    ││ │    0x00007f1bbc0ef98c:   rorx   $0x22,%rbx,%r12
   0.14%    ││ │    0x00007f1bbc0ef992:   xor    %r14,%r13
   0.04%    ││ │    0x00007f1bbc0ef995:   rorx   $0xe,%r9,%r14
   0.16%    ││ │    0x00007f1bbc0ef99b:   and    %r9,%r15
   0.22%    ││ │    0x00007f1bbc0ef99e:   add    %rax,%rdx
   0.12%    ││ │    0x00007f1bbc0ef9a1:   and    %rcx,%rdi
   0.03%    ││ │    0x00007f1bbc0ef9a4:   xor    %r14,%r13
   0.16%    ││ │    0x00007f1bbc0ef9a7:   rorx   $0x27,%rbx,%r14
   0.19%    ││ │    0x00007f1bbc0ef9ad:   xor    %r12,%r14
   0.09%    ││ │    0x00007f1bbc0ef9b0:   rorx   $0x1c,%rbx,%r12
   0.03%    ││ │    0x00007f1bbc0ef9b6:   xor    %r11,%r15
   0.15%    ││ │    0x00007f1bbc0ef9b9:   xor    %r12,%r14
   0.22%    ││ │    0x00007f1bbc0ef9bc:   mov    %rbx,%r12
   0.13%    ││ │    0x00007f1bbc0ef9bf:   and    %r8,%r12
   0.03%    ││ │    0x00007f1bbc0ef9c2:   add    %r13,%r15
   0.14%    ││ │    0x00007f1bbc0ef9c5:   or     %r12,%rdi
   0.21%    ││ │    0x00007f1bbc0ef9c8:   add    %r14,%rax
   0.09%    ││ │    0x00007f1bbc0ef9cb:   add    %r15,%rdx
   0.04%    ││ │    0x00007f1bbc0ef9ce:   add    %r15,%rax
   0.16%    ││ │    0x00007f1bbc0ef9d1:   add    %rdi,%rax
   0.22%    ││ │    0x00007f1bbc0ef9d4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.11%    ││ │    0x00007f1bbc0ef9d9:   vmovdqu %ymm0,(%rsp)
   0.04%    ││ │    0x00007f1bbc0ef9de:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.14%    ││ │    0x00007f1bbc0ef9e4:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.21%    ││ │    0x00007f1bbc0ef9ea:   vpaddq %ymm6,%ymm0,%ymm0
   0.23%    ││ │    0x00007f1bbc0ef9ee:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.03%    ││ │    0x00007f1bbc0ef9f4:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.14%    ││ │    0x00007f1bbc0ef9fa:   vpsrlq $0x1,%ymm1,%ymm2
   0.24%    ││ │    0x00007f1bbc0ef9ff:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f1bbc0efa04:   vpor   %ymm2,%ymm3,%ymm3
   0.04%    ││ │    0x00007f1bbc0efa08:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%    ││ │    0x00007f1bbc0efa0d:   mov    %rax,%rdi
   0.18%    ││ │    0x00007f1bbc0efa10:   rorx   $0x29,%rdx,%r13
   0.17%    ││ │    0x00007f1bbc0efa16:   rorx   $0x12,%rdx,%r14
   0.05%    ││ │    0x00007f1bbc0efa1c:   add    (%rsp),%r11
   0.14%    ││ │    0x00007f1bbc0efa20:   or     %rcx,%rdi
   0.17%    ││ │    0x00007f1bbc0efa23:   mov    %r9,%r15
   0.16%    ││ │    0x00007f1bbc0efa26:   xor    %r10,%r15
   0.04%    ││ │    0x00007f1bbc0efa29:   rorx   $0x22,%rax,%r12
   0.12%    ││ │    0x00007f1bbc0efa2f:   xor    %r14,%r13
   0.19%    ││ │    0x00007f1bbc0efa32:   rorx   $0xe,%rdx,%r14
   0.18%    ││ │    0x00007f1bbc0efa38:   and    %rdx,%r15
   0.06%    ││ │    0x00007f1bbc0efa3b:   add    %r11,%r8
   0.13%    ││ │    0x00007f1bbc0efa3e:   and    %rbx,%rdi
   0.20%    ││ │    0x00007f1bbc0efa41:   xor    %r14,%r13
   0.15%    ││ │    0x00007f1bbc0efa44:   rorx   $0x27,%rax,%r14
   0.06%    ││ │    0x00007f1bbc0efa4a:   xor    %r12,%r14
   0.14%    ││ │    0x00007f1bbc0efa4d:   rorx   $0x1c,%rax,%r12
   0.22%    ││ │    0x00007f1bbc0efa53:   xor    %r10,%r15
   0.13%    ││ │    0x00007f1bbc0efa56:   xor    %r12,%r14
   0.04%    ││ │    0x00007f1bbc0efa59:   mov    %rax,%r12
   0.11%    ││ │    0x00007f1bbc0efa5c:   and    %rcx,%r12
   0.20%    ││ │    0x00007f1bbc0efa5f:   add    %r13,%r15
   0.12%    ││ │    0x00007f1bbc0efa62:   or     %r12,%rdi
   0.03%    ││ │    0x00007f1bbc0efa65:   add    %r14,%r11
   0.16%    ││ │    0x00007f1bbc0efa68:   add    %r15,%r8
   0.17%    ││ │    0x00007f1bbc0efa6b:   add    %r15,%r11
   0.17%    ││ │    0x00007f1bbc0efa6e:   add    %rdi,%r11
   0.04%    ││ │    0x00007f1bbc0efa71:   vpsrlq $0x8,%ymm1,%ymm2
   0.14%    ││ │    0x00007f1bbc0efa76:   vpsllq $0x38,%ymm1,%ymm1
   0.17%    ││ │    0x00007f1bbc0efa7b:   vpor   %ymm2,%ymm1,%ymm1
   0.13%    ││ │    0x00007f1bbc0efa7f:   vpxor  %ymm8,%ymm3,%ymm3
   0.05%    ││ │    0x00007f1bbc0efa84:   vpxor  %ymm1,%ymm3,%ymm1
   0.14%    ││ │    0x00007f1bbc0efa88:   vpaddq %ymm1,%ymm0,%ymm0
   0.19%    ││ │    0x00007f1bbc0efa8c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.14%    ││ │    0x00007f1bbc0efa92:   vpand  %ymm10,%ymm0,%ymm0
   0.05%    ││ │    0x00007f1bbc0efa97:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.14%    ││ │    0x00007f1bbc0efa9d:   vpsrlq $0x6,%ymm2,%ymm8
   0.20%    ││ │    0x00007f1bbc0efaa2:   mov    %r11,%rdi
   0.15%    ││ │    0x00007f1bbc0efaa5:   rorx   $0x29,%r8,%r13
   0.04%    ││ │    0x00007f1bbc0efaab:   rorx   $0x12,%r8,%r14
   0.12%    ││ │    0x00007f1bbc0efab1:   add    0x8(%rsp),%r10
   0.14%    ││ │    0x00007f1bbc0efab6:   or     %rbx,%rdi
   0.15%    ││ │    0x00007f1bbc0efab9:   mov    %rdx,%r15
   0.06%    ││ │    0x00007f1bbc0efabc:   xor    %r9,%r15
   0.13%    ││ │    0x00007f1bbc0efabf:   rorx   $0x22,%r11,%r12
   0.20%    ││ │    0x00007f1bbc0efac5:   xor    %r14,%r13
   0.17%    ││ │    0x00007f1bbc0efac8:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007f1bbc0eface:   and    %r8,%r15
   0.15%    ││ │    0x00007f1bbc0efad1:   add    %r10,%rcx
   0.17%    ││ │    0x00007f1bbc0efad4:   and    %rax,%rdi
   0.14%    ││ │    0x00007f1bbc0efad7:   xor    %r14,%r13
   0.05%    ││ │    0x00007f1bbc0efada:   rorx   $0x27,%r11,%r14
   0.10%    ││ │    0x00007f1bbc0efae0:   xor    %r12,%r14
   0.18%    ││ │    0x00007f1bbc0efae3:   rorx   $0x1c,%r11,%r12
   0.15%    ││ │    0x00007f1bbc0efae9:   xor    %r9,%r15
   0.04%    ││ │    0x00007f1bbc0efaec:   xor    %r12,%r14
   0.14%    ││ │    0x00007f1bbc0efaef:   mov    %r11,%r12
   0.17%    ││ │    0x00007f1bbc0efaf2:   and    %rbx,%r12
   0.15%    ││ │    0x00007f1bbc0efaf5:   add    %r13,%r15
   0.05%    ││ │    0x00007f1bbc0efaf8:   or     %r12,%rdi
   0.13%    ││ │    0x00007f1bbc0efafb:   add    %r14,%r10
   0.18%    ││ │    0x00007f1bbc0efafe:   add    %r15,%rcx
   0.12%    ││ │    0x00007f1bbc0efb01:   add    %r15,%r10
   0.04%    ││ │    0x00007f1bbc0efb04:   add    %rdi,%r10
   0.11%    ││ │    0x00007f1bbc0efb07:   vpsrlq $0x13,%ymm2,%ymm3
   0.19%    ││ │    0x00007f1bbc0efb0c:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%    ││ │    0x00007f1bbc0efb11:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f1bbc0efb15:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%    ││ │    0x00007f1bbc0efb19:   vpsrlq $0x3d,%ymm2,%ymm3
   0.18%    ││ │    0x00007f1bbc0efb1e:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f1bbc0efb23:   vpor   %ymm1,%ymm3,%ymm3
   0.05%    ││ │    0x00007f1bbc0efb27:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f1bbc0efb2b:   vpaddq %ymm8,%ymm6,%ymm6
   0.18%    ││ │    0x00007f1bbc0efb30:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%    ││ │    0x00007f1bbc0efb35:   mov    %r10,%rdi
   0.05%    ││ │    0x00007f1bbc0efb38:   rorx   $0x29,%rcx,%r13
   0.12%    ││ │    0x00007f1bbc0efb3e:   rorx   $0x12,%rcx,%r14
   0.17%    ││ │    0x00007f1bbc0efb44:   add    0x10(%rsp),%r9
   0.16%    ││ │    0x00007f1bbc0efb49:   or     %rax,%rdi
   0.07%    ││ │    0x00007f1bbc0efb4c:   mov    %r8,%r15
   0.14%    ││ │    0x00007f1bbc0efb4f:   xor    %rdx,%r15
   0.19%    ││ │    0x00007f1bbc0efb52:   rorx   $0x22,%r10,%r12
   0.20%    ││ │    0x00007f1bbc0efb58:   xor    %r14,%r13
   0.05%    ││ │    0x00007f1bbc0efb5b:   rorx   $0xe,%rcx,%r14
   0.12%    ││ │    0x00007f1bbc0efb61:   and    %rcx,%r15
   0.15%    ││ │    0x00007f1bbc0efb64:   add    %r9,%rbx
   0.16%    ││ │    0x00007f1bbc0efb67:   and    %r11,%rdi
   0.06%    ││ │    0x00007f1bbc0efb6a:   xor    %r14,%r13
   0.13%    ││ │    0x00007f1bbc0efb6d:   rorx   $0x27,%r10,%r14
   0.18%    ││ │    0x00007f1bbc0efb73:   xor    %r12,%r14
   0.18%    ││ │    0x00007f1bbc0efb76:   rorx   $0x1c,%r10,%r12
   0.06%    ││ │    0x00007f1bbc0efb7c:   xor    %rdx,%r15
   0.13%    ││ │    0x00007f1bbc0efb7f:   xor    %r12,%r14
   0.15%    ││ │    0x00007f1bbc0efb82:   mov    %r10,%r12
   0.17%    ││ │    0x00007f1bbc0efb85:   and    %rax,%r12
   0.05%    ││ │    0x00007f1bbc0efb88:   add    %r13,%r15
   0.11%    ││ │    0x00007f1bbc0efb8b:   or     %r12,%rdi
   0.15%    ││ │    0x00007f1bbc0efb8e:   add    %r14,%r9
   0.17%    ││ │    0x00007f1bbc0efb91:   add    %r15,%rbx
   0.07%    ││ │    0x00007f1bbc0efb94:   add    %r15,%r9
   0.15%    ││ │    0x00007f1bbc0efb97:   add    %rdi,%r9
   0.17%    ││ │    0x00007f1bbc0efb9a:   vpsrlq $0x13,%ymm6,%ymm3
   0.19%    ││ │    0x00007f1bbc0efb9f:   vpsllq $0x2d,%ymm6,%ymm1
   0.05%    ││ │    0x00007f1bbc0efba4:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f1bbc0efba8:   vpxor  %ymm3,%ymm8,%ymm8
   0.17%    ││ │    0x00007f1bbc0efbac:   vpsrlq $0x3d,%ymm6,%ymm3
   0.18%    ││ │    0x00007f1bbc0efbb1:   vpsllq $0x3,%ymm6,%ymm1
   0.03%    ││ │    0x00007f1bbc0efbb6:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f1bbc0efbba:   vpxor  %ymm3,%ymm8,%ymm8
   0.18%    ││ │    0x00007f1bbc0efbbe:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%    ││ │    0x00007f1bbc0efbc3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.15%    ││ │    0x00007f1bbc0efbc9:   mov    %r9,%rdi
   0.11%    ││ │    0x00007f1bbc0efbcc:   rorx   $0x29,%rbx,%r13
   0.13%    ││ │    0x00007f1bbc0efbd2:   rorx   $0x12,%rbx,%r14
   0.15%    ││ │    0x00007f1bbc0efbd8:   add    0x18(%rsp),%rdx
   0.11%    ││ │    0x00007f1bbc0efbdd:   or     %r11,%rdi
   0.09%    ││ │    0x00007f1bbc0efbe0:   mov    %rcx,%r15
   0.14%    ││ │    0x00007f1bbc0efbe3:   xor    %r8,%r15
   0.15%    ││ │    0x00007f1bbc0efbe6:   rorx   $0x22,%r9,%r12
   0.11%    ││ │    0x00007f1bbc0efbec:   xor    %r14,%r13
   0.09%    ││ │    0x00007f1bbc0efbef:   rorx   $0xe,%rbx,%r14
   0.14%    ││ │    0x00007f1bbc0efbf5:   and    %rbx,%r15
   0.13%    ││ │    0x00007f1bbc0efbf8:   add    %rdx,%rax
   0.14%    ││ │    0x00007f1bbc0efbfb:   and    %r10,%rdi
   0.10%    ││ │    0x00007f1bbc0efbfe:   xor    %r14,%r13
   0.15%    ││ │    0x00007f1bbc0efc01:   rorx   $0x27,%r9,%r14
   0.12%    ││ │    0x00007f1bbc0efc07:   xor    %r12,%r14
   0.14%    ││ │    0x00007f1bbc0efc0a:   rorx   $0x1c,%r9,%r12
   0.17%    ││ │    0x00007f1bbc0efc10:   xor    %r8,%r15
   0.14%    ││ │    0x00007f1bbc0efc13:   xor    %r12,%r14
   0.13%    ││ │    0x00007f1bbc0efc16:   mov    %r9,%r12
   0.11%    ││ │    0x00007f1bbc0efc19:   and    %r11,%r12
   0.13%    ││ │    0x00007f1bbc0efc1c:   add    %r13,%r15
   0.12%    ││ │    0x00007f1bbc0efc1f:   or     %r12,%rdi
   0.13%    ││ │    0x00007f1bbc0efc22:   add    %r14,%rdx
   0.11%    ││ │    0x00007f1bbc0efc25:   add    %r15,%rax
   0.11%    ││ │    0x00007f1bbc0efc28:   add    %r15,%rdx
   0.12%    ││ │    0x00007f1bbc0efc2b:   add    %rdi,%rdx
   0.15%    ││ │    0x00007f1bbc0efc2e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.12%    ││ │    0x00007f1bbc0efc33:   vmovdqu %ymm0,(%rsp)
   0.15%    ││ │    0x00007f1bbc0efc38:   add    $0x80,%rbp
   0.14%    ││ │    0x00007f1bbc0efc3f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.15%    ││ │    0x00007f1bbc0efc45:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.14%    ││ │    0x00007f1bbc0efc4b:   vpaddq %ymm7,%ymm0,%ymm0
   0.22%    ││ │    0x00007f1bbc0efc4f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.13%    ││ │    0x00007f1bbc0efc55:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.17%    ││ │    0x00007f1bbc0efc5b:   vpsrlq $0x1,%ymm1,%ymm2
   0.09%    ││ │    0x00007f1bbc0efc60:   vpsllq $0x3f,%ymm1,%ymm3
   0.23%    ││ │    0x00007f1bbc0efc65:   vpor   %ymm2,%ymm3,%ymm3
   0.15%    ││ │    0x00007f1bbc0efc69:   vpsrlq $0x7,%ymm1,%ymm8
   0.09%    ││ │    0x00007f1bbc0efc6e:   mov    %rdx,%rdi
   0.10%    ││ │    0x00007f1bbc0efc71:   rorx   $0x29,%rax,%r13
   0.14%    ││ │    0x00007f1bbc0efc77:   rorx   $0x12,%rax,%r14
   0.15%    ││ │    0x00007f1bbc0efc7d:   add    (%rsp),%r8
   0.09%    ││ │    0x00007f1bbc0efc81:   or     %r10,%rdi
   0.09%    ││ │    0x00007f1bbc0efc84:   mov    %rbx,%r15
   0.14%    ││ │    0x00007f1bbc0efc87:   xor    %rcx,%r15
   0.12%    ││ │    0x00007f1bbc0efc8a:   rorx   $0x22,%rdx,%r12
   0.11%    ││ │    0x00007f1bbc0efc90:   xor    %r14,%r13
   0.11%    ││ │    0x00007f1bbc0efc93:   rorx   $0xe,%rax,%r14
   0.17%    ││ │    0x00007f1bbc0efc99:   and    %rax,%r15
   0.13%    ││ │    0x00007f1bbc0efc9c:   add    %r8,%r11
   0.13%    ││ │    0x00007f1bbc0efc9f:   and    %r9,%rdi
   0.09%    ││ │    0x00007f1bbc0efca2:   xor    %r14,%r13
   0.13%    ││ │    0x00007f1bbc0efca5:   rorx   $0x27,%rdx,%r14
   0.16%    ││ │    0x00007f1bbc0efcab:   xor    %r12,%r14
   0.12%    ││ │    0x00007f1bbc0efcae:   rorx   $0x1c,%rdx,%r12
   0.13%    ││ │    0x00007f1bbc0efcb4:   xor    %rcx,%r15
   0.14%    ││ │    0x00007f1bbc0efcb7:   xor    %r12,%r14
   0.12%    ││ │    0x00007f1bbc0efcba:   mov    %rdx,%r12
   0.12%    ││ │    0x00007f1bbc0efcbd:   and    %r10,%r12
   0.11%    ││ │    0x00007f1bbc0efcc0:   add    %r13,%r15
   0.17%    ││ │    0x00007f1bbc0efcc3:   or     %r12,%rdi
   0.13%    ││ │    0x00007f1bbc0efcc6:   add    %r14,%r8
   0.14%    ││ │    0x00007f1bbc0efcc9:   add    %r15,%r11
   0.10%    ││ │    0x00007f1bbc0efccc:   add    %r15,%r8
   0.16%    ││ │    0x00007f1bbc0efccf:   add    %rdi,%r8
   0.12%    ││ │    0x00007f1bbc0efcd2:   vpsrlq $0x8,%ymm1,%ymm2
   0.11%    ││ │    0x00007f1bbc0efcd7:   vpsllq $0x38,%ymm1,%ymm1
   0.10%    ││ │    0x00007f1bbc0efcdc:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007f1bbc0efce0:   vpxor  %ymm8,%ymm3,%ymm3
   0.13%    ││ │    0x00007f1bbc0efce5:   vpxor  %ymm1,%ymm3,%ymm1
   0.12%    ││ │    0x00007f1bbc0efce9:   vpaddq %ymm1,%ymm0,%ymm0
   0.12%    ││ │    0x00007f1bbc0efced:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.18%    ││ │    0x00007f1bbc0efcf3:   vpand  %ymm10,%ymm0,%ymm0
   0.15%    ││ │    0x00007f1bbc0efcf8:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.10%    ││ │    0x00007f1bbc0efcfe:   vpsrlq $0x6,%ymm2,%ymm8
   0.11%    ││ │    0x00007f1bbc0efd03:   mov    %r8,%rdi
   0.14%    ││ │    0x00007f1bbc0efd06:   rorx   $0x29,%r11,%r13
   0.14%    ││ │    0x00007f1bbc0efd0c:   rorx   $0x12,%r11,%r14
   0.10%    ││ │    0x00007f1bbc0efd12:   add    0x8(%rsp),%rcx
   0.09%    ││ │    0x00007f1bbc0efd17:   or     %r9,%rdi
   0.18%    ││ │    0x00007f1bbc0efd1a:   mov    %rax,%r15
   0.16%    ││ │    0x00007f1bbc0efd1d:   xor    %rbx,%r15
   0.15%    ││ │    0x00007f1bbc0efd20:   rorx   $0x22,%r8,%r12
   0.08%    ││ │    0x00007f1bbc0efd26:   xor    %r14,%r13
   0.17%    ││ │    0x00007f1bbc0efd29:   rorx   $0xe,%r11,%r14
   0.12%    ││ │    0x00007f1bbc0efd2f:   and    %r11,%r15
   0.11%    ││ │    0x00007f1bbc0efd32:   add    %rcx,%r10
   0.09%    ││ │    0x00007f1bbc0efd35:   and    %rdx,%rdi
   0.15%    ││ │    0x00007f1bbc0efd38:   xor    %r14,%r13
   0.17%    ││ │    0x00007f1bbc0efd3b:   rorx   $0x27,%r8,%r14
   0.11%    ││ │    0x00007f1bbc0efd41:   xor    %r12,%r14
   0.10%    ││ │    0x00007f1bbc0efd44:   rorx   $0x1c,%r8,%r12
   0.15%    ││ │    0x00007f1bbc0efd4a:   xor    %rbx,%r15
   0.15%    ││ │    0x00007f1bbc0efd4d:   xor    %r12,%r14
   0.11%    ││ │    0x00007f1bbc0efd50:   mov    %r8,%r12
   0.09%    ││ │    0x00007f1bbc0efd53:   and    %r9,%r12
   0.12%    ││ │    0x00007f1bbc0efd56:   add    %r13,%r15
   0.14%    ││ │    0x00007f1bbc0efd59:   or     %r12,%rdi
   0.08%    ││ │    0x00007f1bbc0efd5c:   add    %r14,%rcx
   0.09%    ││ │    0x00007f1bbc0efd5f:   add    %r15,%r10
   0.15%    ││ │    0x00007f1bbc0efd62:   add    %r15,%rcx
   0.13%    ││ │    0x00007f1bbc0efd65:   add    %rdi,%rcx
   0.13%    ││ │    0x00007f1bbc0efd68:   vpsrlq $0x13,%ymm2,%ymm3
   0.09%    ││ │    0x00007f1bbc0efd6d:   vpsllq $0x2d,%ymm2,%ymm1
   0.19%    ││ │    0x00007f1bbc0efd72:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f1bbc0efd76:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f1bbc0efd7a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.10%    ││ │    0x00007f1bbc0efd7f:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007f1bbc0efd84:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f1bbc0efd88:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f1bbc0efd8c:   vpaddq %ymm8,%ymm7,%ymm7
   0.11%    ││ │    0x00007f1bbc0efd91:   vpsrlq $0x6,%ymm7,%ymm8
   0.17%    ││ │    0x00007f1bbc0efd96:   mov    %rcx,%rdi
   0.15%    ││ │    0x00007f1bbc0efd99:   rorx   $0x29,%r10,%r13
   0.09%    ││ │    0x00007f1bbc0efd9f:   rorx   $0x12,%r10,%r14
   0.06%    ││ │    0x00007f1bbc0efda5:   add    0x10(%rsp),%rbx
   0.20%    ││ │    0x00007f1bbc0efdaa:   or     %rdx,%rdi
   0.15%    ││ │    0x00007f1bbc0efdad:   mov    %r11,%r15
   0.11%    ││ │    0x00007f1bbc0efdb0:   xor    %rax,%r15
   0.10%    ││ │    0x00007f1bbc0efdb3:   rorx   $0x22,%rcx,%r12
   0.17%    ││ │    0x00007f1bbc0efdb9:   xor    %r14,%r13
   0.12%    ││ │    0x00007f1bbc0efdbc:   rorx   $0xe,%r10,%r14
   0.10%    ││ │    0x00007f1bbc0efdc2:   and    %r10,%r15
   0.09%    ││ │    0x00007f1bbc0efdc5:   add    %rbx,%r9
   0.19%    ││ │    0x00007f1bbc0efdc8:   and    %r8,%rdi
   0.13%    ││ │    0x00007f1bbc0efdcb:   xor    %r14,%r13
   0.09%    ││ │    0x00007f1bbc0efdce:   rorx   $0x27,%rcx,%r14
   0.09%    ││ │    0x00007f1bbc0efdd4:   xor    %r12,%r14
   0.17%    ││ │    0x00007f1bbc0efdd7:   rorx   $0x1c,%rcx,%r12
   0.14%    ││ │    0x00007f1bbc0efddd:   xor    %rax,%r15
   0.09%    ││ │    0x00007f1bbc0efde0:   xor    %r12,%r14
   0.08%    ││ │    0x00007f1bbc0efde3:   mov    %rcx,%r12
   0.16%    ││ │    0x00007f1bbc0efde6:   and    %rdx,%r12
   0.12%    ││ │    0x00007f1bbc0efde9:   add    %r13,%r15
   0.08%    ││ │    0x00007f1bbc0efdec:   or     %r12,%rdi
   0.10%    ││ │    0x00007f1bbc0efdef:   add    %r14,%rbx
   0.17%    ││ │    0x00007f1bbc0efdf2:   add    %r15,%r9
   0.14%    ││ │    0x00007f1bbc0efdf5:   add    %r15,%rbx
   0.12%    ││ │    0x00007f1bbc0efdf8:   add    %rdi,%rbx
   0.08%    ││ │    0x00007f1bbc0efdfb:   vpsrlq $0x13,%ymm7,%ymm3
   0.16%    ││ │    0x00007f1bbc0efe00:   vpsllq $0x2d,%ymm7,%ymm1
   0.14%    ││ │    0x00007f1bbc0efe05:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f1bbc0efe09:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f1bbc0efe0d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.16%    ││ │    0x00007f1bbc0efe12:   vpsllq $0x3,%ymm7,%ymm1
   0.13%    ││ │    0x00007f1bbc0efe17:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f1bbc0efe1b:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f1bbc0efe1f:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f1bbc0efe24:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.22%    ││ │    0x00007f1bbc0efe2a:   mov    %rbx,%rdi
   0.14%    ││ │    0x00007f1bbc0efe2d:   rorx   $0x29,%r9,%r13
   0.06%    ││ │    0x00007f1bbc0efe33:   rorx   $0x12,%r9,%r14
   0.16%    ││ │    0x00007f1bbc0efe39:   add    0x18(%rsp),%rax
   0.19%    ││ │    0x00007f1bbc0efe3e:   or     %r8,%rdi
   0.10%    ││ │    0x00007f1bbc0efe41:   mov    %r10,%r15
   0.07%    ││ │    0x00007f1bbc0efe44:   xor    %r11,%r15
   0.18%    ││ │    0x00007f1bbc0efe47:   rorx   $0x22,%rbx,%r12
   0.20%    ││ │    0x00007f1bbc0efe4d:   xor    %r14,%r13
   0.10%    ││ │    0x00007f1bbc0efe50:   rorx   $0xe,%r9,%r14
   0.06%    ││ │    0x00007f1bbc0efe56:   and    %r9,%r15
   0.16%    ││ │    0x00007f1bbc0efe59:   add    %rax,%rdx
   0.18%    ││ │    0x00007f1bbc0efe5c:   and    %rcx,%rdi
   0.09%    ││ │    0x00007f1bbc0efe5f:   xor    %r14,%r13
   0.06%    ││ │    0x00007f1bbc0efe62:   rorx   $0x27,%rbx,%r14
   0.18%    ││ │    0x00007f1bbc0efe68:   xor    %r12,%r14
   0.20%    ││ │    0x00007f1bbc0efe6b:   rorx   $0x1c,%rbx,%r12
   0.11%    ││ │    0x00007f1bbc0efe71:   xor    %r11,%r15
   0.06%    ││ │    0x00007f1bbc0efe74:   xor    %r12,%r14
   0.17%    ││ │    0x00007f1bbc0efe77:   mov    %rbx,%r12
   0.22%    ││ │    0x00007f1bbc0efe7a:   and    %r8,%r12
   0.09%    ││ │    0x00007f1bbc0efe7d:   add    %r13,%r15
   0.08%    ││ │    0x00007f1bbc0efe80:   or     %r12,%rdi
   0.15%    ││ │    0x00007f1bbc0efe83:   add    %r14,%rax
   0.18%    ││ │    0x00007f1bbc0efe86:   add    %r15,%rdx
   0.10%    ││ │    0x00007f1bbc0efe89:   add    %r15,%rax
   0.06%    ││ │    0x00007f1bbc0efe8c:   add    %rdi,%rax
   0.15%    ││ │    0x00007f1bbc0efe8f:   subq   $0x1,0x20(%rsp)
   0.29%    │╰ │    0x00007f1bbc0efe95:   jne    0x00007f1bbc0ef520
   0.02%    │  │    0x00007f1bbc0efe9b:   movq   $0x2,0x20(%rsp)
   0.05%    │ ↗│    0x00007f1bbc0efea4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.09%    │ ││    0x00007f1bbc0efea9:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f1bbc0efeae:   mov    %r9,%r15
   0.08%    │ ││    0x00007f1bbc0efeb1:   rorx   $0x29,%rdx,%r13
   0.03%    │ ││    0x00007f1bbc0efeb7:   rorx   $0x12,%rdx,%r14
   0.07%    │ ││    0x00007f1bbc0efebd:   xor    %r10,%r15
   0.06%    │ ││    0x00007f1bbc0efec0:   xor    %r14,%r13
   0.08%    │ ││    0x00007f1bbc0efec3:   rorx   $0xe,%rdx,%r14
   0.06%    │ ││    0x00007f1bbc0efec9:   and    %rdx,%r15
   0.05%    │ ││    0x00007f1bbc0efecc:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0efecf:   rorx   $0x22,%rax,%r12
   0.06%    │ ││    0x00007f1bbc0efed5:   xor    %r10,%r15
   0.05%    │ ││    0x00007f1bbc0efed8:   rorx   $0x27,%rax,%r14
   0.05%    │ ││    0x00007f1bbc0efede:   mov    %rax,%rdi
   0.06%    │ ││    0x00007f1bbc0efee1:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0efee4:   rorx   $0x1c,%rax,%r12
   0.06%    │ ││    0x00007f1bbc0efeea:   add    (%rsp),%r11
   0.08%    │ ││    0x00007f1bbc0efeee:   or     %rcx,%rdi
   0.05%    │ ││    0x00007f1bbc0efef1:   xor    %r12,%r14
   0.08%    │ ││    0x00007f1bbc0efef4:   mov    %rax,%r12
   0.05%    │ ││    0x00007f1bbc0efef7:   and    %rbx,%rdi
   0.06%    │ ││    0x00007f1bbc0efefa:   and    %rcx,%r12
   0.06%    │ ││    0x00007f1bbc0efefd:   add    %r13,%r15
   0.08%    │ ││    0x00007f1bbc0eff00:   add    %r11,%r8
   0.07%    │ ││    0x00007f1bbc0eff03:   or     %r12,%rdi
   0.05%    │ ││    0x00007f1bbc0eff06:   add    %r14,%r11
   0.06%    │ ││    0x00007f1bbc0eff09:   add    %r15,%r8
   0.06%    │ ││    0x00007f1bbc0eff0c:   add    %r15,%r11
   0.04%    │ ││    0x00007f1bbc0eff0f:   mov    %rdx,%r15
   0.07%    │ ││    0x00007f1bbc0eff12:   rorx   $0x29,%r8,%r13
   0.06%    │ ││    0x00007f1bbc0eff18:   rorx   $0x12,%r8,%r14
   0.07%    │ ││    0x00007f1bbc0eff1e:   xor    %r9,%r15
   0.05%    │ ││    0x00007f1bbc0eff21:   xor    %r14,%r13
   0.06%    │ ││    0x00007f1bbc0eff24:   rorx   $0xe,%r8,%r14
   0.07%    │ ││    0x00007f1bbc0eff2a:   and    %r8,%r15
   0.06%    │ ││    0x00007f1bbc0eff2d:   add    %rdi,%r11
   0.05%    │ ││    0x00007f1bbc0eff30:   xor    %r14,%r13
   0.06%    │ ││    0x00007f1bbc0eff33:   rorx   $0x22,%r11,%r12
   0.07%    │ ││    0x00007f1bbc0eff39:   xor    %r9,%r15
   0.09%    │ ││    0x00007f1bbc0eff3c:   rorx   $0x27,%r11,%r14
   0.07%    │ ││    0x00007f1bbc0eff42:   mov    %r11,%rdi
   0.08%    │ ││    0x00007f1bbc0eff45:   xor    %r12,%r14
   0.06%    │ ││    0x00007f1bbc0eff48:   rorx   $0x1c,%r11,%r12
   0.06%    │ ││    0x00007f1bbc0eff4e:   add    0x8(%rsp),%r10
   0.05%    │ ││    0x00007f1bbc0eff53:   or     %rbx,%rdi
   0.06%    │ ││    0x00007f1bbc0eff56:   xor    %r12,%r14
   0.08%    │ ││    0x00007f1bbc0eff59:   mov    %r11,%r12
   0.07%    │ ││    0x00007f1bbc0eff5c:   and    %rax,%rdi
   0.08%    │ ││    0x00007f1bbc0eff5f:   and    %rbx,%r12
   0.07%    │ ││    0x00007f1bbc0eff62:   add    %r13,%r15
   0.08%    │ ││    0x00007f1bbc0eff65:   add    %r10,%rcx
   0.08%    │ ││    0x00007f1bbc0eff68:   or     %r12,%rdi
   0.06%    │ ││    0x00007f1bbc0eff6b:   add    %r14,%r10
   0.07%    │ ││    0x00007f1bbc0eff6e:   add    %r15,%rcx
   0.06%    │ ││    0x00007f1bbc0eff71:   add    %r15,%r10
   0.05%    │ ││    0x00007f1bbc0eff74:   mov    %r8,%r15
   0.05%    │ ││    0x00007f1bbc0eff77:   rorx   $0x29,%rcx,%r13
   0.07%    │ ││    0x00007f1bbc0eff7d:   rorx   $0x12,%rcx,%r14
   0.06%    │ ││    0x00007f1bbc0eff83:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f1bbc0eff86:   xor    %r14,%r13
   0.05%    │ ││    0x00007f1bbc0eff89:   rorx   $0xe,%rcx,%r14
   0.09%    │ ││    0x00007f1bbc0eff8f:   and    %rcx,%r15
   0.07%    │ ││    0x00007f1bbc0eff92:   add    %rdi,%r10
   0.05%    │ ││    0x00007f1bbc0eff95:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0eff98:   rorx   $0x22,%r10,%r12
   0.05%    │ ││    0x00007f1bbc0eff9e:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f1bbc0effa1:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007f1bbc0effa7:   mov    %r10,%rdi
   0.07%    │ ││    0x00007f1bbc0effaa:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0effad:   rorx   $0x1c,%r10,%r12
   0.08%    │ ││    0x00007f1bbc0effb3:   add    0x10(%rsp),%r9
   0.06%    │ ││    0x00007f1bbc0effb8:   or     %rax,%rdi
   0.06%    │ ││    0x00007f1bbc0effbb:   xor    %r12,%r14
   0.06%    │ ││    0x00007f1bbc0effbe:   mov    %r10,%r12
   0.05%    │ ││    0x00007f1bbc0effc1:   and    %r11,%rdi
   0.05%    │ ││    0x00007f1bbc0effc4:   and    %rax,%r12
   0.06%    │ ││    0x00007f1bbc0effc7:   add    %r13,%r15
   0.07%    │ ││    0x00007f1bbc0effca:   add    %r9,%rbx
   0.05%    │ ││    0x00007f1bbc0effcd:   or     %r12,%rdi
   0.07%    │ ││    0x00007f1bbc0effd0:   add    %r14,%r9
   0.06%    │ ││    0x00007f1bbc0effd3:   add    %r15,%rbx
   0.09%    │ ││    0x00007f1bbc0effd6:   add    %r15,%r9
   0.08%    │ ││    0x00007f1bbc0effd9:   mov    %rcx,%r15
   0.06%    │ ││    0x00007f1bbc0effdc:   rorx   $0x29,%rbx,%r13
   0.05%    │ ││    0x00007f1bbc0effe2:   rorx   $0x12,%rbx,%r14
   0.07%    │ ││    0x00007f1bbc0effe8:   xor    %r8,%r15
   0.09%    │ ││    0x00007f1bbc0effeb:   xor    %r14,%r13
   0.08%    │ ││    0x00007f1bbc0effee:   rorx   $0xe,%rbx,%r14
   0.07%    │ ││    0x00007f1bbc0efff4:   and    %rbx,%r15
   0.10%    │ ││    0x00007f1bbc0efff7:   add    %rdi,%r9
   0.06%    │ ││    0x00007f1bbc0efffa:   xor    %r14,%r13
   0.08%    │ ││    0x00007f1bbc0efffd:   rorx   $0x22,%r9,%r12
   0.07%    │ ││    0x00007f1bbc0f0003:   xor    %r8,%r15
   0.10%    │ ││    0x00007f1bbc0f0006:   rorx   $0x27,%r9,%r14
   0.05%    │ ││    0x00007f1bbc0f000c:   mov    %r9,%rdi
   0.08%    │ ││    0x00007f1bbc0f000f:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0f0012:   rorx   $0x1c,%r9,%r12
   0.08%    │ ││    0x00007f1bbc0f0018:   add    0x18(%rsp),%rdx
   0.05%    │ ││    0x00007f1bbc0f001d:   or     %r11,%rdi
   0.07%    │ ││    0x00007f1bbc0f0020:   xor    %r12,%r14
   0.06%    │ ││    0x00007f1bbc0f0023:   mov    %r9,%r12
   0.08%    │ ││    0x00007f1bbc0f0026:   and    %r10,%rdi
   0.06%    │ ││    0x00007f1bbc0f0029:   and    %r11,%r12
   0.06%    │ ││    0x00007f1bbc0f002c:   add    %r13,%r15
   0.07%    │ ││    0x00007f1bbc0f002f:   add    %rdx,%rax
   0.08%    │ ││    0x00007f1bbc0f0032:   or     %r12,%rdi
   0.06%    │ ││    0x00007f1bbc0f0035:   add    %r14,%rdx
   0.07%    │ ││    0x00007f1bbc0f0038:   add    %r15,%rax
   0.06%    │ ││    0x00007f1bbc0f003b:   add    %r15,%rdx
   0.08%    │ ││    0x00007f1bbc0f003e:   add    %rdi,%rdx
   0.08%    │ ││    0x00007f1bbc0f0041:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.05%    │ ││    0x00007f1bbc0f0046:   vmovdqu %ymm0,(%rsp)
   0.04%    │ ││    0x00007f1bbc0f004b:   add    $0x40,%rbp
   0.07%    │ ││    0x00007f1bbc0f004f:   mov    %rbx,%r15
   0.08%    │ ││    0x00007f1bbc0f0052:   rorx   $0x29,%rax,%r13
   0.06%    │ ││    0x00007f1bbc0f0058:   rorx   $0x12,%rax,%r14
   0.04%    │ ││    0x00007f1bbc0f005e:   xor    %rcx,%r15
   0.09%    │ ││    0x00007f1bbc0f0061:   xor    %r14,%r13
   0.11%    │ ││    0x00007f1bbc0f0064:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007f1bbc0f006a:   and    %rax,%r15
   0.04%    │ ││    0x00007f1bbc0f006d:   xor    %r14,%r13
   0.08%    │ ││    0x00007f1bbc0f0070:   rorx   $0x22,%rdx,%r12
   0.08%    │ ││    0x00007f1bbc0f0076:   xor    %rcx,%r15
   0.08%    │ ││    0x00007f1bbc0f0079:   rorx   $0x27,%rdx,%r14
   0.06%    │ ││    0x00007f1bbc0f007f:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007f1bbc0f0082:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0f0085:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007f1bbc0f008b:   add    (%rsp),%r8
   0.05%    │ ││    0x00007f1bbc0f008f:   or     %r10,%rdi
   0.05%    │ ││    0x00007f1bbc0f0092:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0f0095:   mov    %rdx,%r12
   0.06%    │ ││    0x00007f1bbc0f0098:   and    %r9,%rdi
   0.07%    │ ││    0x00007f1bbc0f009b:   and    %r10,%r12
   0.08%    │ ││    0x00007f1bbc0f009e:   add    %r13,%r15
   0.08%    │ ││    0x00007f1bbc0f00a1:   add    %r8,%r11
   0.07%    │ ││    0x00007f1bbc0f00a4:   or     %r12,%rdi
   0.04%    │ ││    0x00007f1bbc0f00a7:   add    %r14,%r8
   0.06%    │ ││    0x00007f1bbc0f00aa:   add    %r15,%r11
   0.09%    │ ││    0x00007f1bbc0f00ad:   add    %r15,%r8
   0.07%    │ ││    0x00007f1bbc0f00b0:   mov    %rax,%r15
   0.06%    │ ││    0x00007f1bbc0f00b3:   rorx   $0x29,%r11,%r13
   0.08%    │ ││    0x00007f1bbc0f00b9:   rorx   $0x12,%r11,%r14
   0.10%    │ ││    0x00007f1bbc0f00bf:   xor    %rbx,%r15
   0.06%    │ ││    0x00007f1bbc0f00c2:   xor    %r14,%r13
   0.06%    │ ││    0x00007f1bbc0f00c5:   rorx   $0xe,%r11,%r14
   0.08%    │ ││    0x00007f1bbc0f00cb:   and    %r11,%r15
   0.09%    │ ││    0x00007f1bbc0f00ce:   add    %rdi,%r8
   0.07%    │ ││    0x00007f1bbc0f00d1:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0f00d4:   rorx   $0x22,%r8,%r12
   0.06%    │ ││    0x00007f1bbc0f00da:   xor    %rbx,%r15
   0.07%    │ ││    0x00007f1bbc0f00dd:   rorx   $0x27,%r8,%r14
   0.06%    │ ││    0x00007f1bbc0f00e3:   mov    %r8,%rdi
   0.05%    │ ││    0x00007f1bbc0f00e6:   xor    %r12,%r14
   0.08%    │ ││    0x00007f1bbc0f00e9:   rorx   $0x1c,%r8,%r12
   0.08%    │ ││    0x00007f1bbc0f00ef:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007f1bbc0f00f4:   or     %r9,%rdi
   0.05%    │ ││    0x00007f1bbc0f00f7:   xor    %r12,%r14
   0.09%    │ ││    0x00007f1bbc0f00fa:   mov    %r8,%r12
   0.08%    │ ││    0x00007f1bbc0f00fd:   and    %rdx,%rdi
   0.06%    │ ││    0x00007f1bbc0f0100:   and    %r9,%r12
   0.06%    │ ││    0x00007f1bbc0f0103:   add    %r13,%r15
   0.07%    │ ││    0x00007f1bbc0f0106:   add    %rcx,%r10
   0.08%    │ ││    0x00007f1bbc0f0109:   or     %r12,%rdi
   0.04%    │ ││    0x00007f1bbc0f010c:   add    %r14,%rcx
   0.06%    │ ││    0x00007f1bbc0f010f:   add    %r15,%r10
   0.10%    │ ││    0x00007f1bbc0f0112:   add    %r15,%rcx
   0.07%    │ ││    0x00007f1bbc0f0115:   mov    %r11,%r15
   0.04%    │ ││    0x00007f1bbc0f0118:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007f1bbc0f011e:   rorx   $0x12,%r10,%r14
   0.09%    │ ││    0x00007f1bbc0f0124:   xor    %rax,%r15
   0.10%    │ ││    0x00007f1bbc0f0127:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0f012a:   rorx   $0xe,%r10,%r14
   0.07%    │ ││    0x00007f1bbc0f0130:   and    %r10,%r15
   0.09%    │ ││    0x00007f1bbc0f0133:   add    %rdi,%rcx
   0.07%    │ ││    0x00007f1bbc0f0136:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0f0139:   rorx   $0x22,%rcx,%r12
   0.06%    │ ││    0x00007f1bbc0f013f:   xor    %rax,%r15
   0.08%    │ ││    0x00007f1bbc0f0142:   rorx   $0x27,%rcx,%r14
   0.08%    │ ││    0x00007f1bbc0f0148:   mov    %rcx,%rdi
   0.04%    │ ││    0x00007f1bbc0f014b:   xor    %r12,%r14
   0.05%    │ ││    0x00007f1bbc0f014e:   rorx   $0x1c,%rcx,%r12
   0.08%    │ ││    0x00007f1bbc0f0154:   add    0x10(%rsp),%rbx
   0.04%    │ ││    0x00007f1bbc0f0159:   or     %rdx,%rdi
   0.04%    │ ││    0x00007f1bbc0f015c:   xor    %r12,%r14
   0.07%    │ ││    0x00007f1bbc0f015f:   mov    %rcx,%r12
   0.09%    │ ││    0x00007f1bbc0f0162:   and    %r8,%rdi
   0.07%    │ ││    0x00007f1bbc0f0165:   and    %rdx,%r12
   0.06%    │ ││    0x00007f1bbc0f0168:   add    %r13,%r15
   0.07%    │ ││    0x00007f1bbc0f016b:   add    %rbx,%r9
   0.08%    │ ││    0x00007f1bbc0f016e:   or     %r12,%rdi
   0.07%    │ ││    0x00007f1bbc0f0171:   add    %r14,%rbx
   0.05%    │ ││    0x00007f1bbc0f0174:   add    %r15,%r9
   0.07%    │ ││    0x00007f1bbc0f0177:   add    %r15,%rbx
   0.07%    │ ││    0x00007f1bbc0f017a:   mov    %r10,%r15
   0.07%    │ ││    0x00007f1bbc0f017d:   rorx   $0x29,%r9,%r13
   0.07%    │ ││    0x00007f1bbc0f0183:   rorx   $0x12,%r9,%r14
   0.06%    │ ││    0x00007f1bbc0f0189:   xor    %r11,%r15
   0.08%    │ ││    0x00007f1bbc0f018c:   xor    %r14,%r13
   0.07%    │ ││    0x00007f1bbc0f018f:   rorx   $0xe,%r9,%r14
   0.08%    │ ││    0x00007f1bbc0f0195:   and    %r9,%r15
   0.09%    │ ││    0x00007f1bbc0f0198:   add    %rdi,%rbx
   0.10%    │ ││    0x00007f1bbc0f019b:   xor    %r14,%r13
   0.10%    │ ││    0x00007f1bbc0f019e:   rorx   $0x22,%rbx,%r12
   0.06%    │ ││    0x00007f1bbc0f01a4:   xor    %r11,%r15
   0.10%    │ ││    0x00007f1bbc0f01a7:   rorx   $0x27,%rbx,%r14
   0.06%    │ ││    0x00007f1bbc0f01ad:   mov    %rbx,%rdi
   0.06%    │ ││    0x00007f1bbc0f01b0:   xor    %r12,%r14
   0.08%    │ ││    0x00007f1bbc0f01b3:   rorx   $0x1c,%rbx,%r12
   0.04%    │ ││    0x00007f1bbc0f01b9:   add    0x18(%rsp),%rax
   0.05%    │ ││    0x00007f1bbc0f01be:   or     %r8,%rdi
   0.04%    │ ││    0x00007f1bbc0f01c1:   xor    %r12,%r14
   0.08%    │ ││    0x00007f1bbc0f01c4:   mov    %rbx,%r12
   0.07%    │ ││    0x00007f1bbc0f01c7:   and    %rcx,%rdi
   0.04%    │ ││    0x00007f1bbc0f01ca:   and    %r8,%r12
   0.06%    │ ││    0x00007f1bbc0f01cd:   add    %r13,%r15
   0.07%    │ ││    0x00007f1bbc0f01d0:   add    %rax,%rdx
   0.06%    │ ││    0x00007f1bbc0f01d3:   or     %r12,%rdi
   0.07%    │ ││    0x00007f1bbc0f01d6:   add    %r14,%rax
   0.09%    │ ││    0x00007f1bbc0f01d9:   add    %r15,%rdx
   0.10%    │ ││    0x00007f1bbc0f01dc:   add    %r15,%rax
   0.05%    │ ││    0x00007f1bbc0f01df:   add    %rdi,%rax
   0.11%    │ ││    0x00007f1bbc0f01e2:   vmovdqu %ymm6,%ymm4
   0.05%    │ ││    0x00007f1bbc0f01e6:   vmovdqu %ymm7,%ymm5
   0.03%    │ ││    0x00007f1bbc0f01ea:   subq   $0x1,0x20(%rsp)
   0.15%    │ ╰│    0x00007f1bbc0f01f0:   jne    0x00007f1bbc0efea4
   0.02%    │  │    0x00007f1bbc0f01f6:   add    (%rsi),%rax
   0.01%    │  │    0x00007f1bbc0f01f9:   mov    %rax,(%rsi)
   0.21%    │  │    0x00007f1bbc0f01fc:   add    0x8(%rsi),%rbx
            │  │    0x00007f1bbc0f0200:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007f1bbc0f0204:   add    0x10(%rsi),%rcx
            │  │    0x00007f1bbc0f0208:   mov    %rcx,0x10(%rsi)
   0.10%    │  │    0x00007f1bbc0f020c:   add    0x18(%rsi),%r8
   0.00%    │  │    0x00007f1bbc0f0210:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f1bbc0f0214:   add    0x20(%rsi),%rdx
            │  │    0x00007f1bbc0f0218:   mov    %rdx,0x20(%rsi)
   0.10%    │  │    0x00007f1bbc0f021c:   add    0x28(%rsi),%r9
            │  │    0x00007f1bbc0f0220:   mov    %r9,0x28(%rsi)
   0.03%    │  │    0x00007f1bbc0f0224:   add    0x30(%rsi),%r10
            │  │    0x00007f1bbc0f0228:   mov    %r10,0x30(%rsi)
   0.13%    │  │    0x00007f1bbc0f022c:   add    0x38(%rsi),%r11
            │  │    0x00007f1bbc0f0230:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007f1bbc0f0234:   mov    0x28(%rsp),%rdi
            │  │    0x00007f1bbc0f0239:   add    $0x80,%rdi
   0.11%    │  │    0x00007f1bbc0f0240:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f1bbc0f0245:   jne    0x00007f1bbc0ef4db
   0.00%    ↘       0x00007f1bbc0f024b:   mov    0x40(%rsp),%rbp
   0.02%            0x00007f1bbc0f0250:   mov    0x48(%rsp),%rbx
   0.01%            0x00007f1bbc0f0255:   mov    0x50(%rsp),%r12
                    0x00007f1bbc0f025a:   mov    0x58(%rsp),%r13
                    0x00007f1bbc0f025f:   mov    0x60(%rsp),%r14
                    0x00007f1bbc0f0264:   mov    0x68(%rsp),%r15
                    0x00007f1bbc0f0269:   mov    0x38(%rsp),%rsp
                    0x00007f1bbc0f026e:   pop    %rcx
   0.01%            0x00007f1bbc0f026f:   pop    %rdx
                    0x00007f1bbc0f0270:   mov    %rdx,%rax
   0.25%         ↗  0x00007f1bbc0f0273:   cmp    %rcx,%rax
                ╭│  0x00007f1bbc0f0276:   jae    0x00007f1bbc0f0280
                ││  0x00007f1bbc0f0278:   add    $0x80,%rax
   0.01%        │╰  0x00007f1bbc0f027e:   jmp    0x00007f1bbc0f0273
   0.02%        ↘   0x00007f1bbc0f0280:   vzeroupper 
....................................................................................................
  95.55%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.55%        runtime stub  StubRoutines::sha512_implCompress 
   1.11%        runtime stub  StubRoutines::sha512_implCompress 
   0.76%              kernel  [unknown] 
   0.34%        runtime stub  StubRoutines::sha512_implCompress 
   0.12%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%        runtime stub  StubRoutines::sha512_implCompress 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%        runtime stub  StubRoutines::sha512_implCompress 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 652 
   0.04%        runtime stub  StubRoutines::sha512_implCompress 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 652 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 652 
   0.03%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 651 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 652 
   1.36%  <...other 326 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.23%        runtime stub  StubRoutines::sha512_implCompress 
   1.84%              kernel  [unknown] 
   0.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 652 
   0.13%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%         c2, level 4  sun.security.provider.DigestBase::engineDigest, version 2, compile id 651 
   0.04%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%         c2, level 4  sun.security.provider.SHA5::implCompress, version 2, compile id 601 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.22%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.40%        runtime stub
   1.84%              kernel
   0.36%         c2, level 4
   0.20%           libjvm.so
   0.08%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-224, length = 16384)

# Run progress: 63.64% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 91.282 us/op
# Warmup Iteration   2: 85.480 us/op
# Warmup Iteration   3: 85.410 us/op
# Warmup Iteration   4: 85.412 us/op
# Warmup Iteration   5: 85.397 us/op
Iteration   1: 85.443 us/op
Iteration   2: 85.398 us/op
Iteration   3: 85.410 us/op
Iteration   4: 85.384 us/op
Iteration   5: 85.416 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  85.410 ±(99.9%) 0.084 us/op [Average]
  (min, avg, max) = (85.384, 85.410, 85.443), stdev = 0.022
  CI (99.9%): [85.326, 85.494] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 140700 total address lines.
Perf output processed (skipped 56.012 seconds):
 Column 1: cycles (50773 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 571 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f23d863a8d1:   cmp    %r13d,%ecx                   ;   {no_reloc}
          ╭         0x00007f23d863a8d4:   jge    0x00007f23d863a8db           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f23d863a8d6:   mov    %edx,%r10d
          │         0x00007f23d863a8d9:   jmp    0x00007f23d863a8b4
   0.12%  ↘         0x00007f23d863a8db:   vmovq  %xmm0,%rdi
   0.03%            0x00007f23d863a8e0:   vmovd  %xmm1,%r11d
   0.09%            0x00007f23d863a8e5:   vmovd  %xmm2,%r8d
   0.06%            0x00007f23d863a8ea:   vmovd  %xmm4,%ecx
   0.09%            0x00007f23d863a8ee:   mov    (%rsp),%rbp
   0.03%            0x00007f23d863a8f2:   vmovd  %xmm3,%edx                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%    ↗       0x00007f23d863a8f6:   mov    0x458(%r15),%rbx
   0.05%    │       0x00007f23d863a8fd:   mov    %r14d,%r10d
   0.08%    │       0x00007f23d863a900:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rax=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%    │       0x00007f23d863a903:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.08%    │       0x00007f23d863a905:   cmp    $0x5,%r10d
           ╭│       0x00007f23d863a909:   jge    0x00007f23d863a9a5
   0.02%   ││       0x00007f23d863a90f:   mov    %r14d,%ebx
   0.09%   ││       0x00007f23d863a912:   shl    $0x5,%ebx
   0.02%   ││       0x00007f23d863a915:   lea    (%rbx,%r14,8),%ebx
   0.07%   ││       0x00007f23d863a919:   add    $0x28,%ebx
   0.04%   ││       0x00007f23d863a91c:   mov    %r10d,%r14d                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.10%   ││       0x00007f23d863a91f:   lea    0x28(%rbx),%r13d
   0.02%   ││       0x00007f23d863a923:   cmp    %r13d,%ebx
           │╰       0x00007f23d863a926:   jge    0x00007f23d863a8f6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%   │        0x00007f23d863a928:   lea    (%r14,%r14,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │        0x00007f23d863a92c:   cmp    %ecx,%ebx
           │        0x00007f23d863a92e:   jae    0x00007f23d863b311
   0.09%   │        0x00007f23d863a934:   vmovd  %edx,%xmm3
   0.02%   │        0x00007f23d863a938:   mov    %rbp,(%rsp)
   0.06%   │        0x00007f23d863a93c:   vmovd  %ecx,%xmm4
   0.05%   │        0x00007f23d863a940:   vmovd  %r8d,%xmm2
   0.12%   │        0x00007f23d863a945:   movslq %ebx,%r8
   0.03%   │        0x00007f23d863a948:   add    $0x20,%r8
   0.08%   │        0x00007f23d863a94c:   cmp    %rbp,%r8
           │        0x00007f23d863a94f:   jae    0x00007f23d863b30c
   0.05%   │        0x00007f23d863a955:   vmovd  %r11d,%xmm1
   0.11%   │        0x00007f23d863a95a:   vmovq  %rdi,%xmm0
   0.01%   │        0x00007f23d863a95f:   lea    0x8(%rbx),%r8d
   0.09%   │        0x00007f23d863a963:   mov    %ebx,%ecx                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  ↗     0x00007f23d863a965:   mov    0x10(%r9,%rcx,1),%rdi        ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.08%   │  │     0x00007f23d863a96a:   mov    %r10d,%edx
   0.02%   │  │     0x00007f23d863a96d:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │  │     0x00007f23d863a96f:   cmp    %esi,%r10d
           │  │     0x00007f23d863a972:   jae    0x00007f23d863b289
   0.04%   │  │     0x00007f23d863a978:   mov    %rdi,0x10(%rax,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.09%   │  │     0x00007f23d863a97d:   lea    0x8(%rcx),%r11d
   0.03%   │  │     0x00007f23d863a981:   cmp    %r8d,%r11d
           │ ╭│     0x00007f23d863a984:   jge    0x00007f23d863a98e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f23d863a986:   mov    %r11d,%ecx
           │ ││     0x00007f23d863a989:   mov    %edx,%r10d
           │ │╰     0x00007f23d863a98c:   jmp    0x00007f23d863a965
   0.10%   │ ↘      0x00007f23d863a98e:   lea    0x10(%rbx),%r8d
   0.06%   │        0x00007f23d863a992:   cmp    %r8d,%r11d
           │        0x00007f23d863a995:   jge    0x00007f23d863b348
   0.09%   │        0x00007f23d863a99b:   add    $0x8,%ecx
   0.03%   │        0x00007f23d863a99e:   xchg   %ax,%ax
   0.07%   │        0x00007f23d863a9a0:   jmp    0x00007f23d863a853
   0.00%   ↘        0x00007f23d863a9a5:   mov    0x38(%rdi),%r11d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.02%            0x00007f23d863a9a9:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f23d863b3ac
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007f23d863a9ae:   cmp    $0x18,%r10d
                    0x00007f23d863a9b2:   jbe    0x00007f23d863b374
   0.02%            0x00007f23d863a9b8:   mov    %r10d,(%rsp)
   0.02%            0x00007f23d863a9bc:   vmovd  %edx,%xmm3
   0.03%            0x00007f23d863a9c0:   vmovq  %rdi,%xmm0
                    0x00007f23d863a9c5:   mov    0x40(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.01%            0x00007f23d863a9ca:   mov    %r10,0x8(%rsp)
   0.00%            0x00007f23d863a9cf:   mov    0x20(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.02%            0x00007f23d863a9d4:   vmovq  %r10,%xmm1
   0.01%            0x00007f23d863a9d9:   mov    0xd0(%r12,%r11,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f23d863a9e1:   mov    0xa8(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.00%            0x00007f23d863a9e9:   mov    %r10,0x10(%rsp)
   0.02%            0x00007f23d863a9ee:   mov    0x80(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.00%            0x00007f23d863a9f6:   mov    %r10,0x18(%rsp)
   0.02%            0x00007f23d863a9fb:   mov    0x58(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007f23d863aa00:   mov    %r10,0x20(%rsp)              ;   {no_reloc}
   0.03%            0x00007f23d863aa05:   mov    0x30(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.01%            0x00007f23d863aa0a:   vmovq  %r10,%xmm4
   0.01%            0x00007f23d863aa0f:   mov    0xb8(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007f23d863aa17:   mov    %r10,0x28(%rsp)
   0.03%            0x00007f23d863aa1c:   mov    0x90(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.01%            0x00007f23d863aa24:   mov    %r10,0x30(%rsp)
   0.01%            0x00007f23d863aa29:   mov    0x68(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.01%            0x00007f23d863aa2e:   mov    %r10,0x38(%rsp)
   0.02%            0x00007f23d863aa33:   vmovd  %r11d,%xmm2
   0.01%            0x00007f23d863aa38:   mov    0x18(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.02%            0x00007f23d863aa3d:   vmovq  %r10,%xmm5
   0.01%            0x00007f23d863aa42:   mov    0xc8(%r12,%r11,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.03%            0x00007f23d863aa4a:   mov    0xa0(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.00%            0x00007f23d863aa52:   mov    %r10,0x40(%rsp)
   0.01%            0x00007f23d863aa57:   mov    0x78(%r12,%r11,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.01%            0x00007f23d863aa5c:   mov    0x28(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.02%            0x00007f23d863aa61:   vmovq  %r10,%xmm6
   0.00%            0x00007f23d863aa66:   mov    0xb0(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.01%            0x00007f23d863aa6e:   mov    %r10,0x48(%rsp)
   0.01%            0x00007f23d863aa73:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.03%            0x00007f23d863aa7b:   mov    %r10,0x50(%rsp)
   0.00%            0x00007f23d863aa80:   mov    0x60(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.03%            0x00007f23d863aa85:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.01%            0x00007f23d863aa8a:   mov    %r11,0x58(%rsp)
   0.02%            0x00007f23d863aa8f:   vmovd  %xmm2,%r11d
   0.01%            0x00007f23d863aa94:   mov    0x10(%r12,%r11,8),%rbx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.02%            0x00007f23d863aa99:   mov    0xc0(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.01%            0x00007f23d863aaa1:   vmovd  %xmm2,%r9d
   0.02%            0x00007f23d863aaa6:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.01%            0x00007f23d863aaae:   mov    %r9,0x60(%rsp)
   0.00%            0x00007f23d863aab3:   vmovd  %xmm2,%r9d
   0.01%            0x00007f23d863aab8:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.02%            0x00007f23d863aabd:   mov    %r9,0x68(%rsp)
   0.00%            0x00007f23d863aac2:   vmovd  %xmm2,%r9d
   0.02%            0x00007f23d863aac7:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.02%            0x00007f23d863aacc:   mov    %r9,0x70(%rsp)
   0.02%            0x00007f23d863aad1:   vmovd  %xmm2,%r9d
   0.01%            0x00007f23d863aad6:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.02%            0x00007f23d863aadb:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f23d863aae0:   xor    %r9d,%r9d
   0.02%            0x00007f23d863aae3:   vmovd  %r9d,%xmm13
   0.00%       ╭    0x00007f23d863aae8:   jmp    0x00007f23d863ab07
               │    0x00007f23d863aaea:   nopw   0x0(%rax,%rax,1)
   0.39%       │↗   0x00007f23d863aaf0:   mov    %rcx,0x28(%rsp)
   0.25%       ││   0x00007f23d863aaf5:   mov    %rax,%rcx
   0.39%       ││   0x00007f23d863aaf8:   mov    %r13,0x38(%rsp)
   0.19%       ││   0x00007f23d863aafd:   vmovq  %xmm7,%r10                   ;   {no_reloc}
   0.39%       ││   0x00007f23d863ab02:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.31%       ↘│   0x00007f23d863ab07:   vmovq  %xmm5,%rdi
   0.43%        │   0x00007f23d863ab0c:   xor    0x8(%rsp),%rdi
   0.23%        │   0x00007f23d863ab11:   xor    0x38(%rsp),%rdi
   0.54%        │   0x00007f23d863ab16:   xor    0x30(%rsp),%rdi
   0.31%        │   0x00007f23d863ab1b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.61%        │   0x00007f23d863ab20:   vmovq  %xmm1,%r9
   0.21%        │   0x00007f23d863ab25:   xor    0x70(%rsp),%r9
   0.38%        │   0x00007f23d863ab2a:   xor    0x68(%rsp),%r9
   0.24%        │   0x00007f23d863ab2f:   xor    0x60(%rsp),%r9
   0.44%        │   0x00007f23d863ab34:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.15%        │   0x00007f23d863ab37:   rorx   $0x3f,%rdi,%rbp
   0.33%        │   0x00007f23d863ab3d:   rorx   $0x3f,%r9,%rsi
   0.26%        │   0x00007f23d863ab43:   vmovq  %rsi,%xmm7
   0.53%        │   0x00007f23d863ab48:   vmovq  %xmm4,%rsi
   0.18%        │   0x00007f23d863ab4d:   xor    0x20(%rsp),%rsi
   0.34%        │   0x00007f23d863ab52:   xor    0x18(%rsp),%rsi
   0.27%        │   0x00007f23d863ab57:   xor    0x10(%rsp),%rsi
   0.49%        │   0x00007f23d863ab5c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.14%        │   0x00007f23d863ab5f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.35%        │   0x00007f23d863ab62:   rorx   $0x3f,%rsi,%rax
   0.23%        │   0x00007f23d863ab68:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.44%        │   0x00007f23d863ab6b:   vmovq  %xmm6,%r9
   0.14%        │   0x00007f23d863ab70:   xor    0x78(%rsp),%r9
   0.32%        │   0x00007f23d863ab75:   xor    %rdx,%r9
   0.20%        │   0x00007f23d863ab78:   xor    0x40(%rsp),%r9
   0.45%        │   0x00007f23d863ab7d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.13%        │   0x00007f23d863ab80:   mov    0x78(%rsp),%rsi
   0.32%        │   0x00007f23d863ab85:   xor    %rax,%rsi
   0.22%        │   0x00007f23d863ab88:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.50%        │   0x00007f23d863ab8e:   rorx   $0x3f,%r9,%r13
   0.12%        │   0x00007f23d863ab94:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.33%        │   0x00007f23d863ab97:   vmovq  %xmm6,%rdi
   0.29%        │   0x00007f23d863ab9c:   xor    %rax,%rdi
   0.49%        │   0x00007f23d863ab9f:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.14%        │   0x00007f23d863aba5:   mov    %rdi,0x80(%rsp)
   0.72%        │   0x00007f23d863abad:   xor    %r13,%r11
   0.24%        │   0x00007f23d863abb0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.35%        │   0x00007f23d863abb6:   mov    %r11,0xc0(%rsp)
   0.35%        │   0x00007f23d863abbe:   vmovq  %xmm1,%r11
   0.36%        │   0x00007f23d863abc3:   xor    %r13,%r11
   0.20%        │   0x00007f23d863abc6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.35%        │   0x00007f23d863abcc:   mov    %r11,0x88(%rsp)
   0.38%        │   0x00007f23d863abd4:   mov    0xc0(%rsp),%r11
   0.86%        │   0x00007f23d863abdc:   andn   %rdi,%r11,%r11
   0.48%        │   0x00007f23d863abe1:   vmovq  %r11,%xmm1
   1.28%        │   0x00007f23d863abe6:   mov    0x88(%rsp),%r11
   0.41%        │   0x00007f23d863abee:   andn   %rsi,%r11,%r11
   0.24%        │   0x00007f23d863abf3:   vmovq  %r11,%xmm8
   1.19%        │   0x00007f23d863abf8:   mov    0x60(%rsp),%r11
   0.20%        │   0x00007f23d863abfd:   xor    %r13,%r11
   0.06%        │   0x00007f23d863ac00:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
                │                                                             ;   {no_reloc}
   0.14%        │   0x00007f23d863ac06:   mov    %r11,0x90(%rsp)
   0.81%        │   0x00007f23d863ac0e:   mov    0x68(%rsp),%r11
   0.27%        │   0x00007f23d863ac13:   xor    %r13,%r11
   0.06%        │   0x00007f23d863ac16:   mov    0x70(%rsp),%rdi
   0.16%        │   0x00007f23d863ac1b:   xor    %r13,%rdi
   0.84%        │   0x00007f23d863ac1e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.27%        │   0x00007f23d863ac24:   mov    %r11,0x98(%rsp)
   0.05%        │   0x00007f23d863ac2c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.12%        │   0x00007f23d863ac32:   mov    %r11,0xa0(%rsp)
   0.77%        │   0x00007f23d863ac3a:   mov    0x40(%rsp),%r11
   0.24%        │   0x00007f23d863ac3f:   xor    %rax,%r11
   0.06%        │   0x00007f23d863ac42:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.17%        │   0x00007f23d863ac48:   xor    %rax,%r8
   0.78%        │   0x00007f23d863ac4b:   xor    %rax,%rdx
   0.24%        │   0x00007f23d863ac4e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.06%        │   0x00007f23d863ac54:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.17%        │   0x00007f23d863ac5a:   mov    0x98(%rsp),%r8
   0.88%        │   0x00007f23d863ac62:   andn   %r11,%r8,%r8
   0.27%        │   0x00007f23d863ac67:   vmovq  %r8,%xmm9
   0.16%        │   0x00007f23d863ac6c:   mov    0xa0(%rsp),%r8
   0.17%        │   0x00007f23d863ac74:   andn   %rdx,%r8,%r8
   0.67%        │   0x00007f23d863ac79:   vmovq  %r8,%xmm10
   0.27%        │   0x00007f23d863ac7e:   mov    0x90(%rsp),%r8
   0.12%        │   0x00007f23d863ac86:   andn   %rdi,%r8,%r8
   0.12%        │   0x00007f23d863ac8b:   vmovq  %r8,%xmm11
   0.74%        │   0x00007f23d863ac90:   mov    0x50(%rsp),%r8
   0.26%        │   0x00007f23d863ac95:   xor    %rbp,%r8
   0.10%        │   0x00007f23d863ac98:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.13%        │   0x00007f23d863ac9e:   mov    %r8,0xa8(%rsp)
   0.66%        │   0x00007f23d863aca6:   mov    0x58(%rsp),%r8
   0.29%        │   0x00007f23d863acab:   xor    %rbp,%r8
   0.12%        │   0x00007f23d863acae:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.12%        │   0x00007f23d863acb4:   mov    %rbx,%r8
   0.67%        │   0x00007f23d863acb7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.27%        │   0x00007f23d863acba:   mov    %r8,0xb0(%rsp)
   0.10%        │   0x00007f23d863acc2:   mov    %r10,%r13
   0.12%        │   0x00007f23d863acc5:   xor    %rbp,%r13
   0.67%        │   0x00007f23d863acc8:   mov    0x48(%rsp),%r8
   0.26%        │   0x00007f23d863accd:   xor    %rbp,%r8
   0.13%        │   0x00007f23d863acd0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.14%        │   0x00007f23d863acd6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.68%        │   0x00007f23d863acdc:   xor    0x58(%rsp),%rbx
   0.29%        │   0x00007f23d863ace1:   xor    %r10,%rbx
   0.10%        │   0x00007f23d863ace4:   xor    0x50(%rsp),%rbx
   0.11%        │   0x00007f23d863ace9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.62%        │   0x00007f23d863acee:   vmovq  %xmm7,%r10
   0.23%        │   0x00007f23d863acf3:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.12%        │   0x00007f23d863acf6:   mov    %r10,0xb8(%rsp)
   0.13%        │   0x00007f23d863acfe:   rorx   $0x3f,%rbx,%r8               ;   {no_reloc}
   0.69%        │   0x00007f23d863ad04:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.32%        │   0x00007f23d863ad07:   mov    0x30(%rsp),%r10
   0.08%        │   0x00007f23d863ad0c:   xor    0xb8(%rsp),%r10
   0.24%        │   0x00007f23d863ad14:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.82%        │   0x00007f23d863ad1a:   vmovq  %xmm1,%r9
   0.25%        │   0x00007f23d863ad1f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.21%        │   0x00007f23d863ad22:   mov    %r9,0x78(%rsp)
   0.74%        │   0x00007f23d863ad27:   xor    %r8,%rcx
   0.40%        │   0x00007f23d863ad2a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.23%        │   0x00007f23d863ad30:   andn   0xc0(%rsp),%r10,%rcx
   0.07%        │   0x00007f23d863ad3a:   andn   %r10,%rbp,%r10
   0.44%        │   0x00007f23d863ad3f:   vmovq  %r10,%xmm7
   0.48%        │   0x00007f23d863ad44:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.22%        │   0x00007f23d863ad47:   mov    %rcx,0x70(%rsp)
   0.44%        │   0x00007f23d863ad4c:   andn   0xb0(%rsp),%r9,%r10
   0.29%        │   0x00007f23d863ad56:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.47%        │   0x00007f23d863ad59:   vmovq  %r10,%xmm6
   0.22%        │   0x00007f23d863ad5e:   andn   %r9,%r11,%r10
   0.33%        │   0x00007f23d863ad63:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.28%        │   0x00007f23d863ad6b:   vmovq  %r10,%xmm1
   0.42%        │   0x00007f23d863ad70:   mov    0x18(%rsp),%r10
   0.21%        │   0x00007f23d863ad75:   xor    %r8,%r10
   0.28%        │   0x00007f23d863ad78:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.24%        │   0x00007f23d863ad7e:   mov    0x10(%rsp),%r10
   0.46%        │   0x00007f23d863ad83:   xor    %r8,%r10
   0.26%        │   0x00007f23d863ad86:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.30%        │   0x00007f23d863ad8c:   andn   %rbx,%rsi,%r11
   0.22%        │   0x00007f23d863ad91:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.51%        │   0x00007f23d863ad99:   mov    %r11,0x48(%rsp)
   0.40%        │   0x00007f23d863ad9e:   andn   %r10,%rdx,%r13
   0.25%        │   0x00007f23d863ada3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.20%        │   0x00007f23d863adab:   andn   %r14,%r10,%r11
   0.45%        │   0x00007f23d863adb0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.38%        │   0x00007f23d863adb3:   mov    %r11,0x68(%rsp)
   0.48%        │   0x00007f23d863adb8:   andn   0xa8(%rsp),%rbx,%rcx
   0.21%        │   0x00007f23d863adc2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.44%        │   0x00007f23d863adc5:   vmovq  %xmm4,%r11
   0.29%        │   0x00007f23d863adca:   xor    %r8,%r11
   0.38%        │   0x00007f23d863adcd:   mov    0x20(%rsp),%rdx
   0.18%        │   0x00007f23d863add2:   xor    %r8,%rdx
   0.39%        │   0x00007f23d863add5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.26%        │   0x00007f23d863addb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.37%        │   0x00007f23d863ade1:   andn   %rbp,%r8,%rdx
   0.19%        │   0x00007f23d863ade6:   mov    %rdx,%rsi
   0.41%        │   0x00007f23d863ade9:   vmovq  %xmm7,%rdx
   0.27%        │   0x00007f23d863adee:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.36%        │   0x00007f23d863adf1:   mov    %rdx,%rbp
   0.19%        │   0x00007f23d863adf4:   mov    0x80(%rsp),%rdx
   0.42%        │   0x00007f23d863adfc:   andn   %r8,%rdx,%r8                 ;   {no_reloc}
   0.26%        │   0x00007f23d863ae01:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.32%        │   0x00007f23d863ae09:   mov    %r8,0x20(%rsp)
   0.24%        │   0x00007f23d863ae0e:   mov    %rsi,%r8
   0.40%        │   0x00007f23d863ae11:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.29%        │   0x00007f23d863ae14:   mov    %r8,0x58(%rsp)
   0.39%        │   0x00007f23d863ae19:   andn   %r11,%rdi,%r8
   0.21%        │   0x00007f23d863ae1e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.39%        │   0x00007f23d863ae26:   mov    %r8,0x40(%rsp)
   0.29%        │   0x00007f23d863ae2b:   andn   %rax,%r11,%r8
   0.38%        │   0x00007f23d863ae30:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.19%        │   0x00007f23d863ae33:   mov    %r8,0x10(%rsp)
   0.42%        │   0x00007f23d863ae38:   mov    0x38(%rsp),%r8
   0.24%        │   0x00007f23d863ae3d:   xor    0xb8(%rsp),%r8
   0.36%        │   0x00007f23d863ae45:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.20%        │   0x00007f23d863ae4b:   vmovq  %xmm11,%r8
   0.38%        │   0x00007f23d863ae50:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.30%        │   0x00007f23d863ae53:   mov    %r8,0x60(%rsp)
   0.43%        │   0x00007f23d863ae58:   andn   0x90(%rsp),%rdi,%r8
   0.18%        │   0x00007f23d863ae62:   andn   %rdi,%rax,%rdi
   0.34%        │   0x00007f23d863ae67:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.27%        │   0x00007f23d863ae6a:   mov    %rdi,0x50(%rsp)
   0.41%        │   0x00007f23d863ae6f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.16%        │   0x00007f23d863ae72:   mov    %r8,0x30(%rsp)
   0.45%        │   0x00007f23d863ae77:   mov    0x28(%rsp),%r11
   0.23%        │   0x00007f23d863ae7c:   xor    0xb8(%rsp),%r11
   0.40%        │   0x00007f23d863ae84:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.14%        │   0x00007f23d863ae8a:   andn   0x88(%rsp),%rdi,%r8
   0.45%        │   0x00007f23d863ae94:   vmovq  %xmm8,%r11
   0.24%        │   0x00007f23d863ae99:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.35%        │   0x00007f23d863ae9c:   mov    %r11,%rax
   0.17%        │   0x00007f23d863ae9f:   mov    0xa8(%rsp),%r11
   0.40%        │   0x00007f23d863aea7:   andn   %rdi,%r11,%r11
   0.25%        │   0x00007f23d863aeac:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.38%        │   0x00007f23d863aeaf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.17%        │   0x00007f23d863aeb7:   vmovq  %xmm5,%rbx
   0.39%        │   0x00007f23d863aebc:   xor    0xb8(%rsp),%rbx
   0.27%        │   0x00007f23d863aec4:   mov    0x8(%rsp),%rsi
   0.41%        │   0x00007f23d863aec9:   xor    0xb8(%rsp),%rsi
   0.20%        │   0x00007f23d863aed1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.42%        │   0x00007f23d863aed7:   andn   0xa0(%rsp),%rbx,%rdi
   0.26%        │   0x00007f23d863aee1:   vmovq  %xmm10,%rdx
   0.39%        │   0x00007f23d863aee6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.18%        │   0x00007f23d863aee9:   vmovq  %rdx,%xmm7
   0.44%        │   0x00007f23d863aeee:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.23%        │   0x00007f23d863aef1:   mov    %rdi,0x18(%rsp)
   0.44%        │   0x00007f23d863aef6:   andn   %rbx,%r14,%rdx
   0.17%        │   0x00007f23d863aefb:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
                │                                                             ;   {no_reloc}
   0.40%        │   0x00007f23d863aefe:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.23%        │   0x00007f23d863af04:   vmovq  %xmm9,%rbx
   0.34%        │   0x00007f23d863af09:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.18%        │   0x00007f23d863af0c:   vmovq  %rbx,%xmm5
   0.39%        │   0x00007f23d863af11:   andn   0x98(%rsp),%r10,%rbx
   0.24%        │   0x00007f23d863af1b:   mov    0xb0(%rsp),%rdi
   0.37%        │   0x00007f23d863af23:   andn   %r10,%rdi,%r10
   0.16%        │   0x00007f23d863af28:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.45%        │   0x00007f23d863af2b:   vmovq  %r10,%xmm4
   0.27%        │   0x00007f23d863af30:   xor    %rdi,%rbx
   0.40%        │   0x00007f23d863af33:   movabs $0x7ff052970,%r9             ;   {oop([J{0x00000007ff052970})}
   0.18%        │   0x00007f23d863af3d:   vmovd  %xmm13,%r10d
   0.35%        │   0x00007f23d863af42:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.28%        │   0x00007f23d863af47:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.36%        │   0x00007f23d863af4a:   vmovd  %r10d,%xmm13
   0.15%        │   0x00007f23d863af4f:   cmp    $0x18,%r10d
                ╰   0x00007f23d863af53:   jl     0x00007f23d863aaf0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.02%            0x00007f23d863af59:   vmovd  %xmm2,%r10d
   0.00%            0x00007f23d863af5e:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.03%            0x00007f23d863af63:   vmovq  %xmm5,%r9
   0.00%            0x00007f23d863af68:   mov    %r9,0x18(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.03%            0x00007f23d863af6d:   mov    %r10d,%r9d
   0.01%            0x00007f23d863af70:   vmovq  %xmm1,%r10
   0.02%            0x00007f23d863af75:   mov    %r10,0x20(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f23d863af7a:   mov    %r9d,%r10d
   0.03%            0x00007f23d863af7d:   vmovq  %xmm6,%r9
   0.01%            0x00007f23d863af82:   mov    %r9,0x28(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.01%            0x00007f23d863af87:   mov    %r10d,%r9d
   0.01%            0x00007f23d863af8a:   vmovq  %xmm4,%r10
   0.02%            0x00007f23d863af8f:   mov    %r10,0x30(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.00%            0x00007f23d863af94:   mov    %r9d,%r10d
   0.03%            0x00007f23d863af97:   mov    0x58(%rsp),%r9
   0.01%            0x00007f23d863af9c:   mov    %r9,0x38(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.02%            0x00007f23d863afa1:   mov    %r10d,%r9d
   0.01%            0x00007f23d863afa4:   mov    %rbp,0x40(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.02%            0x00007f23d863afa9:   mov    %r9d,%r10d
   0.01%            0x00007f23d863afac:   mov    0x70(%rsp),%r9
   0.02%            0x00007f23d863afb1:   mov    %r9,0x48(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007f23d863afb6:   mov    %r10d,%r9d
   0.02%            0x00007f23d863afb9:   mov    0x78(%rsp),%r10
   0.01%            0x00007f23d863afbe:   mov    %r10,0x50(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.02%            0x00007f23d863afc3:   mov    %r9d,%r10d
   0.01%            0x00007f23d863afc6:   mov    0x20(%rsp),%r9
   0.02%            0x00007f23d863afcb:   mov    %r9,0x58(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.00%            0x00007f23d863afd0:   mov    %r10d,%r9d
   0.02%            0x00007f23d863afd3:   vmovq  %xmm7,%r10
   0.01%            0x00007f23d863afd8:   mov    %r10,0x60(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.03%            0x00007f23d863afdd:   mov    %r13,0x68(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.00%            0x00007f23d863afe2:   mov    %r9d,%r10d
   0.01%            0x00007f23d863afe5:   mov    0x68(%rsp),%r9
   0.01%            0x00007f23d863afea:   mov    %r9,0x70(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.03%            0x00007f23d863afef:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.01%            0x00007f23d863aff4:   mov    0x18(%rsp),%r9
   0.02%            0x00007f23d863aff9:   mov    %r9,0x80(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.01%            0x00007f23d863b001:   mov    %r10d,%r9d
   0.02%            0x00007f23d863b004:   mov    0x50(%rsp),%r10
   0.01%            0x00007f23d863b009:   mov    %r10,0x88(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.03%            0x00007f23d863b011:   mov    %r9d,%r10d
   0.01%            0x00007f23d863b014:   mov    0x30(%rsp),%r9
   0.00%            0x00007f23d863b019:   mov    %r9,0x90(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.02%            0x00007f23d863b021:   mov    %r10d,%r9d
   0.01%            0x00007f23d863b024:   mov    0x60(%rsp),%r10
   0.01%            0x00007f23d863b029:   mov    %r10,0x98(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
   0.02%            0x00007f23d863b031:   mov    %r9d,%r10d                   ;   {no_reloc}
   0.00%            0x00007f23d863b034:   mov    0x40(%rsp),%r9
   0.01%            0x00007f23d863b039:   mov    %r9,0xa0(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.01%            0x00007f23d863b041:   mov    %r10d,%r9d
   0.02%            0x00007f23d863b044:   mov    0x10(%rsp),%r10
   0.00%            0x00007f23d863b049:   mov    %r10,0xa8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.02%            0x00007f23d863b051:   mov    %r9d,%r10d
   0.01%            0x00007f23d863b054:   mov    0x48(%rsp),%r9
   0.01%            0x00007f23d863b059:   mov    %r9,0xb0(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.01%            0x00007f23d863b061:   mov    %rcx,0xb8(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.03%            0x00007f23d863b069:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.04%            0x00007f23d863b071:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.04%            0x00007f23d863b079:   mov    %r10d,%r11d
   0.01%            0x00007f23d863b07c:   mov    %rax,0xd0(%r12,%r11,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007f23d863b084:   vmovq  %xmm0,%r10
   0.01%            0x00007f23d863b089:   mov    0x34(%r10),%r8d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.02%            0x00007f23d863b08d:   mov    0xc(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f23d863b390
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.00%            0x00007f23d863b092:   lea    -0x7(%r10),%esi
   0.04%            0x00007f23d863b096:   test   %esi,%esi
                    0x00007f23d863b098:   jl     0x00007f23d863b390
   0.01%            0x00007f23d863b09e:   movslq %r10d,%r14
   0.01%            0x00007f23d863b0a1:   lea    (%r12,%r11,8),%r9
   0.00%            0x00007f23d863b0a5:   add    $0xfffffffffffffff9,%r14
   0.02%            0x00007f23d863b0a9:   lea    (%r12,%r8,8),%rax
   0.01%            0x00007f23d863b0ad:   xor    %ebx,%ebx
   0.01%            0x00007f23d863b0af:   jmp    0x00007f23d863b184
                 ↗  0x00007f23d863b0b4:   mov    %ebp,%edx                    ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.12%         │  0x00007f23d863b0b6:   mov    %r11d,%ecx
   0.02%         │  0x00007f23d863b0b9:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.10%         │  0x00007f23d863b0bb:   nopl   0x0(%rax,%rax,1)
   0.01%         │  0x00007f23d863b0c0:   cmp    (%rsp),%r11d
                 │  0x00007f23d863b0c4:   jae    0x00007f23d863b21c
   0.13%         │  0x00007f23d863b0ca:   mov    %edx,%ebp
   0.02%         │  0x00007f23d863b0cc:   mov    0x10(%r9,%r11,8),%r8         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f23d863b0d1:   movslq %r13d,%rdx                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%         │  0x00007f23d863b0d4:   mov    %r8,0x10(%rax,%rdx,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.14%         │  0x00007f23d863b0d9:   lea    0x3(%r11),%r8d
   0.01%         │  0x00007f23d863b0dd:   data16 xchg %ax,%ax
   0.09%         │  0x00007f23d863b0e0:   cmp    (%rsp),%r8d
                 │  0x00007f23d863b0e4:   jae    0x00007f23d863b227
   0.02%         │  0x00007f23d863b0ea:   movslq %r11d,%rcx
   0.13%         │  0x00007f23d863b0ed:   mov    0x18(%r9,%rcx,8),%r8         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%         │  0x00007f23d863b0f2:   mov    %r8,0x18(%rax,%rdx,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f23d863b0f7:   mov    0x28(%r9,%rcx,8),%r8
   0.02%         │  0x00007f23d863b0fc:   mov    0x20(%r9,%rcx,8),%rcx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.15%         │  0x00007f23d863b101:   mov    %rcx,0x20(%rax,%rdx,1)
   0.02%         │  0x00007f23d863b106:   mov    %r8,0x28(%rax,%rdx,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.11%         │  0x00007f23d863b10b:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.00%         │  0x00007f23d863b10f:   add    $0x20,%r13d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.14%         │  0x00007f23d863b113:   cmp    %r10d,%r13d
                 ╰  0x00007f23d863b116:   jl     0x00007f23d863b0b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.02%            0x00007f23d863b118:   mov    %ebp,%edx
   0.08%            0x00007f23d863b11a:   nopw   0x0(%rax,%rax,1)
   0.01%            0x00007f23d863b120:   cmp    %edi,%r13d
                    0x00007f23d863b123:   jge    0x00007f23d863b14f
                    0x00007f23d863b125:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f23d863b128:   mov    %r11d,%ebp
                    0x00007f23d863b12b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  77.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 

                     0x00007f23d8646c41:   mov    %r10d,(%rsp)
                     0x00007f23d8646c45:   mov    %r11d,0x28(%rsp)
                     0x00007f23d8646c4a:   mov    %r9d,0x24(%rsp)
                     0x00007f23d8646c4f:   mov    $0x6,%ecx
                     0x00007f23d8646c54:   mov    $0x2,%r10d
                     0x00007f23d8646c5a:   mov    $0x4,%r11d
                     0x00007f23d8646c60:   xor    %ebp,%ebp
                     0x00007f23d8646c62:   mov    %ebp,0x4(%rsp)
                     0x00007f23d8646c66:   mov    $0x1,%edi
          ╭          0x00007f23d8646c6b:   jmp    0x00007f23d8646e28
   0.09%  │↗         0x00007f23d8646c70:   vmovd  %xmm0,%edi                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          ││                                                                   ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││                                                                   ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││                                                                   ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││                                                                   ; - java.security.MessageDigest::update@5 (line 357)
          ││                                                                   ; - java.security.MessageDigest::digest@2 (line 432)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.59%  ││ ↗       0x00007f23d8646c74:   mov    %edi,%edx
   0.12%  ││ │       0x00007f23d8646c76:   vmovd  %edi,%xmm0
   0.04%  ││ │       0x00007f23d8646c7a:   add    %r10d,%edx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.11%  ││ │       0x00007f23d8646c7d:   movslq %r10d,%rax                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.63%  ││ │       0x00007f23d8646c80:   vmovq  %xmm1,%r11
   0.13%  ││ │       0x00007f23d8646c85:   add    %rax,%r11
   0.02%  ││ │       0x00007f23d8646c88:   mov    0x18(%rsp),%r8
   0.12%  ││ │       0x00007f23d8646c8d:   movsbl 0x10(%r8,%r11,1),%r11d
   0.62%  ││ │       0x00007f23d8646c93:   xor    %r11b,0x10(%r9,%rax,1)
   0.45%  ││ │       0x00007f23d8646c98:   lea    (%r14,%rax,1),%r8
   0.54%  ││ │       0x00007f23d8646c9c:   lea    (%rax,%r13,1),%rbx
   0.10%  ││ │       0x00007f23d8646ca0:   lea    (%rax,%rbp,1),%rsi
   0.04%  ││ │       0x00007f23d8646ca4:   lea    (%rcx,%rax,1),%rdi
   0.20%  ││ │       0x00007f23d8646ca8:   mov    0x18(%rsp),%r11
   0.52%  ││ │       0x00007f23d8646cad:   movsbl 0x10(%r11,%rdi,1),%r11d      ;   {no_reloc}
   0.11%  ││ │       0x00007f23d8646cb3:   xor    %r11b,0x11(%r9,%rax,1)
   0.83%  ││ │       0x00007f23d8646cb8:   mov    0x18(%rsp),%r11
   0.08%  ││ │       0x00007f23d8646cbd:   movsbl 0x10(%r11,%rsi,1),%r11d
   0.03%  ││ │       0x00007f23d8646cc3:   xor    %r11b,0x12(%r9,%rax,1)
   0.81%  ││ │       0x00007f23d8646cc8:   mov    0x18(%rsp),%r11
   0.04%  ││ │       0x00007f23d8646ccd:   movsbl 0x12(%r11,%rdi,1),%r11d
   0.19%  ││ │       0x00007f23d8646cd3:   xor    %r11b,0x13(%r9,%rax,1)
   0.73%  ││ │       0x00007f23d8646cd8:   mov    0x18(%rsp),%r11
   0.15%  ││ │       0x00007f23d8646cdd:   movsbl 0x10(%r11,%rbx,1),%r11d
   0.56%  ││ │       0x00007f23d8646ce3:   xor    %r11b,0x14(%r9,%rax,1)
   0.92%  ││ │       0x00007f23d8646ce8:   movslq %edx,%rbx
   0.30%  ││ │       0x00007f23d8646ceb:   mov    0x18(%rsp),%r11
   0.05%  ││ │       0x00007f23d8646cf0:   movsbl 0x14(%r11,%rbx,1),%r11d
   0.10%  ││ │       0x00007f23d8646cf6:   xor    %r11b,0x15(%r9,%rax,1)
   0.98%  ││ │       0x00007f23d8646cfb:   mov    0x18(%rsp),%r11
   0.03%  ││ │       0x00007f23d8646d00:   movsbl 0x10(%r11,%r8,1),%r11d
   0.36%  ││ │       0x00007f23d8646d06:   xor    %r11b,0x16(%r9,%rax,1)
   0.72%  ││ │       0x00007f23d8646d0b:   mov    0x18(%rsp),%r11
   0.29%  ││ │       0x00007f23d8646d10:   movsbl 0x16(%r11,%rbx,1),%r11d
   0.83%  ││ │       0x00007f23d8646d16:   xor    %r11b,0x17(%r9,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   1.60%  ││ │       0x00007f23d8646d1b:   add    $0x8,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%  ││ │       0x00007f23d8646d1f:   nop
   0.02%  ││ │       0x00007f23d8646d20:   cmp    0x38(%rsp),%r10d
          │╰ │       0x00007f23d8646d25:   jl     0x00007f23d8646c70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - java.util.Arrays::fill@17 (line 3287)
          │  │                                                                 ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │  │       0x00007f23d8646d2b:   mov    0x458(%r15),%r11
   0.04%  │  │       0x00007f23d8646d32:   add    $0x7,%edx                    ; ImmutableOopMap {r9=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                 ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │  │       0x00007f23d8646d35:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │  │                                                                 ;   {poll}
   0.02%  │  │       0x00007f23d8646d38:   nopl   0x0(%rax,%rax,1)
   0.01%  │  │       0x00007f23d8646d40:   cmp    0x2c(%rsp),%r10d
          │ ╭│       0x00007f23d8646d45:   jge    0x00007f23d8646d96
          │ ││       0x00007f23d8646d47:   vmovd  %xmm0,%edi
          │ ││       0x00007f23d8646d4b:   vmovd  %xmm2,%ebx
          │ ││       0x00007f23d8646d4f:   vmovq  %xmm1,%rax
          │ ││       0x00007f23d8646d54:   mov    0x2c(%rsp),%esi
          │ ││    ↗  0x00007f23d8646d58:   mov    %ebx,%r8d
   0.03%  │ ││    │  0x00007f23d8646d5b:   sub    %r10d,%r8d
   0.01%  │ ││    │  0x00007f23d8646d5e:   add    $0xfffffff9,%r8d
   0.01%  │ ││    │  0x00007f23d8646d62:   xor    %edx,%edx
          │ ││    │  0x00007f23d8646d64:   cmp    %r10d,%esi
   0.02%  │ ││    │  0x00007f23d8646d67:   cmovl  %edx,%r8d
   0.02%  │ ││    │  0x00007f23d8646d6b:   cmp    $0x1f40,%r8d
   0.02%  │ ││    │  0x00007f23d8646d72:   mov    $0x1f40,%r11d
          │ ││    │  0x00007f23d8646d78:   cmova  %r11d,%r8d
   0.05%  │ ││    │  0x00007f23d8646d7c:   add    %r10d,%r8d
   0.02%  │ ││    │  0x00007f23d8646d7f:   vmovd  %ebx,%xmm2
   0.00%  │ ││    │  0x00007f23d8646d83:   vmovq  %rax,%xmm1
   0.02%  │ ││    │  0x00007f23d8646d88:   mov    %esi,0x2c(%rsp)
   0.01%  │ ││    │  0x00007f23d8646d8c:   mov    %r8d,0x38(%rsp)
   0.01%  │ │╰    │  0x00007f23d8646d91:   jmp    0x00007f23d8646c74
   0.02%  │ ↘     │  0x00007f23d8646d96:   vmovd  %xmm2,%ebx
   0.00%  │       │  0x00007f23d8646d9a:   vmovq  %xmm1,%rax
   0.01%  │       │  0x00007f23d8646d9f:   nop
   0.01%  │       │  0x00007f23d8646da0:   cmp    %ebx,%r10d
          │   ╭   │  0x00007f23d8646da3:   jge    0x00007f23d8646dc7
   0.04%  │   │   │  0x00007f23d8646da5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.08%  │   │↗  │  0x00007f23d8646da8:   movslq %r10d,%r11                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%  │   ││  │  0x00007f23d8646dab:   lea    (%rax,%r11,1),%r8
   0.11%  │   ││  │  0x00007f23d8646daf:   mov    0x18(%rsp),%rcx
   0.07%  │   ││  │  0x00007f23d8646db4:   movsbl 0x10(%rcx,%r8,1),%r8d
   0.08%  │   ││  │  0x00007f23d8646dba:   xor    %r8b,0x10(%r9,%r11,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.36%  │   ││  │  0x00007f23d8646dbf:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.06%  │   ││  │  0x00007f23d8646dc2:   cmp    %ebx,%r10d
          │   │╰  │  0x00007f23d8646dc5:   jl     0x00007f23d8646da8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │   ↘  ↗│  0x00007f23d8646dc7:   mov    0x8(%rsp),%rsi
   0.00%  │      ││  0x00007f23d8646dcc:   vzeroupper 
   0.06%  │      ││  0x00007f23d8646dcf:   call   0x00007f23d863a7e0           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {optimized virtual_call}
   0.03%  │      ││  0x00007f23d8646dd4:   nopl   0x40007c4(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {other}
   0.00%  │      ││  0x00007f23d8646ddc:   mov    0x4(%rsp),%r10d
   0.03%  │      ││  0x00007f23d8646de1:   mov    0x8(%rsp),%r13
   0.02%  │      ││  0x00007f23d8646de6:   add    0x1c(%r13),%r10d             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - java.util.Arrays::fill@17 (line 3287)
          │      ││                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │      ││  0x00007f23d8646dea:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r13=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      ││                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │      ││  0x00007f23d8646df1:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {poll}
          │      ││  0x00007f23d8646df4:   mov    0x2c(%r13),%ebx              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@4 (line 94)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%  │      ││  0x00007f23d8646df8:   nopl   0x0(%rax,%rax,1)
          │      ││  0x00007f23d8646e00:   cmp    0x20(%rsp),%r10d
          │     ╭││  0x00007f23d8646e05:   jg     0x00007f23d8646ec5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%  │     │││  0x00007f23d8646e0b:   mov    %r10d,%ecx
          │     │││  0x00007f23d8646e0e:   mov    %r10d,0x4(%rsp)
   0.01%  │     │││  0x00007f23d8646e13:   add    $0x6,%ecx
   0.00%  │     │││  0x00007f23d8646e16:   mov    %r10d,%edi
   0.02%  │     │││  0x00007f23d8646e19:   inc    %edi
          │     │││  0x00007f23d8646e1b:   add    $0x2,%r10d
   0.03%  │     │││  0x00007f23d8646e1f:   mov    0x4(%rsp),%r11d
   0.01%  │     │││  0x00007f23d8646e24:   add    $0x4,%r11d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%  ↘     │││  0x00007f23d8646e28:   mov    0xc(%r12,%rbx,8),%ebx        ; implicit exception: dispatches to 0x00007f23d8647858
                │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                │││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
                │││  0x00007f23d8646e2d:   test   %ebx,%ebx
                │╰│  0x00007f23d8646e2f:   jbe    0x00007f23d8646dc7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.04%        │ │  0x00007f23d8646e31:   mov    0x8(%rsp),%r8
   0.00%        │ │  0x00007f23d8646e36:   mov    0x34(%r8),%r9d               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%        │ │  0x00007f23d8646e3a:   nopw   0x0(%rax,%rax,1)
                │ │  0x00007f23d8646e40:   mov    0xc(%r12,%r9,8),%edx         ; implicit exception: dispatches to 0x00007f23d86473a5
                │ │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f23d8646e45:   test   %edx,%edx
                │ │  0x00007f23d8646e47:   jbe    0x00007f23d86473a5
   0.00%        │ │  0x00007f23d8646e4d:   mov    %ebx,%r8d
   0.02%        │ │  0x00007f23d8646e50:   dec    %r8d
                │ │  0x00007f23d8646e53:   cmp    %edx,%r8d
                │ │  0x00007f23d8646e56:   jae    0x00007f23d86473a5
   0.03%        │ │  0x00007f23d8646e5c:   mov    0x4(%rsp),%ebp
                │ │  0x00007f23d8646e60:   cmp    (%rsp),%ebp
                │ │  0x00007f23d8646e63:   jae    0x00007f23d86473a5
   0.02%        │ │  0x00007f23d8646e69:   movslq %ebx,%r8
                │ │  0x00007f23d8646e6c:   movslq 0x4(%rsp),%rax               ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@23 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f23d8646e71:   add    %rax,%r8
                │ │  0x00007f23d8646e74:   dec    %r8
   0.02%        │ │  0x00007f23d8646e77:   nopw   0x0(%rax,%rax,1)
                │ │  0x00007f23d8646e80:   cmp    0x30(%rsp),%r8
                │ │  0x00007f23d8646e85:   jae    0x00007f23d86473a5
   0.02%        │ │  0x00007f23d8646e8b:   mov    0x18(%rsp),%r8
                │ │  0x00007f23d8646e90:   movsbl 0x10(%r8,%rax,1),%r8d
   0.02%        │ │  0x00007f23d8646e96:   xor    %r8b,0x10(%r12,%r9,8)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.06%        │ │  0x00007f23d8646e9b:   shl    $0x3,%r9
   0.02%        │ │  0x00007f23d8646e9f:   lea    -0x7(%rbx),%esi
                │ │  0x00007f23d8646ea2:   cmp    $0x1,%esi
                │ │  0x00007f23d8646ea5:   jle    0x00007f23d86473c8
   0.03%        │ │  0x00007f23d8646eab:   movslq %ecx,%r14
   0.01%        │ │  0x00007f23d8646eae:   movslq %edi,%rcx
   0.02%        │ │  0x00007f23d8646eb1:   movslq %r10d,%rbp
   0.00%        │ │  0x00007f23d8646eb4:   movslq %r11d,%r13
   0.03%        │ │  0x00007f23d8646eb7:   mov    $0x1,%r10d
   0.02%        │ │  0x00007f23d8646ebd:   data16 xchg %ax,%ax
   0.01%        │ ╰  0x00007f23d8646ec0:   jmp    0x00007f23d8646d58
   0.00%        ↘    0x00007f23d8646ec5:   mov    (%rsp),%ebp
   0.00%             0x00007f23d8646ec8:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@153 (line 131)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
                                                                               ; - java.security.MessageDigest::digest@2 (line 432)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
                     0x00007f23d8646ecb:   test   %ebp,%ebp
                     0x00007f23d8646ecd:   jle    0x00007f23d86476b0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@156 (line 134)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
....................................................................................................
  16.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.08%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 571 
  16.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 
   2.72%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 571 
   1.66%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 571 
   0.62%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.10%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 
   0.02%              kernel  [unknown] 
   1.01%  <...other 293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.45%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 571 
  16.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 609 
   1.79%              kernel  [unknown] 
   0.12%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 636 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  Symbol::print_value_on 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  UTF8::next<unsigned short> 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.78%         c2, level 4
   1.79%              kernel
   0.13%           libjvm.so
   0.12%        runtime stub
   0.09%        libc-2.31.so
   0.03%                    
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-256, length = 16384)

# Run progress: 72.73% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 95.395 us/op
# Warmup Iteration   2: 89.139 us/op
# Warmup Iteration   3: 89.128 us/op
# Warmup Iteration   4: 89.121 us/op
# Warmup Iteration   5: 89.132 us/op
Iteration   1: 89.122 us/op
Iteration   2: 89.124 us/op
Iteration   3: 89.132 us/op
Iteration   4: 89.137 us/op
Iteration   5: 89.134 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  89.130 ±(99.9%) 0.025 us/op [Average]
  (min, avg, max) = (89.122, 89.130, 89.137), stdev = 0.006
  CI (99.9%): [89.105, 89.154] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 144437 total address lines.
Perf output processed (skipped 56.336 seconds):
 Column 1: cycles (50580 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 598 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f19c863c248:   cmp    %edx,%r8d
          ╭         0x00007f19c863c24b:   jge    0x00007f19c863c252           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f19c863c24d:   mov    %eax,%r10d
          │         0x00007f19c863c250:   jmp    0x00007f19c863c22c
   0.05%  ↘         0x00007f19c863c252:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.07%            0x00007f19c863c257:   vmovd  %xmm2,%r11d
   0.10%            0x00007f19c863c25c:   vmovd  %xmm3,%r8d
   0.04%            0x00007f19c863c261:   vmovd  %xmm1,%ecx
   0.06%            0x00007f19c863c265:   mov    (%rsp),%r13
   0.07%            0x00007f19c863c269:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%    ↗       0x00007f19c863c26d:   mov    0x458(%r15),%r14
   0.04%    │       0x00007f19c863c274:   mov    %ebx,%r10d
   0.06%    │       0x00007f19c863c277:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%    │       0x00007f19c863c27a:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.12%    │       0x00007f19c863c27d:   data16 xchg %ax,%ax
   0.05%    │       0x00007f19c863c280:   cmp    $0x5,%r10d
           ╭│       0x00007f19c863c284:   jge    0x00007f19c863c325
   0.04%   ││       0x00007f19c863c28a:   mov    %ebx,%edx
   0.05%   ││       0x00007f19c863c28c:   shl    $0x5,%edx
   0.06%   ││       0x00007f19c863c28f:   lea    (%rdx,%rbx,8),%r14d
   0.04%   ││       0x00007f19c863c293:   add    $0x28,%r14d
   0.03%   ││       0x00007f19c863c297:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.09%   ││       0x00007f19c863c29a:   lea    0x28(%r14),%edx
   0.08%   ││       0x00007f19c863c29e:   xchg   %ax,%ax
   0.06%   ││       0x00007f19c863c2a0:   cmp    %edx,%r14d
           │╰       0x00007f19c863c2a3:   jge    0x00007f19c863c26d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.04%   │        0x00007f19c863c2a5:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.08%   │        0x00007f19c863c2a9:   cmp    %ecx,%r14d
           │        0x00007f19c863c2ac:   jae    0x00007f19c863cc69
   0.09%   │        0x00007f19c863c2b2:   vmovd  %eax,%xmm5
   0.05%   │        0x00007f19c863c2b6:   mov    %r13,(%rsp)
   0.04%   │        0x00007f19c863c2ba:   vmovd  %ecx,%xmm1
   0.07%   │        0x00007f19c863c2be:   vmovd  %r8d,%xmm3
   0.09%   │        0x00007f19c863c2c3:   movslq %r14d,%r8
   0.07%   │        0x00007f19c863c2c6:   add    $0x20,%r8
   0.04%   │        0x00007f19c863c2ca:   cmp    %r13,%r8
           │        0x00007f19c863c2cd:   jae    0x00007f19c863cc64
   0.06%   │        0x00007f19c863c2d3:   vmovd  %r11d,%xmm2
   0.08%   │        0x00007f19c863c2d8:   vmovq  %rdi,%xmm0
   0.07%   │        0x00007f19c863c2dd:   lea    0x8(%r14),%r11d
   0.06%   │        0x00007f19c863c2e1:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.07%   │  ↗     0x00007f19c863c2e4:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.08%   │  │     0x00007f19c863c2e9:   mov    %r10d,%eax
   0.07%   │  │     0x00007f19c863c2ec:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │  │     0x00007f19c863c2ee:   cmp    %esi,%r10d
           │  │     0x00007f19c863c2f1:   jae    0x00007f19c863cbc4
   0.07%   │  │     0x00007f19c863c2f7:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.08%   │  │     0x00007f19c863c2fc:   lea    0x8(%r8),%ecx
   0.05%   │  │     0x00007f19c863c300:   cmp    %r11d,%ecx
           │ ╭│     0x00007f19c863c303:   jge    0x00007f19c863c30d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f19c863c305:   mov    %ecx,%r8d
           │ ││     0x00007f19c863c308:   mov    %eax,%r10d
           │ │╰     0x00007f19c863c30b:   jmp    0x00007f19c863c2e4
   0.05%   │ ↘      0x00007f19c863c30d:   lea    0x10(%r14),%r11d
   0.06%   │        0x00007f19c863c311:   cmp    %r11d,%ecx
           │        0x00007f19c863c314:   jge    0x00007f19c863cca0
   0.10%   │        0x00007f19c863c31a:   add    $0x8,%r8d
   0.06%   │        0x00007f19c863c31e:   xchg   %ax,%ax
   0.06%   │        0x00007f19c863c320:   jmp    0x00007f19c863c1d3
   0.00%   ↘        0x00007f19c863c325:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.01%            0x00007f19c863c329:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f19c863cd3c
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.02%            0x00007f19c863c32e:   cmp    $0x18,%r11d
                    0x00007f19c863c332:   jbe    0x00007f19c863cd08
   0.01%            0x00007f19c863c338:   mov    %r11d,(%rsp)
   0.01%            0x00007f19c863c33c:   vmovd  %eax,%xmm2
   0.01%            0x00007f19c863c340:   vmovq  %rdi,%xmm0
   0.01%            0x00007f19c863c345:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.01%            0x00007f19c863c34a:   mov    %r11,0x8(%rsp)
   0.01%            0x00007f19c863c34f:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.01%            0x00007f19c863c354:   vmovq  %r11,%xmm3
   0.02%            0x00007f19c863c359:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.00%            0x00007f19c863c361:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.01%            0x00007f19c863c369:   mov    %r11,0x10(%rsp)
   0.01%            0x00007f19c863c36e:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.02%            0x00007f19c863c376:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007f19c863c37b:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.00%            0x00007f19c863c380:   mov    %r11,0x20(%rsp)
   0.01%            0x00007f19c863c385:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.02%            0x00007f19c863c38a:   vmovq  %r11,%xmm4
   0.01%            0x00007f19c863c38f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007f19c863c397:   mov    %r11,0x28(%rsp)
   0.02%            0x00007f19c863c39c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.03%            0x00007f19c863c3a4:   mov    %r11,0x30(%rsp)
   0.00%            0x00007f19c863c3a9:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.01%            0x00007f19c863c3ae:   mov    %r11,0x38(%rsp)
   0.02%            0x00007f19c863c3b3:   vmovd  %r10d,%xmm1
   0.02%            0x00007f19c863c3b8:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.01%            0x00007f19c863c3bd:   vmovq  %r10,%xmm5
   0.01%            0x00007f19c863c3c2:   vmovd  %xmm1,%r10d
   0.01%            0x00007f19c863c3c7:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.02%            0x00007f19c863c3cf:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.00%            0x00007f19c863c3d7:   mov    %r10,0x40(%rsp)
   0.01%            0x00007f19c863c3dc:   vmovd  %xmm1,%r10d
   0.01%            0x00007f19c863c3e1:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.03%            0x00007f19c863c3e6:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.01%            0x00007f19c863c3eb:   vmovq  %r10,%xmm6
   0.01%            0x00007f19c863c3f0:   vmovd  %xmm1,%r10d
   0.02%            0x00007f19c863c3f5:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.02%            0x00007f19c863c3fd:   mov    %r10,0x48(%rsp)
   0.01%            0x00007f19c863c402:   vmovd  %xmm1,%r11d
   0.01%            0x00007f19c863c407:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.02%            0x00007f19c863c40f:   mov    %r10,0x50(%rsp)
   0.02%            0x00007f19c863c414:   mov    %r11d,%r10d
                    0x00007f19c863c417:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.01%            0x00007f19c863c41c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.01%            0x00007f19c863c421:   mov    %r11,0x58(%rsp)
   0.02%            0x00007f19c863c426:   vmovd  %xmm1,%r9d
   0.00%            0x00007f19c863c42b:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007f19c863c430:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.01%            0x00007f19c863c438:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
   0.03%            0x00007f19c863c440:   mov    %r9,0x60(%rsp)
   0.02%            0x00007f19c863c445:   vmovd  %xmm1,%r9d
   0.01%            0x00007f19c863c44a:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.02%            0x00007f19c863c44f:   mov    %r9,0x68(%rsp)
   0.01%            0x00007f19c863c454:   vmovd  %xmm1,%r9d
   0.01%            0x00007f19c863c459:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.01%            0x00007f19c863c45e:   mov    %r9,0x70(%rsp)
   0.01%            0x00007f19c863c463:   vmovd  %xmm1,%r9d
   0.02%            0x00007f19c863c468:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.01%            0x00007f19c863c46d:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f19c863c472:   xor    %r9d,%r9d
   0.02%            0x00007f19c863c475:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.03%       ╭    0x00007f19c863c47a:   jmp    0x00007f19c863c497
               │    0x00007f19c863c47c:   nopl   0x0(%rax)
   0.27%       │↗   0x00007f19c863c480:   mov    %rcx,0x28(%rsp)
   0.48%       ││   0x00007f19c863c485:   mov    %rax,%rcx
   0.16%       ││   0x00007f19c863c488:   mov    %r13,0x38(%rsp)
   0.41%       ││   0x00007f19c863c48d:   vmovq  %xmm7,%r10
   0.27%       ││   0x00007f19c863c492:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.40%       ↘│   0x00007f19c863c497:   vmovq  %xmm5,%rdi
   0.16%        │   0x00007f19c863c49c:   xor    0x8(%rsp),%rdi
   0.40%        │   0x00007f19c863c4a1:   xor    0x38(%rsp),%rdi
   0.34%        │   0x00007f19c863c4a6:   xor    0x30(%rsp),%rdi
   0.44%        │   0x00007f19c863c4ab:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.27%        │   0x00007f19c863c4b0:   vmovq  %xmm3,%r9
   0.36%        │   0x00007f19c863c4b5:   xor    0x70(%rsp),%r9
   0.31%        │   0x00007f19c863c4ba:   xor    0x68(%rsp),%r9
   0.41%        │   0x00007f19c863c4bf:   xor    0x60(%rsp),%r9
   0.25%        │   0x00007f19c863c4c4:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.38%        │   0x00007f19c863c4c7:   rorx   $0x3f,%rdi,%rbp
   0.24%        │   0x00007f19c863c4cd:   rorx   $0x3f,%r9,%rsi
   0.43%        │   0x00007f19c863c4d3:   vmovq  %rsi,%xmm7
   0.31%        │   0x00007f19c863c4d8:   vmovq  %xmm4,%rsi
   0.33%        │   0x00007f19c863c4dd:   xor    0x20(%rsp),%rsi
   0.27%        │   0x00007f19c863c4e2:   xor    0x18(%rsp),%rsi
   0.41%        │   0x00007f19c863c4e7:   xor    0x10(%rsp),%rsi
   0.31%        │   0x00007f19c863c4ec:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.33%        │   0x00007f19c863c4ef:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.27%        │   0x00007f19c863c4f2:   rorx   $0x3f,%rsi,%rax
   0.38%        │   0x00007f19c863c4f8:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.25%        │   0x00007f19c863c4fb:   vmovq  %xmm6,%r9
   0.31%        │   0x00007f19c863c500:   xor    0x78(%rsp),%r9
   0.27%        │   0x00007f19c863c505:   xor    %rdx,%r9
   0.36%        │   0x00007f19c863c508:   xor    0x40(%rsp),%r9
   0.29%        │   0x00007f19c863c50d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.29%        │   0x00007f19c863c510:   mov    0x78(%rsp),%rsi
   0.26%        │   0x00007f19c863c515:   xor    %rax,%rsi
   0.37%        │   0x00007f19c863c518:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.27%        │   0x00007f19c863c51e:   rorx   $0x3f,%r9,%r13
   0.35%        │   0x00007f19c863c524:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.28%        │   0x00007f19c863c527:   vmovq  %xmm6,%rdi
   0.42%        │   0x00007f19c863c52c:   xor    %rax,%rdi
   0.32%        │   0x00007f19c863c52f:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.30%        │   0x00007f19c863c535:   mov    %rdi,0x80(%rsp)
   0.45%        │   0x00007f19c863c53d:   xor    %r13,%r11
   0.26%        │   0x00007f19c863c540:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.26%        │   0x00007f19c863c546:   mov    %r11,0xc0(%rsp)
   0.50%        │   0x00007f19c863c54e:   vmovq  %xmm3,%r11
   0.28%        │   0x00007f19c863c553:   xor    %r13,%r11
   0.29%        │   0x00007f19c863c556:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.20%        │   0x00007f19c863c55c:   mov    %r11,0x88(%rsp)
   0.52%        │   0x00007f19c863c564:   mov    0xc0(%rsp),%r11
   0.76%        │   0x00007f19c863c56c:   andn   %rdi,%r11,%r11
   0.56%        │   0x00007f19c863c571:   vmovq  %r11,%xmm3
   1.26%        │   0x00007f19c863c576:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.54%        │   0x00007f19c863c57e:   andn   %rsi,%r11,%r11
   0.26%        │   0x00007f19c863c583:   vmovq  %r11,%xmm8
   1.15%        │   0x00007f19c863c588:   mov    0x60(%rsp),%r11
   0.21%        │   0x00007f19c863c58d:   xor    %r13,%r11
   0.11%        │   0x00007f19c863c590:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.13%        │   0x00007f19c863c596:   mov    %r11,0x90(%rsp)
   0.78%        │   0x00007f19c863c59e:   mov    0x68(%rsp),%r11
   0.23%        │   0x00007f19c863c5a3:   xor    %r13,%r11
   0.14%        │   0x00007f19c863c5a6:   mov    0x70(%rsp),%rdi
   0.15%        │   0x00007f19c863c5ab:   xor    %r13,%rdi
   0.77%        │   0x00007f19c863c5ae:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.21%        │   0x00007f19c863c5b4:   mov    %r11,0x98(%rsp)
   0.09%        │   0x00007f19c863c5bc:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.15%        │   0x00007f19c863c5c2:   mov    %r11,0xa0(%rsp)
   0.75%        │   0x00007f19c863c5ca:   mov    0x40(%rsp),%r11
   0.24%        │   0x00007f19c863c5cf:   xor    %rax,%r11
   0.10%        │   0x00007f19c863c5d2:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.13%        │   0x00007f19c863c5d8:   xor    %rax,%r8
   0.85%        │   0x00007f19c863c5db:   xor    %rax,%rdx
   0.26%        │   0x00007f19c863c5de:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.10%        │   0x00007f19c863c5e4:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.11%        │   0x00007f19c863c5ea:   mov    0x98(%rsp),%r8
   0.80%        │   0x00007f19c863c5f2:   andn   %r11,%r8,%r8
   0.30%        │   0x00007f19c863c5f7:   vmovq  %r8,%xmm9
   0.21%        │   0x00007f19c863c5fc:   mov    0xa0(%rsp),%r8
   0.17%        │   0x00007f19c863c604:   andn   %rdx,%r8,%r8
   0.77%        │   0x00007f19c863c609:   vmovq  %r8,%xmm10
   0.30%        │   0x00007f19c863c60e:   mov    0x90(%rsp),%r8
   0.16%        │   0x00007f19c863c616:   andn   %rdi,%r8,%r8
   0.11%        │   0x00007f19c863c61b:   vmovq  %r8,%xmm11
   0.71%        │   0x00007f19c863c620:   mov    0x50(%rsp),%r8
   0.26%        │   0x00007f19c863c625:   xor    %rbp,%r8
   0.16%        │   0x00007f19c863c628:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.14%        │   0x00007f19c863c62e:   mov    %r8,0xa8(%rsp)
   0.65%        │   0x00007f19c863c636:   mov    0x58(%rsp),%r8
   0.28%        │   0x00007f19c863c63b:   xor    %rbp,%r8
   0.17%        │   0x00007f19c863c63e:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.08%        │   0x00007f19c863c644:   mov    %rbx,%r8
   0.65%        │   0x00007f19c863c647:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.24%        │   0x00007f19c863c64a:   mov    %r8,0xb0(%rsp)
   0.13%        │   0x00007f19c863c652:   mov    %r10,%r13
   0.11%        │   0x00007f19c863c655:   xor    %rbp,%r13
   0.72%        │   0x00007f19c863c658:   mov    0x48(%rsp),%r8
   0.25%        │   0x00007f19c863c65d:   xor    %rbp,%r8
   0.14%        │   0x00007f19c863c660:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.11%        │   0x00007f19c863c666:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.70%        │   0x00007f19c863c66c:   xor    0x58(%rsp),%rbx
   0.25%        │   0x00007f19c863c671:   xor    %r10,%rbx
   0.14%        │   0x00007f19c863c674:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.10%        │   0x00007f19c863c679:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.71%        │   0x00007f19c863c67e:   vmovq  %xmm7,%r10
   0.22%        │   0x00007f19c863c683:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.13%        │   0x00007f19c863c686:   mov    %r10,0xb8(%rsp)
   0.15%        │   0x00007f19c863c68e:   rorx   $0x3f,%rbx,%r8
   0.68%        │   0x00007f19c863c694:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.26%        │   0x00007f19c863c697:   mov    0x30(%rsp),%r10
   0.14%        │   0x00007f19c863c69c:   xor    0xb8(%rsp),%r10
   0.34%        │   0x00007f19c863c6a4:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.76%        │   0x00007f19c863c6aa:   vmovq  %xmm3,%r9
   0.26%        │   0x00007f19c863c6af:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.30%        │   0x00007f19c863c6b2:   mov    %r9,0x78(%rsp)
   0.83%        │   0x00007f19c863c6b7:   xor    %r8,%rcx
   0.41%        │   0x00007f19c863c6ba:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.19%        │   0x00007f19c863c6c0:   andn   0xc0(%rsp),%r10,%rcx
   0.14%        │   0x00007f19c863c6ca:   andn   %r10,%rbp,%r10
   0.44%        │   0x00007f19c863c6cf:   vmovq  %r10,%xmm7
   0.44%        │   0x00007f19c863c6d4:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.18%        │   0x00007f19c863c6d7:   mov    %rcx,0x70(%rsp)
   0.48%        │   0x00007f19c863c6dc:   andn   0xb0(%rsp),%r9,%r10
   0.26%        │   0x00007f19c863c6e6:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.41%        │   0x00007f19c863c6e9:   vmovq  %r10,%xmm6
   0.25%        │   0x00007f19c863c6ee:   andn   %r9,%r11,%r10
   0.36%        │   0x00007f19c863c6f3:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.24%        │   0x00007f19c863c6fb:   vmovq  %r10,%xmm3
   0.42%        │   0x00007f19c863c700:   mov    0x18(%rsp),%r10
   0.20%        │   0x00007f19c863c705:   xor    %r8,%r10
   0.33%        │   0x00007f19c863c708:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.22%        │   0x00007f19c863c70e:   mov    0x10(%rsp),%r10
   0.50%        │   0x00007f19c863c713:   xor    %r8,%r10
   0.23%        │   0x00007f19c863c716:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.32%        │   0x00007f19c863c71c:   andn   %rbx,%rsi,%r11
   0.23%        │   0x00007f19c863c721:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.46%        │   0x00007f19c863c729:   mov    %r11,0x48(%rsp)
   0.36%        │   0x00007f19c863c72e:   andn   %r10,%rdx,%r13
   0.31%        │   0x00007f19c863c733:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.26%        │   0x00007f19c863c73b:   andn   %r14,%r10,%r11
   0.40%        │   0x00007f19c863c740:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.31%        │   0x00007f19c863c743:   mov    %r11,0x68(%rsp)
   0.57%        │   0x00007f19c863c748:   andn   0xa8(%rsp),%rbx,%rcx
   0.20%        │   0x00007f19c863c752:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.36%        │   0x00007f19c863c755:   vmovq  %xmm4,%r11
   0.26%        │   0x00007f19c863c75a:   xor    %r8,%r11
   0.39%        │   0x00007f19c863c75d:   mov    0x20(%rsp),%rdx
   0.19%        │   0x00007f19c863c762:   xor    %r8,%rdx
   0.36%        │   0x00007f19c863c765:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.33%        │   0x00007f19c863c76b:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.37%        │   0x00007f19c863c771:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.20%        │   0x00007f19c863c776:   mov    %rdx,%rsi
   0.37%        │   0x00007f19c863c779:   vmovq  %xmm7,%rdx
   0.27%        │   0x00007f19c863c77e:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.42%        │   0x00007f19c863c781:   mov    %rdx,%rbp
   0.18%        │   0x00007f19c863c784:   mov    0x80(%rsp),%rdx
   0.36%        │   0x00007f19c863c78c:   andn   %r8,%rdx,%r8
   0.28%        │   0x00007f19c863c791:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.40%        │   0x00007f19c863c799:   mov    %r8,0x20(%rsp)
   0.18%        │   0x00007f19c863c79e:   mov    %rsi,%r8
   0.36%        │   0x00007f19c863c7a1:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.31%        │   0x00007f19c863c7a4:   mov    %r8,0x58(%rsp)
   0.43%        │   0x00007f19c863c7a9:   andn   %r11,%rdi,%r8
   0.19%        │   0x00007f19c863c7ae:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.34%        │   0x00007f19c863c7b6:   mov    %r8,0x40(%rsp)
   0.35%        │   0x00007f19c863c7bb:   andn   %rax,%r11,%r8
   0.37%        │   0x00007f19c863c7c0:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.19%        │   0x00007f19c863c7c3:   mov    %r8,0x10(%rsp)
   0.44%        │   0x00007f19c863c7c8:   mov    0x38(%rsp),%r8
   0.27%        │   0x00007f19c863c7cd:   xor    0xb8(%rsp),%r8
   0.38%        │   0x00007f19c863c7d5:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.20%        │   0x00007f19c863c7db:   vmovq  %xmm11,%r8
   0.35%        │   0x00007f19c863c7e0:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.26%        │   0x00007f19c863c7e3:   mov    %r8,0x60(%rsp)
   0.51%        │   0x00007f19c863c7e8:   andn   0x90(%rsp),%rdi,%r8
   0.16%        │   0x00007f19c863c7f2:   andn   %rdi,%rax,%rdi
   0.33%        │   0x00007f19c863c7f7:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.27%        │   0x00007f19c863c7fa:   mov    %rdi,0x50(%rsp)
   0.52%        │   0x00007f19c863c7ff:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.18%        │   0x00007f19c863c802:   mov    %r8,0x30(%rsp)
   0.46%        │   0x00007f19c863c807:   mov    0x28(%rsp),%r11
   0.27%        │   0x00007f19c863c80c:   xor    0xb8(%rsp),%r11
   0.41%        │   0x00007f19c863c814:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.18%        │   0x00007f19c863c81a:   andn   0x88(%rsp),%rdi,%r8
   0.42%        │   0x00007f19c863c824:   vmovq  %xmm8,%r11
   0.28%        │   0x00007f19c863c829:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.42%        │   0x00007f19c863c82c:   mov    %r11,%rax
   0.16%        │   0x00007f19c863c82f:   mov    0xa8(%rsp),%r11
   0.41%        │   0x00007f19c863c837:   andn   %rdi,%r11,%r11
   0.20%        │   0x00007f19c863c83c:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.48%        │   0x00007f19c863c83f:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.16%        │   0x00007f19c863c847:   vmovq  %xmm5,%rbx
   0.35%        │   0x00007f19c863c84c:   xor    0xb8(%rsp),%rbx
   0.21%        │   0x00007f19c863c854:   mov    0x8(%rsp),%rsi
   0.46%        │   0x00007f19c863c859:   xor    0xb8(%rsp),%rsi
   0.16%        │   0x00007f19c863c861:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.39%        │   0x00007f19c863c867:   andn   0xa0(%rsp),%rbx,%rdi
   0.24%        │   0x00007f19c863c871:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.38%        │   0x00007f19c863c876:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.16%        │   0x00007f19c863c879:   vmovq  %rdx,%xmm7
   0.43%        │   0x00007f19c863c87e:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.26%        │   0x00007f19c863c881:   mov    %rdi,0x18(%rsp)
   0.42%        │   0x00007f19c863c886:   andn   %rbx,%r14,%rdx
   0.13%        │   0x00007f19c863c88b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.42%        │   0x00007f19c863c88e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.24%        │   0x00007f19c863c894:   vmovq  %xmm9,%rbx
   0.43%        │   0x00007f19c863c899:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.17%        │   0x00007f19c863c89c:   vmovq  %rbx,%xmm5
   0.39%        │   0x00007f19c863c8a1:   andn   0x98(%rsp),%r10,%rbx
   0.25%        │   0x00007f19c863c8ab:   mov    0xb0(%rsp),%rdi
   0.43%        │   0x00007f19c863c8b3:   andn   %r10,%rdi,%r10
   0.13%        │   0x00007f19c863c8b8:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.41%        │   0x00007f19c863c8bb:   vmovq  %r10,%xmm4
   0.23%        │   0x00007f19c863c8c0:   xor    %rdi,%rbx
   0.40%        │   0x00007f19c863c8c3:   movabs $0x7ff052970,%r9             ;   {oop([J{0x00000007ff052970})}
   0.16%        │   0x00007f19c863c8cd:   vmovd  %xmm12,%r10d
   0.42%        │   0x00007f19c863c8d2:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.25%        │   0x00007f19c863c8d7:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.43%        │   0x00007f19c863c8da:   vmovd  %r10d,%xmm12
   0.17%        │   0x00007f19c863c8df:   nop
   0.38%        │   0x00007f19c863c8e0:   cmp    $0x18,%r10d
                ╰   0x00007f19c863c8e4:   jl     0x00007f19c863c480           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.01%            0x00007f19c863c8ea:   vmovd  %xmm1,%r10d
   0.02%            0x00007f19c863c8ef:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f19c863c8f4:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c8f7:   vmovq  %xmm5,%r10
   0.01%            0x00007f19c863c8fc:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.02%            0x00007f19c863c901:   mov    %r9d,%r10d
   0.00%            0x00007f19c863c904:   vmovq  %xmm3,%r9
   0.03%            0x00007f19c863c909:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f19c863c90e:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c911:   vmovq  %xmm6,%r10
   0.02%            0x00007f19c863c916:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.02%            0x00007f19c863c91b:   mov    %r9d,%r10d
   0.01%            0x00007f19c863c91e:   vmovq  %xmm4,%r9
   0.04%            0x00007f19c863c923:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.01%            0x00007f19c863c928:   mov    %r10d,%r9d
   0.03%            0x00007f19c863c92b:   mov    0x58(%rsp),%r10
   0.01%            0x00007f19c863c930:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.02%            0x00007f19c863c935:   mov    %r9d,%r10d
   0.01%            0x00007f19c863c938:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.01%            0x00007f19c863c93d:   mov    %r10d,%r9d
   0.00%            0x00007f19c863c940:   mov    0x70(%rsp),%r10
   0.02%            0x00007f19c863c945:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.00%            0x00007f19c863c94a:   mov    %r9d,%r10d
   0.02%            0x00007f19c863c94d:   mov    0x78(%rsp),%r9
   0.01%            0x00007f19c863c952:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.02%            0x00007f19c863c957:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c95a:   mov    0x20(%rsp),%r10
   0.02%            0x00007f19c863c95f:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f19c863c964:   mov    %r9d,%r10d
   0.03%            0x00007f19c863c967:   vmovq  %xmm7,%r9
   0.00%            0x00007f19c863c96c:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.01%            0x00007f19c863c971:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.01%            0x00007f19c863c976:   mov    %r10d,%r9d
   0.03%            0x00007f19c863c979:   mov    0x68(%rsp),%r10
   0.01%            0x00007f19c863c97e:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.02%            0x00007f19c863c983:   mov    %r9d,%r10d
   0.02%            0x00007f19c863c986:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.03%            0x00007f19c863c98b:   mov    0x18(%rsp),%r10
   0.00%            0x00007f19c863c990:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.04%            0x00007f19c863c998:   mov    %r9d,%r10d
   0.01%            0x00007f19c863c99b:   mov    0x50(%rsp),%r9
   0.02%            0x00007f19c863c9a0:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f19c863c9a8:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c9ab:   mov    0x30(%rsp),%r10
   0.01%            0x00007f19c863c9b0:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.03%            0x00007f19c863c9b8:   mov    %r9d,%r10d
   0.00%            0x00007f19c863c9bb:   mov    0x60(%rsp),%r9
   0.01%            0x00007f19c863c9c0:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.03%            0x00007f19c863c9c8:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c9cb:   mov    0x40(%rsp),%r10
   0.01%            0x00007f19c863c9d0:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.03%            0x00007f19c863c9d8:   mov    %r9d,%r10d
   0.01%            0x00007f19c863c9db:   mov    0x10(%rsp),%r9
   0.01%            0x00007f19c863c9e0:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.03%            0x00007f19c863c9e8:   mov    %r10d,%r9d
   0.01%            0x00007f19c863c9eb:   mov    0x48(%rsp),%r10
   0.00%            0x00007f19c863c9f0:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.02%            0x00007f19c863c9f8:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.04%            0x00007f19c863ca00:   mov    %r9d,%r10d
   0.00%            0x00007f19c863ca03:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.01%            0x00007f19c863ca0b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.05%            0x00007f19c863ca13:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007f19c863ca1b:   vmovq  %xmm0,%r10
   0.00%            0x00007f19c863ca20:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.01%            0x00007f19c863ca24:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f19c863cd24
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%            0x00007f19c863ca29:   lea    -0x7(%r11),%eax
   0.04%            0x00007f19c863ca2d:   test   %eax,%eax
                    0x00007f19c863ca2f:   jl     0x00007f19c863cd24
   0.01%            0x00007f19c863ca35:   movslq %r11d,%r14
   0.01%            0x00007f19c863ca38:   mov    %r9d,%ecx
   0.00%            0x00007f19c863ca3b:   lea    (%r12,%r9,8),%r10
   0.03%            0x00007f19c863ca3f:   add    $0xfffffffffffffff9,%r14
   0.00%            0x00007f19c863ca43:   lea    (%r12,%rbx,8),%r11
   0.00%            0x00007f19c863ca47:   xor    %edi,%edi
   0.00%            0x00007f19c863ca49:   jmp    0x00007f19c863cb21
                    0x00007f19c863ca4e:   xchg   %ax,%ax
                 ↗  0x00007f19c863ca50:   mov    %edx,%edi
                 │  0x00007f19c863ca52:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f19c863ca56:   mov    %r13d,%r9d
   0.06%         │  0x00007f19c863ca59:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f19c863ca5c:   nopl   0x0(%rax)
   0.06%         │  0x00007f19c863ca60:   cmp    (%rsp),%r13d
                 │  0x00007f19c863ca64:   jae    0x00007f19c863cc0c
   0.10%         │  0x00007f19c863ca6a:   vmovd  %edx,%xmm1
   0.05%         │  0x00007f19c863ca6e:   mov    %edi,%edx
   0.05%         │  0x00007f19c863ca70:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f19c863ca75:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f19c863ca78:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f19c863ca7d:   lea    0x3(%r13),%edi
   0.07%         │  0x00007f19c863ca81:   cmp    (%rsp),%edi
                 │  0x00007f19c863ca84:   jae    0x00007f19c863cc17
   0.06%         │  0x00007f19c863ca8a:   movslq %r13d,%rdi
   0.09%         │  0x00007f19c863ca8d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f19c863ca92:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f19c863ca97:   mov    0x28(%r10,%rdi,8),%r9
   0.06%         │  0x00007f19c863ca9c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f19c863caa1:   mov    %rdi,0x20(%r11,%rbp,1)
   0.05%         │  0x00007f19c863caa6:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f19c863caab:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f19c863caaf:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f19c863cab3:   cmp    %esi,%r8d
                 ╰  0x00007f19c863cab6:   jl     0x00007f19c863ca50           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%            0x00007f19c863cab8:   mov    %edx,%edi
   0.06%            0x00007f19c863caba:   vmovd  %xmm1,%edx
   0.06%            0x00007f19c863cabe:   xchg   %ax,%ax
   0.10%            0x00007f19c863cac0:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f19c863cac3:   jge    0x00007f19c863caef
                    0x00007f19c863cac5:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f19c863cac8:   mov    %r13d,%ebp
                    0x00007f19c863cacb:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  79.03%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 635 

                     0x00007f19c8646ccd:   mov    %r11d,0x28(%rsp)
                     0x00007f19c8646cd2:   mov    %r9d,0x24(%rsp)
                     0x00007f19c8646cd7:   mov    $0x2,%edx
                     0x00007f19c8646cdc:   mov    $0x4,%r11d
                     0x00007f19c8646ce2:   mov    $0x6,%r10d
                     0x00007f19c8646ce8:   xor    %ebp,%ebp
                     0x00007f19c8646cea:   mov    %ebp,0x4(%rsp)
                     0x00007f19c8646cee:   mov    $0x1,%r8d
          ╭          0x00007f19c8646cf4:   jmp    0x00007f19c8646eac
          │          0x00007f19c8646cf9:   nopl   0x0(%rax)
   0.14%  │↗         0x00007f19c8646d00:   vmovd  %xmm1,%r8d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          ││                                                                   ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││                                                                   ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││                                                                   ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││                                                                   ; - java.security.MessageDigest::update@5 (line 357)
          ││                                                                   ; - java.security.MessageDigest::digest@2 (line 432)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  ││ ↗       0x00007f19c8646d05:   mov    %r8d,%r11d
   0.55%  ││ │       0x00007f19c8646d08:   vmovd  %r8d,%xmm1
   0.09%  ││ │       0x00007f19c8646d0d:   add    %r10d,%r11d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.15%  ││ │       0x00007f19c8646d10:   movslq %r10d,%r9                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%  ││ │       0x00007f19c8646d13:   vmovq  %xmm2,%r8
   0.57%  ││ │       0x00007f19c8646d18:   add    %r9,%r8
   0.10%  ││ │       0x00007f19c8646d1b:   mov    0x18(%rsp),%rbx
   0.15%  ││ │       0x00007f19c8646d20:   movsbl 0x10(%rbx,%r8,1),%ebx
   0.04%  ││ │       0x00007f19c8646d26:   xor    %bl,0x10(%rcx,%r9,1)
   1.40%  ││ │       0x00007f19c8646d2b:   lea    (%rdx,%r9,1),%r8
   0.01%  ││ │       0x00007f19c8646d2f:   lea    (%rdi,%r9,1),%r13            ;   {no_reloc}
   0.25%  ││ │       0x00007f19c8646d33:   lea    (%r14,%r9,1),%rax
   0.07%  ││ │       0x00007f19c8646d37:   lea    (%r9,%rbp,1),%rsi
   0.48%  ││ │       0x00007f19c8646d3b:   mov    0x18(%rsp),%rbx
   0.02%  ││ │       0x00007f19c8646d40:   movsbl 0x10(%rbx,%rsi,1),%ebx
   0.22%  ││ │       0x00007f19c8646d45:   xor    %bl,0x11(%rcx,%r9,1)
   0.66%  ││ │       0x00007f19c8646d4a:   mov    0x18(%rsp),%rbx
   0.23%  ││ │       0x00007f19c8646d4f:   movsbl 0x10(%rbx,%rax,1),%ebx
   0.10%  ││ │       0x00007f19c8646d54:   xor    %bl,0x12(%rcx,%r9,1)
   1.02%  ││ │       0x00007f19c8646d59:   mov    0x18(%rsp),%rbx
   0.04%  ││ │       0x00007f19c8646d5e:   movsbl 0x12(%rbx,%rsi,1),%ebx
   0.40%  ││ │       0x00007f19c8646d63:   xor    %bl,0x13(%rcx,%r9,1)
   0.94%  ││ │       0x00007f19c8646d68:   mov    0x18(%rsp),%rbx
   0.19%  ││ │       0x00007f19c8646d6d:   movsbl 0x10(%rbx,%r13,1),%ebx
   0.05%  ││ │       0x00007f19c8646d73:   xor    %bl,0x14(%rcx,%r9,1)
   0.93%  ││ │       0x00007f19c8646d78:   movslq %r11d,%rbx
   0.02%  ││ │       0x00007f19c8646d7b:   mov    0x18(%rsp),%rax
   0.26%  ││ │       0x00007f19c8646d80:   movsbl 0x14(%rax,%rbx,1),%ebx
   0.39%  ││ │       0x00007f19c8646d85:   xor    %bl,0x15(%rcx,%r9,1)
   1.21%  ││ │       0x00007f19c8646d8a:   movsbl 0x10(%rax,%r8,1),%ebx
   0.08%  ││ │       0x00007f19c8646d90:   xor    %bl,0x16(%rcx,%r9,1)
   0.86%  ││ │       0x00007f19c8646d95:   movsbl 0x16(%rax,%rsi,1),%ebx
   0.17%  ││ │       0x00007f19c8646d9a:   xor    %bl,0x17(%rcx,%r9,1)         ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.87%  ││ │       0x00007f19c8646d9f:   add    $0x8,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%  ││ │       0x00007f19c8646da3:   cmp    0x38(%rsp),%r10d
          │╰ │       0x00007f19c8646da8:   jl     0x00007f19c8646d00           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - java.util.Arrays::fill@17 (line 3287)
          │  │                                                                 ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │  │       0x00007f19c8646dae:   mov    0x458(%r15),%r8
          │  │       0x00007f19c8646db5:   add    $0x7,%r11d                   ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                 ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.04%  │  │       0x00007f19c8646db9:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │  │                                                                 ;   {poll}
   0.03%  │  │       0x00007f19c8646dbc:   nopl   0x0(%rax)
   0.01%  │  │       0x00007f19c8646dc0:   cmp    0x2c(%rsp),%r10d
          │ ╭│       0x00007f19c8646dc5:   jge    0x00007f19c8646e15
          │ ││       0x00007f19c8646dc7:   vmovd  %xmm1,%r8d
          │ ││       0x00007f19c8646dcc:   vmovd  %xmm0,%r9d
          │ ││       0x00007f19c8646dd1:   vmovq  %xmm2,%r13
          │ ││       0x00007f19c8646dd6:   mov    0x2c(%rsp),%eax
   0.01%  │ ││    ↗  0x00007f19c8646dda:   mov    %r9d,%esi
   0.00%  │ ││    │  0x00007f19c8646ddd:   sub    %r10d,%esi
   0.04%  │ ││    │  0x00007f19c8646de0:   add    $0xfffffff9,%esi
          │ ││    │  0x00007f19c8646de3:   xor    %ebx,%ebx
   0.00%  │ ││    │  0x00007f19c8646de5:   cmp    %r10d,%eax
   0.00%  │ ││    │  0x00007f19c8646de8:   cmovl  %ebx,%esi
   0.04%  │ ││    │  0x00007f19c8646deb:   cmp    $0x1f40,%esi
   0.00%  │ ││    │  0x00007f19c8646df1:   mov    $0x1f40,%r11d
   0.01%  │ ││    │  0x00007f19c8646df7:   cmova  %r11d,%esi
   0.03%  │ ││    │  0x00007f19c8646dfb:   add    %r10d,%esi
   0.00%  │ ││    │  0x00007f19c8646dfe:   vmovd  %r9d,%xmm0
   0.02%  │ ││    │  0x00007f19c8646e03:   vmovq  %r13,%xmm2
   0.01%  │ ││    │  0x00007f19c8646e08:   mov    %eax,0x2c(%rsp)
   0.03%  │ ││    │  0x00007f19c8646e0c:   mov    %esi,0x38(%rsp)
   0.00%  │ │╰    │  0x00007f19c8646e10:   jmp    0x00007f19c8646d05
   0.00%  │ ↘     │  0x00007f19c8646e15:   vmovd  %xmm0,%r9d
   0.04%  │       │  0x00007f19c8646e1a:   vmovq  %xmm2,%r13
   0.02%  │       │  0x00007f19c8646e1f:   nop
   0.01%  │       │  0x00007f19c8646e20:   cmp    %r9d,%r10d
          │   ╭   │  0x00007f19c8646e23:   jge    0x00007f19c8646e47
   0.00%  │   │   │  0x00007f19c8646e25:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.12%  │   │↗  │  0x00007f19c8646e28:   movslq %r10d,%r8                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.10%  │   ││  │  0x00007f19c8646e2b:   lea    (%r8,%r13,1),%r11
   0.11%  │   ││  │  0x00007f19c8646e2f:   mov    0x18(%rsp),%rbx
   0.06%  │   ││  │  0x00007f19c8646e34:   movsbl 0x10(%rbx,%r11,1),%r11d
   0.08%  │   ││  │  0x00007f19c8646e3a:   xor    %r11b,0x10(%rcx,%r8,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.37%  │   ││  │  0x00007f19c8646e3f:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.06%  │   ││  │  0x00007f19c8646e42:   cmp    %r9d,%r10d
          │   │╰  │  0x00007f19c8646e45:   jl     0x00007f19c8646e28           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%  │   ↘  ↗│  0x00007f19c8646e47:   mov    0x8(%rsp),%rsi
   0.02%  │      ││  0x00007f19c8646e4c:   vzeroupper 
   0.06%  │      ││  0x00007f19c8646e4f:   call   0x00007f19c863c160           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {optimized virtual_call}
   0.04%  │      ││  0x00007f19c8646e54:   nopl   0x40007c4(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {other}
   0.00%  │      ││  0x00007f19c8646e5c:   mov    0x4(%rsp),%r10d
   0.01%  │      ││  0x00007f19c8646e61:   mov    0x8(%rsp),%r13
   0.02%  │      ││  0x00007f19c8646e66:   add    0x1c(%r13),%r10d             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - java.util.Arrays::fill@17 (line 3287)
          │      ││                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │      ││  0x00007f19c8646e6a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r13=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      ││                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │      ││  0x00007f19c8646e71:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {poll}
   0.00%  │      ││  0x00007f19c8646e74:   mov    0x2c(%r13),%ebx              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@4 (line 94)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%  │      ││  0x00007f19c8646e78:   nopl   0x0(%rax,%rax,1)
   0.01%  │      ││  0x00007f19c8646e80:   cmp    0x20(%rsp),%r10d
          │     ╭││  0x00007f19c8646e85:   jg     0x00007f19c8646f45           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │     │││  0x00007f19c8646e8b:   mov    %r10d,0x4(%rsp)
   0.01%  │     │││  0x00007f19c8646e90:   add    $0x6,%r10d
   0.02%  │     │││  0x00007f19c8646e94:   mov    0x4(%rsp),%r8d
   0.01%  │     │││  0x00007f19c8646e99:   inc    %r8d
   0.02%  │     │││  0x00007f19c8646e9c:   mov    0x4(%rsp),%edx
   0.00%  │     │││  0x00007f19c8646ea0:   add    $0x2,%edx
   0.02%  │     │││  0x00007f19c8646ea3:   mov    0x4(%rsp),%r11d
   0.01%  │     │││  0x00007f19c8646ea8:   add    $0x4,%r11d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  ↘     │││  0x00007f19c8646eac:   mov    0xc(%r12,%rbx,8),%r9d        ; implicit exception: dispatches to 0x00007f19c864791c
                │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                │││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%        │││  0x00007f19c8646eb1:   test   %r9d,%r9d
                │╰│  0x00007f19c8646eb4:   jbe    0x00007f19c8646e47           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f19c8646eb6:   mov    0x8(%rsp),%rcx
   0.02%        │ │  0x00007f19c8646ebb:   mov    0x34(%rcx),%edi              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f19c8646ebe:   xchg   %ax,%ax
   0.01%        │ │  0x00007f19c8646ec0:   mov    0xc(%r12,%rdi,8),%ecx        ; implicit exception: dispatches to 0x00007f19c864743f
                │ │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f19c8646ec5:   test   %ecx,%ecx
                │ │  0x00007f19c8646ec7:   jbe    0x00007f19c864743f
   0.01%        │ │  0x00007f19c8646ecd:   mov    %r9d,%esi
   0.01%        │ │  0x00007f19c8646ed0:   dec    %esi
   0.01%        │ │  0x00007f19c8646ed2:   cmp    %ecx,%esi
                │ │  0x00007f19c8646ed4:   jae    0x00007f19c864743f
   0.03%        │ │  0x00007f19c8646eda:   mov    0x4(%rsp),%ebp
   0.01%        │ │  0x00007f19c8646ede:   xchg   %ax,%ax
   0.01%        │ │  0x00007f19c8646ee0:   cmp    (%rsp),%ebp
                │ │  0x00007f19c8646ee3:   jae    0x00007f19c864743f
   0.01%        │ │  0x00007f19c8646ee9:   movslq %r9d,%rcx
   0.03%        │ │  0x00007f19c8646eec:   movslq 0x4(%rsp),%r13
   0.02%        │ │  0x00007f19c8646ef1:   add    %r13,%rcx
   0.00%        │ │  0x00007f19c8646ef4:   dec    %rcx
   0.00%        │ │  0x00007f19c8646ef7:   nopw   0x0(%rax,%rax,1)
   0.02%        │ │  0x00007f19c8646f00:   cmp    0x30(%rsp),%rcx
                │ │  0x00007f19c8646f05:   jae    0x00007f19c864743f
   0.02%        │ │  0x00007f19c8646f0b:   mov    0x18(%rsp),%rcx
   0.01%        │ │  0x00007f19c8646f10:   movsbl 0x10(%rcx,%r13,1),%ebx
   0.04%        │ │  0x00007f19c8646f16:   xor    %bl,0x10(%r12,%rdi,8)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.11%        │ │  0x00007f19c8646f1b:   lea    (%r12,%rdi,8),%rcx
                │ │  0x00007f19c8646f1f:   lea    -0x7(%r9),%eax
                │ │  0x00007f19c8646f23:   cmp    $0x1,%eax
                │ │  0x00007f19c8646f26:   jle    0x00007f19c8647464
   0.00%        │ │  0x00007f19c8646f2c:   movslq %edx,%r14
   0.06%        │ │  0x00007f19c8646f2f:   movslq %r8d,%rbp
   0.00%        │ │  0x00007f19c8646f32:   movslq %r11d,%rdi
   0.01%        │ │  0x00007f19c8646f35:   movslq %r10d,%rdx
   0.01%        │ │  0x00007f19c8646f38:   mov    $0x1,%r10d
   0.04%        │ │  0x00007f19c8646f3e:   xchg   %ax,%ax
                │ ╰  0x00007f19c8646f40:   jmp    0x00007f19c8646dda
                ↘    0x00007f19c8646f45:   mov    (%rsp),%ebp
   0.01%             0x00007f19c8646f48:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@153 (line 131)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
                                                                               ; - java.security.MessageDigest::digest@2 (line 432)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%             0x00007f19c8646f4b:   test   %ebp,%ebp
                     0x00007f19c8646f4d:   jle    0x00007f19c86477bc           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@156 (line 134)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
                                                                               ; - java.security.MessageDigest::digest@2 (line 432)
....................................................................................................
  14.83%  <total for region 2>

....[Hottest Regions]...............................................................................
  79.03%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 598 
  14.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 635 
   2.37%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 598 
   1.55%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 598 
   0.22%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 635 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 635 
   1.32%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.95%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 598 
  15.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 635 
   1.56%              kernel  [unknown] 
   0.08%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.05%                      <unknown> 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        runtime stub  StubRoutines::jbyte_arraycopy 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%           libjvm.so  os::vsnprintf 
   0.16%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%         c2, level 4
   1.56%              kernel
   0.18%           libjvm.so
   0.10%        libc-2.31.so
   0.09%        runtime stub
   0.05%                    
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-384, length = 16384)

# Run progress: 81.82% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 121.316 us/op
# Warmup Iteration   2: 113.048 us/op
# Warmup Iteration   3: 113.038 us/op
# Warmup Iteration   4: 113.027 us/op
# Warmup Iteration   5: 113.028 us/op
Iteration   1: 113.013 us/op
Iteration   2: 113.031 us/op
Iteration   3: 113.103 us/op
Iteration   4: 113.015 us/op
Iteration   5: 113.015 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  113.035 ±(99.9%) 0.149 us/op [Average]
  (min, avg, max) = (113.013, 113.035, 113.103), stdev = 0.039
  CI (99.9%): [112.887, 113.184] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 144967 total address lines.
Perf output processed (skipped 56.221 seconds):
 Column 1: cycles (50720 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 604 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f006863b948:   cmp    %edx,%r8d
          ╭         0x00007f006863b94b:   jge    0x00007f006863b952           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f006863b94d:   mov    %eax,%r10d
          │         0x00007f006863b950:   jmp    0x00007f006863b92c
   0.07%  ↘         0x00007f006863b952:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.10%            0x00007f006863b957:   vmovd  %xmm2,%r11d
   0.02%            0x00007f006863b95c:   vmovd  %xmm3,%r8d
   0.07%            0x00007f006863b961:   vmovd  %xmm1,%ecx
   0.07%            0x00007f006863b965:   mov    (%rsp),%r13
   0.12%            0x00007f006863b969:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%    ↗       0x00007f006863b96d:   mov    0x458(%r15),%r14
   0.08%    │       0x00007f006863b974:   mov    %ebx,%r10d
   0.05%    │       0x00007f006863b977:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.09%    │       0x00007f006863b97a:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.01%    │       0x00007f006863b97d:   data16 xchg %ax,%ax
   0.07%    │       0x00007f006863b980:   cmp    $0x5,%r10d
           ╭│       0x00007f006863b984:   jge    0x00007f006863ba25
   0.04%   ││       0x00007f006863b98a:   mov    %ebx,%edx
   0.08%   ││       0x00007f006863b98c:   shl    $0x5,%edx
   0.01%   ││       0x00007f006863b98f:   lea    (%rdx,%rbx,8),%r14d
   0.07%   ││       0x00007f006863b993:   add    $0x28,%r14d
   0.04%   ││       0x00007f006863b997:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.11%   ││       0x00007f006863b99a:   lea    0x28(%r14),%edx
   0.02%   ││       0x00007f006863b99e:   xchg   %ax,%ax
   0.07%   ││       0x00007f006863b9a0:   cmp    %edx,%r14d
           │╰       0x00007f006863b9a3:   jge    0x00007f006863b96d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.05%   │        0x00007f006863b9a5:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.12%   │        0x00007f006863b9a9:   cmp    %ecx,%r14d
           │        0x00007f006863b9ac:   jae    0x00007f006863c369
   0.04%   │        0x00007f006863b9b2:   vmovd  %eax,%xmm5
   0.07%   │        0x00007f006863b9b6:   mov    %r13,(%rsp)
   0.08%   │        0x00007f006863b9ba:   vmovd  %ecx,%xmm1
   0.14%   │        0x00007f006863b9be:   vmovd  %r8d,%xmm3
   0.03%   │        0x00007f006863b9c3:   movslq %r14d,%r8
   0.07%   │        0x00007f006863b9c6:   add    $0x20,%r8
   0.07%   │        0x00007f006863b9ca:   cmp    %r13,%r8
           │        0x00007f006863b9cd:   jae    0x00007f006863c364
   0.10%   │        0x00007f006863b9d3:   vmovd  %r11d,%xmm2
   0.02%   │        0x00007f006863b9d8:   vmovq  %rdi,%xmm0
   0.08%   │        0x00007f006863b9dd:   lea    0x8(%r14),%r11d
   0.06%   │        0x00007f006863b9e1:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.11%   │  ↗     0x00007f006863b9e4:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.02%   │  │     0x00007f006863b9e9:   mov    %r10d,%eax
   0.07%   │  │     0x00007f006863b9ec:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.06%   │  │     0x00007f006863b9ee:   cmp    %esi,%r10d
           │  │     0x00007f006863b9f1:   jae    0x00007f006863c2c4
   0.13%   │  │     0x00007f006863b9f7:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.01%   │  │     0x00007f006863b9fc:   lea    0x8(%r8),%ecx
   0.07%   │  │     0x00007f006863ba00:   cmp    %r11d,%ecx
           │ ╭│     0x00007f006863ba03:   jge    0x00007f006863ba0d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f006863ba05:   mov    %ecx,%r8d
           │ ││     0x00007f006863ba08:   mov    %eax,%r10d
           │ │╰     0x00007f006863ba0b:   jmp    0x00007f006863b9e4
   0.07%   │ ↘      0x00007f006863ba0d:   lea    0x10(%r14),%r11d
   0.09%   │        0x00007f006863ba11:   cmp    %r11d,%ecx
           │        0x00007f006863ba14:   jge    0x00007f006863c3a0
   0.03%   │        0x00007f006863ba1a:   add    $0x8,%r8d
   0.07%   │        0x00007f006863ba1e:   xchg   %ax,%ax
   0.07%   │        0x00007f006863ba20:   jmp    0x00007f006863b8d3
   0.01%   ↘        0x00007f006863ba25:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.03%            0x00007f006863ba29:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f006863c43c
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007f006863ba2e:   cmp    $0x18,%r11d
                    0x00007f006863ba32:   jbe    0x00007f006863c408
   0.02%            0x00007f006863ba38:   mov    %r11d,(%rsp)
   0.01%            0x00007f006863ba3c:   vmovd  %eax,%xmm2
   0.03%            0x00007f006863ba40:   vmovq  %rdi,%xmm0
   0.01%            0x00007f006863ba45:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.01%            0x00007f006863ba4a:   mov    %r11,0x8(%rsp)
   0.00%            0x00007f006863ba4f:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.04%            0x00007f006863ba54:   vmovq  %r11,%xmm3
   0.00%            0x00007f006863ba59:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f006863ba61:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.02%            0x00007f006863ba69:   mov    %r11,0x10(%rsp)
   0.02%            0x00007f006863ba6e:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.00%            0x00007f006863ba76:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007f006863ba7b:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.01%            0x00007f006863ba80:   mov    %r11,0x20(%rsp)
   0.02%            0x00007f006863ba85:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
   0.00%            0x00007f006863ba8a:   vmovq  %r11,%xmm4
   0.01%            0x00007f006863ba8f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.01%            0x00007f006863ba97:   mov    %r11,0x28(%rsp)
   0.01%            0x00007f006863ba9c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
   0.01%            0x00007f006863baa4:   mov    %r11,0x30(%rsp)
   0.01%            0x00007f006863baa9:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.02%            0x00007f006863baae:   mov    %r11,0x38(%rsp)
   0.03%            0x00007f006863bab3:   vmovd  %r10d,%xmm1
   0.00%            0x00007f006863bab8:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.01%            0x00007f006863babd:   vmovq  %r10,%xmm5
   0.01%            0x00007f006863bac2:   vmovd  %xmm1,%r10d
   0.02%            0x00007f006863bac7:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
   0.01%            0x00007f006863bacf:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.01%            0x00007f006863bad7:   mov    %r10,0x40(%rsp)
   0.01%            0x00007f006863badc:   vmovd  %xmm1,%r10d
   0.02%            0x00007f006863bae1:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.00%            0x00007f006863bae6:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.02%            0x00007f006863baeb:   vmovq  %r10,%xmm6
   0.01%            0x00007f006863baf0:   vmovd  %xmm1,%r10d
   0.02%            0x00007f006863baf5:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
   0.01%            0x00007f006863bafd:   mov    %r10,0x48(%rsp)
   0.01%            0x00007f006863bb02:   vmovd  %xmm1,%r11d
   0.01%            0x00007f006863bb07:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.02%            0x00007f006863bb0f:   mov    %r10,0x50(%rsp)
   0.01%            0x00007f006863bb14:   mov    %r11d,%r10d
   0.02%            0x00007f006863bb17:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.01%            0x00007f006863bb1c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.02%            0x00007f006863bb21:   mov    %r11,0x58(%rsp)
   0.00%            0x00007f006863bb26:   vmovd  %xmm1,%r9d
   0.01%            0x00007f006863bb2b:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.01%            0x00007f006863bb30:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.03%            0x00007f006863bb38:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
                    0x00007f006863bb40:   mov    %r9,0x60(%rsp)
   0.00%            0x00007f006863bb45:   vmovd  %xmm1,%r9d
   0.01%            0x00007f006863bb4a:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.02%            0x00007f006863bb4f:   mov    %r9,0x68(%rsp)
   0.00%            0x00007f006863bb54:   vmovd  %xmm1,%r9d
   0.01%            0x00007f006863bb59:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.01%            0x00007f006863bb5e:   mov    %r9,0x70(%rsp)
   0.02%            0x00007f006863bb63:   vmovd  %xmm1,%r9d
   0.00%            0x00007f006863bb68:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.01%            0x00007f006863bb6d:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f006863bb72:   xor    %r9d,%r9d
   0.03%            0x00007f006863bb75:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.01%       ╭    0x00007f006863bb7a:   jmp    0x00007f006863bb97
               │    0x00007f006863bb7c:   nopl   0x0(%rax)
   0.25%       │↗   0x00007f006863bb80:   mov    %rcx,0x28(%rsp)
   0.34%       ││   0x00007f006863bb85:   mov    %rax,%rcx
   0.15%       ││   0x00007f006863bb88:   mov    %r13,0x38(%rsp)
   0.37%       ││   0x00007f006863bb8d:   vmovq  %xmm7,%r10
   0.28%       ││   0x00007f006863bb92:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.45%       ↘│   0x00007f006863bb97:   vmovq  %xmm5,%rdi
   0.18%        │   0x00007f006863bb9c:   xor    0x8(%rsp),%rdi
   0.48%        │   0x00007f006863bba1:   xor    0x38(%rsp),%rdi
   0.39%        │   0x00007f006863bba6:   xor    0x30(%rsp),%rdi
   0.46%        │   0x00007f006863bbab:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.41%        │   0x00007f006863bbb0:   vmovq  %xmm3,%r9
   0.40%        │   0x00007f006863bbb5:   xor    0x70(%rsp),%r9
   0.26%        │   0x00007f006863bbba:   xor    0x68(%rsp),%r9
   0.39%        │   0x00007f006863bbbf:   xor    0x60(%rsp),%r9
   0.25%        │   0x00007f006863bbc4:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.39%        │   0x00007f006863bbc7:   rorx   $0x3f,%rdi,%rbp
   0.24%        │   0x00007f006863bbcd:   rorx   $0x3f,%r9,%rsi
   0.44%        │   0x00007f006863bbd3:   vmovq  %rsi,%xmm7
   0.33%        │   0x00007f006863bbd8:   vmovq  %xmm4,%rsi
   0.35%        │   0x00007f006863bbdd:   xor    0x20(%rsp),%rsi
   0.24%        │   0x00007f006863bbe2:   xor    0x18(%rsp),%rsi
   0.37%        │   0x00007f006863bbe7:   xor    0x10(%rsp),%rsi
   0.27%        │   0x00007f006863bbec:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.37%        │   0x00007f006863bbef:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.26%        │   0x00007f006863bbf2:   rorx   $0x3f,%rsi,%rax
   0.41%        │   0x00007f006863bbf8:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.36%        │   0x00007f006863bbfb:   vmovq  %xmm6,%r9
   0.37%        │   0x00007f006863bc00:   xor    0x78(%rsp),%r9
   0.24%        │   0x00007f006863bc05:   xor    %rdx,%r9
   0.36%        │   0x00007f006863bc08:   xor    0x40(%rsp),%r9
   0.34%        │   0x00007f006863bc0d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.33%        │   0x00007f006863bc10:   mov    0x78(%rsp),%rsi
   0.28%        │   0x00007f006863bc15:   xor    %rax,%rsi
   0.37%        │   0x00007f006863bc18:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.26%        │   0x00007f006863bc1e:   rorx   $0x3f,%r9,%r13
   0.30%        │   0x00007f006863bc24:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.21%        │   0x00007f006863bc27:   vmovq  %xmm6,%rdi
   0.53%        │   0x00007f006863bc2c:   xor    %rax,%rdi
   0.30%        │   0x00007f006863bc2f:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.36%        │   0x00007f006863bc35:   mov    %rdi,0x80(%rsp)
   0.50%        │   0x00007f006863bc3d:   xor    %r13,%r11
   0.34%        │   0x00007f006863bc40:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.22%        │   0x00007f006863bc46:   mov    %r11,0xc0(%rsp)
   0.59%        │   0x00007f006863bc4e:   vmovq  %xmm3,%r11
   0.24%        │   0x00007f006863bc53:   xor    %r13,%r11
   0.29%        │   0x00007f006863bc56:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.21%        │   0x00007f006863bc5c:   mov    %r11,0x88(%rsp)
   0.58%        │   0x00007f006863bc64:   mov    0xc0(%rsp),%r11
   0.79%        │   0x00007f006863bc6c:   andn   %rdi,%r11,%r11
   0.55%        │   0x00007f006863bc71:   vmovq  %r11,%xmm3
   1.16%        │   0x00007f006863bc76:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.54%        │   0x00007f006863bc7e:   andn   %rsi,%r11,%r11
   0.27%        │   0x00007f006863bc83:   vmovq  %r11,%xmm8
   1.25%        │   0x00007f006863bc88:   mov    0x60(%rsp),%r11
   0.21%        │   0x00007f006863bc8d:   xor    %r13,%r11
   0.13%        │   0x00007f006863bc90:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.15%        │   0x00007f006863bc96:   mov    %r11,0x90(%rsp)
   0.74%        │   0x00007f006863bc9e:   mov    0x68(%rsp),%r11
   0.21%        │   0x00007f006863bca3:   xor    %r13,%r11
   0.13%        │   0x00007f006863bca6:   mov    0x70(%rsp),%rdi
   0.11%        │   0x00007f006863bcab:   xor    %r13,%rdi
   0.83%        │   0x00007f006863bcae:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.18%        │   0x00007f006863bcb4:   mov    %r11,0x98(%rsp)
   0.11%        │   0x00007f006863bcbc:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.16%        │   0x00007f006863bcc2:   mov    %r11,0xa0(%rsp)
   0.75%        │   0x00007f006863bcca:   mov    0x40(%rsp),%r11
   0.21%        │   0x00007f006863bccf:   xor    %rax,%r11
   0.12%        │   0x00007f006863bcd2:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.14%        │   0x00007f006863bcd8:   xor    %rax,%r8
   0.77%        │   0x00007f006863bcdb:   xor    %rax,%rdx
   0.24%        │   0x00007f006863bcde:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.10%        │   0x00007f006863bce4:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.16%        │   0x00007f006863bcea:   mov    0x98(%rsp),%r8
   0.89%        │   0x00007f006863bcf2:   andn   %r11,%r8,%r8
   0.28%        │   0x00007f006863bcf7:   vmovq  %r8,%xmm9
   0.26%        │   0x00007f006863bcfc:   mov    0xa0(%rsp),%r8
   0.16%        │   0x00007f006863bd04:   andn   %rdx,%r8,%r8
   0.78%        │   0x00007f006863bd09:   vmovq  %r8,%xmm10
   0.24%        │   0x00007f006863bd0e:   mov    0x90(%rsp),%r8
   0.21%        │   0x00007f006863bd16:   andn   %rdi,%r8,%r8
   0.11%        │   0x00007f006863bd1b:   vmovq  %r8,%xmm11
   0.77%        │   0x00007f006863bd20:   mov    0x50(%rsp),%r8
   0.24%        │   0x00007f006863bd25:   xor    %rbp,%r8
   0.18%        │   0x00007f006863bd28:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.11%        │   0x00007f006863bd2e:   mov    %r8,0xa8(%rsp)
   0.71%        │   0x00007f006863bd36:   mov    0x58(%rsp),%r8
   0.29%        │   0x00007f006863bd3b:   xor    %rbp,%r8
   0.18%        │   0x00007f006863bd3e:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.13%        │   0x00007f006863bd44:   mov    %rbx,%r8
   0.78%        │   0x00007f006863bd47:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.26%        │   0x00007f006863bd4a:   mov    %r8,0xb0(%rsp)
   0.18%        │   0x00007f006863bd52:   mov    %r10,%r13
   0.12%        │   0x00007f006863bd55:   xor    %rbp,%r13
   0.74%        │   0x00007f006863bd58:   mov    0x48(%rsp),%r8
   0.23%        │   0x00007f006863bd5d:   xor    %rbp,%r8
   0.17%        │   0x00007f006863bd60:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.13%        │   0x00007f006863bd66:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.68%        │   0x00007f006863bd6c:   xor    0x58(%rsp),%rbx
   0.26%        │   0x00007f006863bd71:   xor    %r10,%rbx
   0.17%        │   0x00007f006863bd74:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.13%        │   0x00007f006863bd79:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.79%        │   0x00007f006863bd7e:   vmovq  %xmm7,%r10
   0.25%        │   0x00007f006863bd83:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.22%        │   0x00007f006863bd86:   mov    %r10,0xb8(%rsp)
   0.12%        │   0x00007f006863bd8e:   rorx   $0x3f,%rbx,%r8
   0.73%        │   0x00007f006863bd94:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.26%        │   0x00007f006863bd97:   mov    0x30(%rsp),%r10
   0.20%        │   0x00007f006863bd9c:   xor    0xb8(%rsp),%r10
   0.21%        │   0x00007f006863bda4:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.76%        │   0x00007f006863bdaa:   vmovq  %xmm3,%r9
   0.18%        │   0x00007f006863bdaf:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.29%        │   0x00007f006863bdb2:   mov    %r9,0x78(%rsp)
   0.74%        │   0x00007f006863bdb7:   xor    %r8,%rcx
   0.46%        │   0x00007f006863bdba:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.21%        │   0x00007f006863bdc0:   andn   0xc0(%rsp),%r10,%rcx
   0.19%        │   0x00007f006863bdca:   andn   %r10,%rbp,%r10
   0.41%        │   0x00007f006863bdcf:   vmovq  %r10,%xmm7
   0.53%        │   0x00007f006863bdd4:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.19%        │   0x00007f006863bdd7:   mov    %rcx,0x70(%rsp)
   0.51%        │   0x00007f006863bddc:   andn   0xb0(%rsp),%r9,%r10
   0.35%        │   0x00007f006863bde6:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.49%        │   0x00007f006863bde9:   vmovq  %r10,%xmm6
   0.21%        │   0x00007f006863bdee:   andn   %r9,%r11,%r10
   0.34%        │   0x00007f006863bdf3:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.23%        │   0x00007f006863bdfb:   vmovq  %r10,%xmm3
   0.52%        │   0x00007f006863be00:   mov    0x18(%rsp),%r10
   0.18%        │   0x00007f006863be05:   xor    %r8,%r10
   0.37%        │   0x00007f006863be08:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.22%        │   0x00007f006863be0e:   mov    0x10(%rsp),%r10
   0.51%        │   0x00007f006863be13:   xor    %r8,%r10
   0.18%        │   0x00007f006863be16:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.36%        │   0x00007f006863be1c:   andn   %rbx,%rsi,%r11
   0.20%        │   0x00007f006863be21:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.50%        │   0x00007f006863be29:   mov    %r11,0x48(%rsp)
   0.33%        │   0x00007f006863be2e:   andn   %r10,%rdx,%r13
   0.30%        │   0x00007f006863be33:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.26%        │   0x00007f006863be3b:   andn   %r14,%r10,%r11
   0.49%        │   0x00007f006863be40:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.31%        │   0x00007f006863be43:   mov    %r11,0x68(%rsp)
   0.53%        │   0x00007f006863be48:   andn   0xa8(%rsp),%rbx,%rcx
   0.18%        │   0x00007f006863be52:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.47%        │   0x00007f006863be55:   vmovq  %xmm4,%r11
   0.26%        │   0x00007f006863be5a:   xor    %r8,%r11
   0.42%        │   0x00007f006863be5d:   mov    0x20(%rsp),%rdx
   0.21%        │   0x00007f006863be62:   xor    %r8,%rdx
   0.42%        │   0x00007f006863be65:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.26%        │   0x00007f006863be6b:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.40%        │   0x00007f006863be71:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.20%        │   0x00007f006863be76:   mov    %rdx,%rsi
   0.42%        │   0x00007f006863be79:   vmovq  %xmm7,%rdx
   0.28%        │   0x00007f006863be7e:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.40%        │   0x00007f006863be81:   mov    %rdx,%rbp
   0.18%        │   0x00007f006863be84:   mov    0x80(%rsp),%rdx
   0.41%        │   0x00007f006863be8c:   andn   %r8,%rdx,%r8
   0.23%        │   0x00007f006863be91:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.40%        │   0x00007f006863be99:   mov    %r8,0x20(%rsp)
   0.22%        │   0x00007f006863be9e:   mov    %rsi,%r8
   0.43%        │   0x00007f006863bea1:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.23%        │   0x00007f006863bea4:   mov    %r8,0x58(%rsp)
   0.45%        │   0x00007f006863bea9:   andn   %r11,%rdi,%r8
   0.19%        │   0x00007f006863beae:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.42%        │   0x00007f006863beb6:   mov    %r8,0x40(%rsp)
   0.23%        │   0x00007f006863bebb:   andn   %rax,%r11,%r8
   0.38%        │   0x00007f006863bec0:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.20%        │   0x00007f006863bec3:   mov    %r8,0x10(%rsp)
   0.45%        │   0x00007f006863bec8:   mov    0x38(%rsp),%r8
   0.25%        │   0x00007f006863becd:   xor    0xb8(%rsp),%r8
   0.41%        │   0x00007f006863bed5:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.19%        │   0x00007f006863bedb:   vmovq  %xmm11,%r8
   0.43%        │   0x00007f006863bee0:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.24%        │   0x00007f006863bee3:   mov    %r8,0x60(%rsp)
   0.48%        │   0x00007f006863bee8:   andn   0x90(%rsp),%rdi,%r8
   0.17%        │   0x00007f006863bef2:   andn   %rdi,%rax,%rdi
   0.38%        │   0x00007f006863bef7:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.23%        │   0x00007f006863befa:   mov    %rdi,0x50(%rsp)
   0.53%        │   0x00007f006863beff:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.19%        │   0x00007f006863bf02:   mov    %r8,0x30(%rsp)
   0.50%        │   0x00007f006863bf07:   mov    0x28(%rsp),%r11
   0.27%        │   0x00007f006863bf0c:   xor    0xb8(%rsp),%r11
   0.44%        │   0x00007f006863bf14:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.20%        │   0x00007f006863bf1a:   andn   0x88(%rsp),%rdi,%r8
   0.45%        │   0x00007f006863bf24:   vmovq  %xmm8,%r11
   0.23%        │   0x00007f006863bf29:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.43%        │   0x00007f006863bf2c:   mov    %r11,%rax
   0.16%        │   0x00007f006863bf2f:   mov    0xa8(%rsp),%r11
   0.40%        │   0x00007f006863bf37:   andn   %rdi,%r11,%r11
   0.23%        │   0x00007f006863bf3c:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.43%        │   0x00007f006863bf3f:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.18%        │   0x00007f006863bf47:   vmovq  %xmm5,%rbx
   0.40%        │   0x00007f006863bf4c:   xor    0xb8(%rsp),%rbx
   0.22%        │   0x00007f006863bf54:   mov    0x8(%rsp),%rsi
   0.40%        │   0x00007f006863bf59:   xor    0xb8(%rsp),%rsi
   0.18%        │   0x00007f006863bf61:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.46%        │   0x00007f006863bf67:   andn   0xa0(%rsp),%rbx,%rdi
   0.22%        │   0x00007f006863bf71:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.42%        │   0x00007f006863bf76:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.18%        │   0x00007f006863bf79:   vmovq  %rdx,%xmm7
   0.44%        │   0x00007f006863bf7e:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.22%        │   0x00007f006863bf81:   mov    %rdi,0x18(%rsp)
   0.52%        │   0x00007f006863bf86:   andn   %rbx,%r14,%rdx
   0.18%        │   0x00007f006863bf8b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.43%        │   0x00007f006863bf8e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.21%        │   0x00007f006863bf94:   vmovq  %xmm9,%rbx
   0.44%        │   0x00007f006863bf99:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.16%        │   0x00007f006863bf9c:   vmovq  %rbx,%xmm5
   0.44%        │   0x00007f006863bfa1:   andn   0x98(%rsp),%r10,%rbx
   0.21%        │   0x00007f006863bfab:   mov    0xb0(%rsp),%rdi
   0.45%        │   0x00007f006863bfb3:   andn   %r10,%rdi,%r10
   0.16%        │   0x00007f006863bfb8:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.43%        │   0x00007f006863bfbb:   vmovq  %r10,%xmm4
   0.25%        │   0x00007f006863bfc0:   xor    %rdi,%rbx
   0.45%        │   0x00007f006863bfc3:   movabs $0x7ff052970,%r9             ;   {oop([J{0x00000007ff052970})}
   0.19%        │   0x00007f006863bfcd:   vmovd  %xmm12,%r10d
   0.37%        │   0x00007f006863bfd2:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.25%        │   0x00007f006863bfd7:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.43%        │   0x00007f006863bfda:   vmovd  %r10d,%xmm12
   0.19%        │   0x00007f006863bfdf:   nop
   0.41%        │   0x00007f006863bfe0:   cmp    $0x18,%r10d
                ╰   0x00007f006863bfe4:   jl     0x00007f006863bb80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.01%            0x00007f006863bfea:   vmovd  %xmm1,%r10d
   0.01%            0x00007f006863bfef:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f006863bff4:   mov    %r10d,%r9d
   0.03%            0x00007f006863bff7:   vmovq  %xmm5,%r10
   0.01%            0x00007f006863bffc:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.01%            0x00007f006863c001:   mov    %r9d,%r10d
   0.02%            0x00007f006863c004:   vmovq  %xmm3,%r9
   0.02%            0x00007f006863c009:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f006863c00e:   mov    %r10d,%r9d
   0.02%            0x00007f006863c011:   vmovq  %xmm6,%r10
   0.01%            0x00007f006863c016:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.01%            0x00007f006863c01b:   mov    %r9d,%r10d
   0.01%            0x00007f006863c01e:   vmovq  %xmm4,%r9
   0.02%            0x00007f006863c023:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.02%            0x00007f006863c028:   mov    %r10d,%r9d
   0.01%            0x00007f006863c02b:   mov    0x58(%rsp),%r10
   0.01%            0x00007f006863c030:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.03%            0x00007f006863c035:   mov    %r9d,%r10d
   0.01%            0x00007f006863c038:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.01%            0x00007f006863c03d:   mov    %r10d,%r9d
   0.01%            0x00007f006863c040:   mov    0x70(%rsp),%r10
   0.01%            0x00007f006863c045:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
   0.01%            0x00007f006863c04a:   mov    %r9d,%r10d
   0.02%            0x00007f006863c04d:   mov    0x78(%rsp),%r9
   0.01%            0x00007f006863c052:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.01%            0x00007f006863c057:   mov    %r10d,%r9d
   0.00%            0x00007f006863c05a:   mov    0x20(%rsp),%r10
   0.03%            0x00007f006863c05f:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f006863c064:   mov    %r9d,%r10d
   0.01%            0x00007f006863c067:   vmovq  %xmm7,%r9
   0.01%            0x00007f006863c06c:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.01%            0x00007f006863c071:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.01%            0x00007f006863c076:   mov    %r10d,%r9d
   0.02%            0x00007f006863c079:   mov    0x68(%rsp),%r10
   0.01%            0x00007f006863c07e:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.01%            0x00007f006863c083:   mov    %r9d,%r10d
   0.01%            0x00007f006863c086:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.02%            0x00007f006863c08b:   mov    0x18(%rsp),%r10
   0.01%            0x00007f006863c090:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.01%            0x00007f006863c098:   mov    %r9d,%r10d
   0.01%            0x00007f006863c09b:   mov    0x50(%rsp),%r9
   0.02%            0x00007f006863c0a0:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f006863c0a8:   mov    %r10d,%r9d
   0.01%            0x00007f006863c0ab:   mov    0x30(%rsp),%r10
   0.01%            0x00007f006863c0b0:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.02%            0x00007f006863c0b8:   mov    %r9d,%r10d
   0.01%            0x00007f006863c0bb:   mov    0x60(%rsp),%r9
   0.02%            0x00007f006863c0c0:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.02%            0x00007f006863c0c8:   mov    %r10d,%r9d
   0.02%            0x00007f006863c0cb:   mov    0x40(%rsp),%r10
   0.01%            0x00007f006863c0d0:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.03%            0x00007f006863c0d8:   mov    %r9d,%r10d
   0.01%            0x00007f006863c0db:   mov    0x10(%rsp),%r9
   0.02%            0x00007f006863c0e0:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.01%            0x00007f006863c0e8:   mov    %r10d,%r9d
   0.01%            0x00007f006863c0eb:   mov    0x48(%rsp),%r10
   0.01%            0x00007f006863c0f0:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.02%            0x00007f006863c0f8:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.02%            0x00007f006863c100:   mov    %r9d,%r10d
   0.02%            0x00007f006863c103:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.02%            0x00007f006863c10b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.01%            0x00007f006863c113:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.03%            0x00007f006863c11b:   vmovq  %xmm0,%r10
   0.00%            0x00007f006863c120:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.01%            0x00007f006863c124:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f006863c424
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.02%            0x00007f006863c129:   lea    -0x7(%r11),%eax
   0.03%            0x00007f006863c12d:   test   %eax,%eax
                    0x00007f006863c12f:   jl     0x00007f006863c424
   0.01%            0x00007f006863c135:   movslq %r11d,%r14
   0.00%            0x00007f006863c138:   mov    %r9d,%ecx
   0.01%            0x00007f006863c13b:   lea    (%r12,%r9,8),%r10
   0.03%            0x00007f006863c13f:   add    $0xfffffffffffffff9,%r14
   0.01%            0x00007f006863c143:   lea    (%r12,%rbx,8),%r11
   0.01%            0x00007f006863c147:   xor    %edi,%edi
   0.01%            0x00007f006863c149:   jmp    0x00007f006863c221
                    0x00007f006863c14e:   xchg   %ax,%ax
                 ↗  0x00007f006863c150:   mov    %edx,%edi
                 │  0x00007f006863c152:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f006863c156:   mov    %r13d,%r9d
   0.06%         │  0x00007f006863c159:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f006863c15c:   nopl   0x0(%rax)
   0.08%         │  0x00007f006863c160:   cmp    (%rsp),%r13d
                 │  0x00007f006863c164:   jae    0x00007f006863c30c
   0.07%         │  0x00007f006863c16a:   vmovd  %edx,%xmm1
   0.07%         │  0x00007f006863c16e:   mov    %edi,%edx
   0.05%         │  0x00007f006863c170:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f006863c175:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f006863c178:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f006863c17d:   lea    0x3(%r13),%edi
   0.05%         │  0x00007f006863c181:   cmp    (%rsp),%edi
                 │  0x00007f006863c184:   jae    0x00007f006863c317
   0.07%         │  0x00007f006863c18a:   movslq %r13d,%rdi
   0.07%         │  0x00007f006863c18d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f006863c192:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f006863c197:   mov    0x28(%r10,%rdi,8),%r9
   0.05%         │  0x00007f006863c19c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f006863c1a1:   mov    %rdi,0x20(%r11,%rbp,1)
   0.06%         │  0x00007f006863c1a6:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f006863c1ab:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f006863c1af:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f006863c1b3:   cmp    %esi,%r8d
                 ╰  0x00007f006863c1b6:   jl     0x00007f006863c150           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%            0x00007f006863c1b8:   mov    %edx,%edi
   0.06%            0x00007f006863c1ba:   vmovd  %xmm1,%edx
   0.06%            0x00007f006863c1be:   xchg   %ax,%ax
   0.06%            0x00007f006863c1c0:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f006863c1c3:   jge    0x00007f006863c1ef
                    0x00007f006863c1c5:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f006863c1c8:   mov    %r13d,%ebp
                    0x00007f006863c1cb:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  81.28%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 643 

                     0x00007f0068646941:   mov    %r10d,(%rsp)
                     0x00007f0068646945:   mov    %r11d,0x28(%rsp)
                     0x00007f006864694a:   mov    %r9d,0x24(%rsp)
                     0x00007f006864694f:   mov    $0x6,%ecx
                     0x00007f0068646954:   mov    $0x2,%r10d
                     0x00007f006864695a:   mov    $0x4,%r11d
                     0x00007f0068646960:   xor    %ebp,%ebp
                     0x00007f0068646962:   mov    %ebp,0x4(%rsp)
                     0x00007f0068646966:   mov    $0x1,%edi
          ╭          0x00007f006864696b:   jmp    0x00007f0068646b28
   0.08%  │↗         0x00007f0068646970:   vmovd  %xmm0,%edi                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          ││                                                                   ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││                                                                   ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││                                                                   ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││                                                                   ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││                                                                   ; - java.security.MessageDigest::update@5 (line 357)
          ││                                                                   ; - java.security.MessageDigest::digest@2 (line 432)
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.47%  ││ ↗       0x00007f0068646974:   mov    %edi,%edx
   0.09%  ││ │       0x00007f0068646976:   vmovd  %edi,%xmm0
   0.05%  ││ │       0x00007f006864697a:   add    %r10d,%edx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.08%  ││ │       0x00007f006864697d:   movslq %r10d,%rax                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.39%  ││ │       0x00007f0068646980:   vmovq  %xmm1,%r11
   0.07%  ││ │       0x00007f0068646985:   add    %rax,%r11
   0.06%  ││ │       0x00007f0068646988:   mov    0x18(%rsp),%r8
   0.06%  ││ │       0x00007f006864698d:   movsbl 0x10(%r8,%r11,1),%r11d
   0.43%  ││ │       0x00007f0068646993:   xor    %r11b,0x10(%r9,%rax,1)
   0.29%  ││ │       0x00007f0068646998:   lea    (%r14,%rax,1),%r8
   0.35%  ││ │       0x00007f006864699c:   lea    (%rax,%r13,1),%rbx
   0.08%  ││ │       0x00007f00686469a0:   lea    (%rax,%rbp,1),%rsi
   0.03%  ││ │       0x00007f00686469a4:   lea    (%rcx,%rax,1),%rdi
   0.14%  ││ │       0x00007f00686469a8:   mov    0x18(%rsp),%r11
   0.34%  ││ │       0x00007f00686469ad:   movsbl 0x10(%r11,%rdi,1),%r11d      ;   {no_reloc}
   0.09%  ││ │       0x00007f00686469b3:   xor    %r11b,0x11(%r9,%rax,1)
   0.66%  ││ │       0x00007f00686469b8:   mov    0x18(%rsp),%r11
   0.05%  ││ │       0x00007f00686469bd:   movsbl 0x10(%r11,%rsi,1),%r11d
   0.04%  ││ │       0x00007f00686469c3:   xor    %r11b,0x12(%r9,%rax,1)
   0.62%  ││ │       0x00007f00686469c8:   mov    0x18(%rsp),%r11
   0.03%  ││ │       0x00007f00686469cd:   movsbl 0x12(%r11,%rdi,1),%r11d
   0.10%  ││ │       0x00007f00686469d3:   xor    %r11b,0x13(%r9,%rax,1)
   0.58%  ││ │       0x00007f00686469d8:   mov    0x18(%rsp),%r11
   0.12%  ││ │       0x00007f00686469dd:   movsbl 0x10(%r11,%rbx,1),%r11d
   0.46%  ││ │       0x00007f00686469e3:   xor    %r11b,0x14(%r9,%rax,1)
   0.71%  ││ │       0x00007f00686469e8:   movslq %edx,%rbx
   0.20%  ││ │       0x00007f00686469eb:   mov    0x18(%rsp),%r11
   0.05%  ││ │       0x00007f00686469f0:   movsbl 0x14(%r11,%rbx,1),%r11d
   0.07%  ││ │       0x00007f00686469f6:   xor    %r11b,0x15(%r9,%rax,1)
   0.74%  ││ │       0x00007f00686469fb:   mov    0x18(%rsp),%r11
   0.03%  ││ │       0x00007f0068646a00:   movsbl 0x10(%r11,%r8,1),%r11d
   0.30%  ││ │       0x00007f0068646a06:   xor    %r11b,0x16(%r9,%rax,1)
   0.49%  ││ │       0x00007f0068646a0b:   mov    0x18(%rsp),%r11
   0.20%  ││ │       0x00007f0068646a10:   movsbl 0x16(%r11,%rbx,1),%r11d
   0.63%  ││ │       0x00007f0068646a16:   xor    %r11b,0x17(%r9,%rax,1)       ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   1.15%  ││ │       0x00007f0068646a1b:   add    $0x8,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          ││ │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          ││ │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          ││ │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          ││ │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          ││ │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          ││ │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          ││ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%  ││ │       0x00007f0068646a1f:   nop
   0.02%  ││ │       0x00007f0068646a20:   cmp    0x38(%rsp),%r10d
          │╰ │       0x00007f0068646a25:   jl     0x00007f0068646970           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - java.util.Arrays::fill@17 (line 3287)
          │  │                                                                 ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │  │       0x00007f0068646a2b:   mov    0x458(%r15),%r11
   0.05%  │  │       0x00007f0068646a32:   add    $0x7,%edx                    ; ImmutableOopMap {r9=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │  │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                                 ; - (reexecute) sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.00%  │  │       0x00007f0068646a35:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress0@30 (line 94)
          │  │                                                                 ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │  │                                                                 ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │  │                                                                 ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │  │                                                                 ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │  │                                                                 ; - java.security.MessageDigest::update@5 (line 357)
          │  │                                                                 ; - java.security.MessageDigest::digest@2 (line 432)
          │  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │  │                                                                 ;   {poll}
   0.01%  │  │       0x00007f0068646a38:   nopl   0x0(%rax,%rax,1)
   0.00%  │  │       0x00007f0068646a40:   cmp    0x2c(%rsp),%r10d
          │ ╭│       0x00007f0068646a45:   jge    0x00007f0068646a96
          │ ││       0x00007f0068646a47:   vmovd  %xmm0,%edi
          │ ││       0x00007f0068646a4b:   vmovd  %xmm2,%ebx
          │ ││       0x00007f0068646a4f:   vmovq  %xmm1,%rax
          │ ││       0x00007f0068646a54:   mov    0x2c(%rsp),%esi
   0.00%  │ ││    ↗  0x00007f0068646a58:   mov    %ebx,%r8d
   0.02%  │ ││    │  0x00007f0068646a5b:   sub    %r10d,%r8d
   0.02%  │ ││    │  0x00007f0068646a5e:   add    $0xfffffff9,%r8d
   0.00%  │ ││    │  0x00007f0068646a62:   xor    %edx,%edx
   0.01%  │ ││    │  0x00007f0068646a64:   cmp    %r10d,%esi
   0.02%  │ ││    │  0x00007f0068646a67:   cmovl  %edx,%r8d
   0.02%  │ ││    │  0x00007f0068646a6b:   cmp    $0x1f40,%r8d
   0.00%  │ ││    │  0x00007f0068646a72:   mov    $0x1f40,%r11d
   0.00%  │ ││    │  0x00007f0068646a78:   cmova  %r11d,%r8d
   0.04%  │ ││    │  0x00007f0068646a7c:   add    %r10d,%r8d
   0.00%  │ ││    │  0x00007f0068646a7f:   vmovd  %ebx,%xmm2
   0.00%  │ ││    │  0x00007f0068646a83:   vmovq  %rax,%xmm1
   0.03%  │ ││    │  0x00007f0068646a88:   mov    %esi,0x2c(%rsp)
   0.03%  │ ││    │  0x00007f0068646a8c:   mov    %r8d,0x38(%rsp)
   0.01%  │ │╰    │  0x00007f0068646a91:   jmp    0x00007f0068646974
   0.04%  │ ↘     │  0x00007f0068646a96:   vmovd  %xmm2,%ebx
   0.00%  │       │  0x00007f0068646a9a:   vmovq  %xmm1,%rax
   0.01%  │       │  0x00007f0068646a9f:   nop
   0.00%  │       │  0x00007f0068646aa0:   cmp    %ebx,%r10d
          │   ╭   │  0x00007f0068646aa3:   jge    0x00007f0068646ac7
   0.04%  │   │   │  0x00007f0068646aa5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@11 (line 95)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%  │   │↗  │  0x00007f0068646aa8:   movslq %r10d,%r11                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.11%  │   ││  │  0x00007f0068646aab:   lea    (%rax,%r11,1),%r8
   0.11%  │   ││  │  0x00007f0068646aaf:   mov    0x18(%rsp),%rcx
   0.07%  │   ││  │  0x00007f0068646ab4:   movsbl 0x10(%rcx,%r8,1),%r8d
   0.07%  │   ││  │  0x00007f0068646aba:   xor    %r8b,0x10(%r9,%r11,1)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.38%  │   ││  │  0x00007f0068646abf:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress0@27 (line 94)
          │   ││  │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   ││  │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   ││  │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   ││  │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   ││  │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.08%  │   ││  │  0x00007f0068646ac2:   cmp    %ebx,%r10d
          │   │╰  │  0x00007f0068646ac5:   jl     0x00007f0068646aa8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
          │   │   │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │   │   │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │   │   │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │   │   │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │   │   │                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │   │   │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │   │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%  │   ↘  ↗│  0x00007f0068646ac7:   mov    0x8(%rsp),%rsi
   0.01%  │      ││  0x00007f0068646acc:   vzeroupper 
   0.05%  │      ││  0x00007f0068646acf:   call   0x00007f006863b860           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {optimized virtual_call}
   0.03%  │      ││  0x00007f0068646ad4:   nopl   0x40007c4(%rax,%rax,1)       ;*invokevirtual keccak {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@34 (line 97)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {other}
   0.02%  │      ││  0x00007f0068646adc:   mov    0x4(%rsp),%r10d
   0.02%  │      ││  0x00007f0068646ae1:   mov    0x8(%rsp),%r13
   0.03%  │      ││  0x00007f0068646ae6:   add    0x1c(%r13),%r10d             ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - java.util.Arrays::fill@17 (line 3287)
          │      ││                                                            ; - sun.security.provider.SHA3::implReset@5 (line 118)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineReset@11 (line 175)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@26 (line 111)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │      ││  0x00007f0068646aea:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r13=Oop [8]=Oop [16]=Oop [24]=Oop [36]=NarrowOop [40]=NarrowOop }
          │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │      ││                                                            ; - (reexecute) sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │      ││  0x00007f0068646af1:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@18 (line 148)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
          │      ││                                                            ;   {poll}
   0.01%  │      ││  0x00007f0068646af4:   mov    0x2c(%r13),%ebx              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress0@4 (line 94)
          │      ││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
          │      ││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │      ││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │      ││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │      ││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │      ││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%  │      ││  0x00007f0068646af8:   nopl   0x0(%rax,%rax,1)
   0.00%  │      ││  0x00007f0068646b00:   cmp    0x20(%rsp),%r10d
          │     ╭││  0x00007f0068646b05:   jg     0x00007f0068646bc5           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@2 (line 148)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  │     │││  0x00007f0068646b0b:   mov    %r10d,%ecx
   0.02%  │     │││  0x00007f0068646b0e:   mov    %r10d,0x4(%rsp)
   0.03%  │     │││  0x00007f0068646b13:   add    $0x6,%ecx
   0.01%  │     │││  0x00007f0068646b16:   mov    %r10d,%edi
   0.01%  │     │││  0x00007f0068646b19:   inc    %edi
   0.01%  │     │││  0x00007f0068646b1b:   add    $0x2,%r10d
   0.04%  │     │││  0x00007f0068646b1f:   mov    0x4(%rsp),%r11d
   0.01%  │     │││  0x00007f0068646b24:   add    $0x4,%r11d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@5 (line 149)
          │     │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
          │     │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
          │     │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
          │     │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
          │     │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
          │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%  ↘     │││  0x00007f0068646b28:   mov    0xc(%r12,%rbx,8),%ebx        ; implicit exception: dispatches to 0x00007f0068647558
                │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - sun.security.provider.SHA3::implCompress0@7 (line 94)
                │││                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │││                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │││                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │││                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │││                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │││                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │││  0x00007f0068646b2d:   test   %ebx,%ebx
                │╰│  0x00007f0068646b2f:   jbe    0x00007f0068646ac7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@8 (line 94)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.03%        │ │  0x00007f0068646b31:   mov    0x8(%rsp),%r8
   0.01%        │ │  0x00007f0068646b36:   mov    0x34(%r8),%r9d               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@12 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.01%        │ │  0x00007f0068646b3a:   nopw   0x0(%rax,%rax,1)
   0.01%        │ │  0x00007f0068646b40:   mov    0xc(%r12,%r9,8),%edx         ; implicit exception: dispatches to 0x00007f00686470a5
                │ │                                                            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@17 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.04%        │ │  0x00007f0068646b45:   test   %edx,%edx
                │ │  0x00007f0068646b47:   jbe    0x00007f00686470a5
   0.01%        │ │  0x00007f0068646b4d:   mov    %ebx,%r8d
   0.00%        │ │  0x00007f0068646b50:   dec    %r8d
   0.01%        │ │  0x00007f0068646b53:   cmp    %edx,%r8d
                │ │  0x00007f0068646b56:   jae    0x00007f00686470a5
   0.03%        │ │  0x00007f0068646b5c:   mov    0x4(%rsp),%ebp
   0.01%        │ │  0x00007f0068646b60:   cmp    (%rsp),%ebp
                │ │  0x00007f0068646b63:   jae    0x00007f00686470a5
   0.01%        │ │  0x00007f0068646b69:   movslq %ebx,%r8
   0.01%        │ │  0x00007f0068646b6c:   movslq 0x4(%rsp),%rax               ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@23 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.02%        │ │  0x00007f0068646b71:   add    %rax,%r8
   0.01%        │ │  0x00007f0068646b74:   dec    %r8
   0.01%        │ │  0x00007f0068646b77:   nopw   0x0(%rax,%rax,1)
   0.00%        │ │  0x00007f0068646b80:   cmp    0x30(%rsp),%r8
                │ │  0x00007f0068646b85:   jae    0x00007f00686470a5
   0.02%        │ │  0x00007f0068646b8b:   mov    0x18(%rsp),%r8
   0.00%        │ │  0x00007f0068646b90:   movsbl 0x10(%r8,%rax,1),%r8d
   0.01%        │ │  0x00007f0068646b96:   xor    %r8b,0x10(%r12,%r9,8)        ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - sun.security.provider.SHA3::implCompress0@26 (line 95)
                │ │                                                            ; - sun.security.provider.SHA3::implCompress@9 (line 89)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock0@8 (line 149)
                │ │                                                            ; - sun.security.provider.DigestBase::implCompressMultiBlock@11 (line 143)
                │ │                                                            ; - sun.security.provider.DigestBase::engineUpdate@146 (line 130)
                │ │                                                            ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                │ │                                                            ; - java.security.MessageDigest::update@5 (line 357)
                │ │                                                            ; - java.security.MessageDigest::digest@2 (line 432)
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
   0.07%        │ │  0x00007f0068646b9b:   shl    $0x3,%r9
   0.01%        │ │  0x00007f0068646b9f:   lea    -0x7(%rbx),%esi
   0.00%        │ │  0x00007f0068646ba2:   cmp    $0x1,%esi
                │ │  0x00007f0068646ba5:   jle    0x00007f00686470c8
   0.01%        │ │  0x00007f0068646bab:   movslq %ecx,%r14
   0.02%        │ │  0x00007f0068646bae:   movslq %edi,%rcx
   0.01%        │ │  0x00007f0068646bb1:   movslq %r10d,%rbp
   0.01%        │ │  0x00007f0068646bb4:   movslq %r11d,%r13
   0.02%        │ │  0x00007f0068646bb7:   mov    $0x1,%r10d
   0.02%        │ │  0x00007f0068646bbd:   data16 xchg %ax,%ax
   0.01%        │ ╰  0x00007f0068646bc0:   jmp    0x00007f0068646a58
   0.00%        ↘    0x00007f0068646bc5:   mov    (%rsp),%ebp
   0.00%             0x00007f0068646bc8:   sub    %r10d,%ebp                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@153 (line 131)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
                                                                               ; - java.security.MessageDigest::digest@2 (line 432)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest@8 (line 92)
                     0x00007f0068646bcb:   test   %ebp,%ebp
                     0x00007f0068646bcd:   jle    0x00007f00686473b0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - sun.security.provider.DigestBase::engineUpdate@156 (line 134)
                                                                               ; - java.security.MessageDigest$Delegate::engineUpdate@7 (line 653)
                                                                               ; - java.security.MessageDigest::update@5 (line 357)
....................................................................................................
  12.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.28%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 604 
  12.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 643 
   2.40%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 604 
   1.58%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 604 
   0.52%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 643 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   1.07%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.25%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 604 
  12.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 643 
   1.59%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.07%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.19%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%         c2, level 4
   1.59%              kernel
   0.17%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.08%        runtime stub
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%    perf-1943587.map
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-512, length = 16384)

# Run progress: 90.91% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 168.729 us/op
# Warmup Iteration   2: 157.140 us/op
# Warmup Iteration   3: 157.079 us/op
# Warmup Iteration   4: 157.063 us/op
# Warmup Iteration   5: 157.064 us/op
Iteration   1: 157.058 us/op
Iteration   2: 157.075 us/op
Iteration   3: 157.070 us/op
Iteration   4: 157.061 us/op
Iteration   5: 157.059 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  157.065 ±(99.9%) 0.029 us/op [Average]
  (min, avg, max) = (157.058, 157.065, 157.075), stdev = 0.007
  CI (99.9%): [157.036, 157.093] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 145924 total address lines.
Perf output processed (skipped 56.386 seconds):
 Column 1: cycles (50853 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, sun.security.provider.SHA3::keccak, version 2, compile id 599 

                                                                              ; - sun.security.provider.ByteArrayAccess::b2lLittle@26 (line 184)
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
                    0x00007f93a863e3c8:   cmp    %edx,%r8d
          ╭         0x00007f93a863e3cb:   jge    0x00007f93a863e3d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
          │                                                                   ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
          │                                                                   ; - sun.security.provider.SHA3::keccak@8 (line 169)
          │         0x00007f93a863e3cd:   mov    %eax,%r10d
          │         0x00007f93a863e3d0:   jmp    0x00007f93a863e3ac
   0.02%  ↘         0x00007f93a863e3d2:   vmovq  %xmm0,%rdi                   ;   {no_reloc}
   0.16%            0x00007f93a863e3d7:   vmovd  %xmm2,%r11d
   0.00%            0x00007f93a863e3dc:   vmovd  %xmm3,%r8d
   0.06%            0x00007f93a863e3e1:   vmovd  %xmm1,%ecx
   0.02%            0x00007f93a863e3e5:   mov    (%rsp),%r13
   0.18%            0x00007f93a863e3e9:   vmovd  %xmm5,%eax                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
                                                                              ; - sun.security.provider.SHA3::keccak@8 (line 169)
            ↗       0x00007f93a863e3ed:   mov    0x458(%r15),%r14
   0.07%    │       0x00007f93a863e3f4:   mov    %ebx,%r10d
   0.03%    │       0x00007f93a863e3f7:   inc    %r10d                        ; ImmutableOopMap {r11=NarrowOop r8=NarrowOop r9=Oop rdi=Oop rbp=Oop }
            │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                                 ; - (reexecute) sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.20%    │       0x00007f93a863e3fa:   test   %eax,(%r14)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@26 (line 146)
            │                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
            │                                                                 ;   {poll}
   0.01%    │       0x00007f93a863e3fd:   data16 xchg %ax,%ax
   0.10%    │       0x00007f93a863e400:   cmp    $0x5,%r10d
           ╭│       0x00007f93a863e404:   jge    0x00007f93a863e4a5
   0.01%   ││       0x00007f93a863e40a:   mov    %ebx,%edx
   0.12%   ││       0x00007f93a863e40c:   shl    $0x5,%edx
   0.01%   ││       0x00007f93a863e40f:   lea    (%rdx,%rbx,8),%r14d
   0.06%   ││       0x00007f93a863e413:   add    $0x28,%r14d
   0.03%   ││       0x00007f93a863e417:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - sun.security.provider.SHA3::bytes2Lanes@9 (line 147)
           ││                                                                 ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.16%   ││       0x00007f93a863e41a:   lea    0x28(%r14),%edx
   0.01%   ││       0x00007f93a863e41e:   xchg   %ax,%ax
   0.09%   ││       0x00007f93a863e420:   cmp    %edx,%r14d
           │╰       0x00007f93a863e423:   jge    0x00007f93a863e3ed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.03%   │        0x00007f93a863e425:   lea    (%rbx,%rbx,4),%r10d          ;*imul {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@14 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.18%   │        0x00007f93a863e429:   cmp    %ecx,%r14d
           │        0x00007f93a863e42c:   jae    0x00007f93a863ede9
   0.01%   │        0x00007f93a863e432:   vmovd  %eax,%xmm5
   0.09%   │        0x00007f93a863e436:   mov    %r13,(%rsp)
   0.02%   │        0x00007f93a863e43a:   vmovd  %ecx,%xmm1
   0.19%   │        0x00007f93a863e43e:   vmovd  %r8d,%xmm3
   0.00%   │        0x00007f93a863e443:   movslq %r14d,%r8
   0.07%   │        0x00007f93a863e446:   add    $0x20,%r8
   0.03%   │        0x00007f93a863e44a:   cmp    %r13,%r8
           │        0x00007f93a863e44d:   jae    0x00007f93a863ede4
   0.20%   │        0x00007f93a863e453:   vmovd  %r11d,%xmm2
   0.01%   │        0x00007f93a863e458:   vmovq  %rdi,%xmm0
   0.10%   │        0x00007f93a863e45d:   lea    0x8(%r14),%r11d
   0.02%   │        0x00007f93a863e461:   mov    %r14d,%r8d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - sun.security.provider.ByteArrayAccess::b2lLittle@12 (line 183)
           │                                                                  ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │                                                                  ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.14%   │  ↗     0x00007f93a863e464:   mov    0x10(%r9,%r8,1),%rdi         ;*invokevirtual getLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - jdk.internal.misc.Unsafe::getLongUnaligned@5 (line 3555)
           │  │                                                               ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::get@32 (line 116)
           │  │                                                               ; - java.lang.invoke.VarHandleGuards::guard_LI_J@45 (line 798)
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@22 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.01%   │  │     0x00007f93a863e469:   mov    %r10d,%eax
   0.07%   │  │     0x00007f93a863e46c:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@14 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.02%   │  │     0x00007f93a863e46e:   cmp    %esi,%r10d
           │  │     0x00007f93a863e471:   jae    0x00007f93a863ed44
   0.18%   │  │     0x00007f93a863e477:   mov    %rdi,0x10(%rbp,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@25 (line 183)
           │  │                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │  │                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
   0.01%   │  │     0x00007f93a863e47c:   lea    0x8(%r8),%ecx
   0.07%   │  │     0x00007f93a863e480:   cmp    %r11d,%ecx
           │ ╭│     0x00007f93a863e483:   jge    0x00007f93a863e48d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - sun.security.provider.ByteArrayAccess::b2lLittle@9 (line 182)
           │ ││                                                               ; - sun.security.provider.SHA3::bytes2Lanes@17 (line 147)
           │ ││                                                               ; - sun.security.provider.SHA3::keccak@8 (line 169)
           │ ││     0x00007f93a863e485:   mov    %ecx,%r8d
           │ ││     0x00007f93a863e488:   mov    %eax,%r10d
           │ │╰     0x00007f93a863e48b:   jmp    0x00007f93a863e464
   0.02%   │ ↘      0x00007f93a863e48d:   lea    0x10(%r14),%r11d
   0.16%   │        0x00007f93a863e491:   cmp    %r11d,%ecx
           │        0x00007f93a863e494:   jge    0x00007f93a863ee20
   0.01%   │        0x00007f93a863e49a:   add    $0x8,%r8d
   0.07%   │        0x00007f93a863e49e:   xchg   %ax,%ax
   0.03%   │        0x00007f93a863e4a0:   jmp    0x00007f93a863e353
           ↘        0x00007f93a863e4a5:   mov    0x38(%rdi),%r10d             ;*getfield lanes {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@12 (line 174)
   0.04%            0x00007f93a863e4a9:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f93a863eebc
                                                                              ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.00%            0x00007f93a863e4ae:   cmp    $0x18,%r11d
                    0x00007f93a863e4b2:   jbe    0x00007f93a863ee88
   0.01%            0x00007f93a863e4b8:   mov    %r11d,(%rsp)
   0.00%            0x00007f93a863e4bc:   vmovd  %eax,%xmm2
   0.02%            0x00007f93a863e4c0:   vmovq  %rdi,%xmm0
   0.00%            0x00007f93a863e4c5:   mov    0x40(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@63 (line 175)
   0.01%            0x00007f93a863e4ca:   mov    %r11,0x8(%rsp)
                    0x00007f93a863e4cf:   mov    0x20(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@30 (line 174)
   0.03%            0x00007f93a863e4d4:   vmovq  %r11,%xmm3
                    0x00007f93a863e4d9:   mov    0xd0(%r12,%r10,8),%rcx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@225 (line 178)
   0.01%            0x00007f93a863e4e1:   mov    0xa8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@180 (line 177)
   0.00%            0x00007f93a863e4e9:   mov    %r11,0x10(%rsp)
   0.05%            0x00007f93a863e4ee:   mov    0x80(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@135 (line 176)
   0.00%            0x00007f93a863e4f6:   mov    %r11,0x18(%rsp)              ;   {no_reloc}
   0.01%            0x00007f93a863e4fb:   mov    0x58(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@90 (line 175)
   0.00%            0x00007f93a863e500:   mov    %r11,0x20(%rsp)
   0.05%            0x00007f93a863e505:   mov    0x30(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@46 (line 174)
                    0x00007f93a863e50a:   vmovq  %r11,%xmm4
   0.01%            0x00007f93a863e50f:   mov    0xb8(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@198 (line 178)
   0.00%            0x00007f93a863e517:   mov    %r11,0x28(%rsp)
   0.01%            0x00007f93a863e51c:   mov    0x90(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@153 (line 177)
                    0x00007f93a863e524:   mov    %r11,0x30(%rsp)
   0.01%            0x00007f93a863e529:   mov    0x68(%r12,%r10,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@108 (line 176)
   0.01%            0x00007f93a863e52e:   mov    %r11,0x38(%rsp)
   0.02%            0x00007f93a863e533:   vmovd  %r10d,%xmm1
                    0x00007f93a863e538:   mov    0x18(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@23 (line 174)
   0.02%            0x00007f93a863e53d:   vmovq  %r10,%xmm5
   0.01%            0x00007f93a863e542:   vmovd  %xmm1,%r10d
   0.03%            0x00007f93a863e547:   mov    0xc8(%r12,%r10,8),%r8        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@216 (line 178)
                    0x00007f93a863e54f:   mov    0xa0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@171 (line 177)
   0.01%            0x00007f93a863e557:   mov    %r10,0x40(%rsp)
   0.01%            0x00007f93a863e55c:   vmovd  %xmm1,%r10d
   0.04%            0x00007f93a863e561:   mov    0x78(%r12,%r10,8),%rdx       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@126 (line 176)
   0.00%            0x00007f93a863e566:   mov    0x28(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@38 (line 174)
   0.03%            0x00007f93a863e56b:   vmovq  %r10,%xmm6
   0.01%            0x00007f93a863e570:   vmovd  %xmm1,%r10d
   0.03%            0x00007f93a863e575:   mov    0xb0(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@189 (line 178)
                    0x00007f93a863e57d:   mov    %r10,0x48(%rsp)
   0.02%            0x00007f93a863e582:   vmovd  %xmm1,%r11d
   0.00%            0x00007f93a863e587:   mov    0x88(%r12,%r11,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@144 (line 177)
   0.03%            0x00007f93a863e58f:   mov    %r10,0x50(%rsp)
   0.00%            0x00007f93a863e594:   mov    %r11d,%r10d
   0.02%            0x00007f93a863e597:   mov    0x60(%r12,%r10,8),%r10       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@99 (line 176)
   0.00%            0x00007f93a863e59c:   mov    0x38(%r12,%r11,8),%r11       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@54 (line 175)
   0.03%            0x00007f93a863e5a1:   mov    %r11,0x58(%rsp)
                    0x00007f93a863e5a6:   vmovd  %xmm1,%r9d
   0.02%            0x00007f93a863e5ab:   mov    0x10(%r12,%r9,8),%rbx        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@16 (line 174)
   0.00%            0x00007f93a863e5b0:   mov    0xc0(%r12,%r9,8),%r11        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@207 (line 178)
   0.03%            0x00007f93a863e5b8:   mov    0x98(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@162 (line 177)
                    0x00007f93a863e5c0:   mov    %r9,0x60(%rsp)
   0.01%            0x00007f93a863e5c5:   vmovd  %xmm1,%r9d
   0.01%            0x00007f93a863e5ca:   mov    0x70(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@117 (line 176)
   0.03%            0x00007f93a863e5cf:   mov    %r9,0x68(%rsp)
   0.01%            0x00007f93a863e5d4:   vmovd  %xmm1,%r9d
   0.02%            0x00007f93a863e5d9:   mov    0x48(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@72 (line 175)
   0.01%            0x00007f93a863e5de:   mov    %r9,0x70(%rsp)
   0.03%            0x00007f93a863e5e3:   vmovd  %xmm1,%r9d
   0.00%            0x00007f93a863e5e8:   mov    0x50(%r12,%r9,8),%r9         ;*laload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@81 (line 175)
   0.02%            0x00007f93a863e5ed:   mov    %r9,0x78(%rsp)
   0.01%            0x00007f93a863e5f2:   xor    %r9d,%r9d
   0.02%            0x00007f93a863e5f5:   vmovd  %r9d,%xmm12                  ;   {no_reloc}
   0.00%       ╭    0x00007f93a863e5fa:   jmp    0x00007f93a863e617
               │    0x00007f93a863e5fc:   nopl   0x0(%rax)
   0.28%       │↗   0x00007f93a863e600:   mov    %rcx,0x28(%rsp)
   0.48%       ││   0x00007f93a863e605:   mov    %rax,%rcx
   0.18%       ││   0x00007f93a863e608:   mov    %r13,0x38(%rsp)
   0.40%       ││   0x00007f93a863e60d:   vmovq  %xmm7,%r10
   0.26%       ││   0x00007f93a863e612:   mov    %rbp,0x8(%rsp)               ;*lload_1 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                             ; - sun.security.provider.SHA3::keccak@238 (line 183)
   0.42%       ↘│   0x00007f93a863e617:   vmovq  %xmm5,%rdi
   0.20%        │   0x00007f93a863e61c:   xor    0x8(%rsp),%rdi
   0.46%        │   0x00007f93a863e621:   xor    0x38(%rsp),%rdi
   0.36%        │   0x00007f93a863e626:   xor    0x30(%rsp),%rdi
   0.54%        │   0x00007f93a863e62b:   xor    0x28(%rsp),%rdi              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@265 (line 184)
   0.30%        │   0x00007f93a863e630:   vmovq  %xmm3,%r9
   0.42%        │   0x00007f93a863e635:   xor    0x70(%rsp),%r9
   0.21%        │   0x00007f93a863e63a:   xor    0x68(%rsp),%r9
   0.43%        │   0x00007f93a863e63f:   xor    0x60(%rsp),%r9
   0.26%        │   0x00007f93a863e644:   xor    %r11,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@281 (line 185)
   0.41%        │   0x00007f93a863e647:   rorx   $0x3f,%rdi,%rbp
   0.24%        │   0x00007f93a863e64d:   rorx   $0x3f,%r9,%rsi
   0.47%        │   0x00007f93a863e653:   vmovq  %rsi,%xmm7
   0.28%        │   0x00007f93a863e658:   vmovq  %xmm4,%rsi
   0.37%        │   0x00007f93a863e65d:   xor    0x20(%rsp),%rsi
   0.25%        │   0x00007f93a863e662:   xor    0x18(%rsp),%rsi
   0.41%        │   0x00007f93a863e667:   xor    0x10(%rsp),%rsi
   0.28%        │   0x00007f93a863e66c:   xor    %rcx,%rsi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@313 (line 187)
   0.40%        │   0x00007f93a863e66f:   xor    %rsi,%rbp                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@324 (line 188)
   0.23%        │   0x00007f93a863e672:   rorx   $0x3f,%rsi,%rax
   0.41%        │   0x00007f93a863e678:   xor    %r9,%rax                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@357 (line 191)
   0.28%        │   0x00007f93a863e67b:   vmovq  %xmm6,%r9
   0.33%        │   0x00007f93a863e680:   xor    0x78(%rsp),%r9
   0.27%        │   0x00007f93a863e685:   xor    %rdx,%r9
   0.38%        │   0x00007f93a863e688:   xor    0x40(%rsp),%r9
   0.30%        │   0x00007f93a863e68d:   xor    %r8,%r9                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@297 (line 186)
   0.40%        │   0x00007f93a863e690:   mov    0x78(%rsp),%rsi
   0.19%        │   0x00007f93a863e695:   xor    %rax,%rsi
   0.43%        │   0x00007f93a863e698:   rorx   $0x9,%rsi,%rsi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@685 (line 228)
   0.29%        │   0x00007f93a863e69e:   rorx   $0x3f,%r9,%r13
   0.41%        │   0x00007f93a863e6a4:   xor    %rdi,%r13                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@346 (line 190)
   0.22%        │   0x00007f93a863e6a7:   vmovq  %xmm6,%rdi
   0.42%        │   0x00007f93a863e6ac:   xor    %rax,%rdi
   0.24%        │   0x00007f93a863e6af:   rorx   $0x24,%rdi,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@712 (line 231)
   0.36%        │   0x00007f93a863e6b5:   mov    %rdi,0x80(%rsp)
   0.50%        │   0x00007f93a863e6bd:   xor    %r13,%r11
   0.36%        │   0x00007f93a863e6c0:   rorx   $0x3,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@578 (line 216)
   0.24%        │   0x00007f93a863e6c6:   mov    %r11,0xc0(%rsp)
   0.54%        │   0x00007f93a863e6ce:   vmovq  %xmm3,%r11
   0.31%        │   0x00007f93a863e6d3:   xor    %r13,%r11
   0.33%        │   0x00007f93a863e6d6:   rorx   $0x2,%r11,%r11               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@605 (line 219)
   0.22%        │   0x00007f93a863e6dc:   mov    %r11,0x88(%rsp)
   0.51%        │   0x00007f93a863e6e4:   mov    0xc0(%rsp),%r11
   0.74%        │   0x00007f93a863e6ec:   andn   %rdi,%r11,%r11
   0.59%        │   0x00007f93a863e6f1:   vmovq  %r11,%xmm3
   1.33%        │   0x00007f93a863e6f6:   mov    0x88(%rsp),%r11              ;   {no_reloc}
   0.52%        │   0x00007f93a863e6fe:   andn   %rsi,%r11,%r11
   0.28%        │   0x00007f93a863e703:   vmovq  %r11,%xmm8
   1.25%        │   0x00007f93a863e708:   mov    0x60(%rsp),%r11
   0.25%        │   0x00007f93a863e70d:   xor    %r13,%r11
   0.14%        │   0x00007f93a863e710:   rorx   $0x31,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@730 (line 233)
   0.12%        │   0x00007f93a863e716:   mov    %r11,0x90(%rsp)
   0.85%        │   0x00007f93a863e71e:   mov    0x68(%rsp),%r11
   0.23%        │   0x00007f93a863e723:   xor    %r13,%r11
   0.13%        │   0x00007f93a863e726:   mov    0x70(%rsp),%rdi
   0.15%        │   0x00007f93a863e72b:   xor    %r13,%rdi
   0.79%        │   0x00007f93a863e72e:   rorx   $0x15,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@614 (line 220)
   0.23%        │   0x00007f93a863e734:   mov    %r11,0x98(%rsp)
   0.12%        │   0x00007f93a863e73c:   rorx   $0x3a,%rdi,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@748 (line 235)
   0.13%        │   0x00007f93a863e742:   mov    %r11,0xa0(%rsp)
   0.88%        │   0x00007f93a863e74a:   mov    0x40(%rsp),%r11
   0.24%        │   0x00007f93a863e74f:   xor    %rax,%r11
   0.12%        │   0x00007f93a863e752:   rorx   $0x2b,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@721 (line 232)
   0.14%        │   0x00007f93a863e758:   xor    %rax,%r8
   0.84%        │   0x00007f93a863e75b:   xor    %rax,%rdx
   0.25%        │   0x00007f93a863e75e:   rorx   $0x8,%r8,%rdi                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@641 (line 223)
   0.12%        │   0x00007f93a863e764:   rorx   $0x27,%rdx,%rdx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@623 (line 221)
   0.12%        │   0x00007f93a863e76a:   mov    0x98(%rsp),%r8
   0.90%        │   0x00007f93a863e772:   andn   %r11,%r8,%r8
   0.32%        │   0x00007f93a863e777:   vmovq  %r8,%xmm9
   0.24%        │   0x00007f93a863e77c:   mov    0xa0(%rsp),%r8
   0.18%        │   0x00007f93a863e784:   andn   %rdx,%r8,%r8
   0.81%        │   0x00007f93a863e789:   vmovq  %r8,%xmm10
   0.29%        │   0x00007f93a863e78e:   mov    0x90(%rsp),%r8
   0.17%        │   0x00007f93a863e796:   andn   %rdi,%r8,%r8
   0.11%        │   0x00007f93a863e79b:   vmovq  %r8,%xmm11
   0.73%        │   0x00007f93a863e7a0:   mov    0x50(%rsp),%r8
   0.28%        │   0x00007f93a863e7a5:   xor    %rbp,%r8
   0.15%        │   0x00007f93a863e7a8:   rorx   $0x17,%r8,%r8                ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@650 (line 224)
   0.10%        │   0x00007f93a863e7ae:   mov    %r8,0xa8(%rsp)
   0.77%        │   0x00007f93a863e7b6:   mov    0x58(%rsp),%r8
   0.27%        │   0x00007f93a863e7bb:   xor    %rbp,%r8
   0.14%        │   0x00007f93a863e7be:   rorx   $0x1c,%r8,%rax               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@703 (line 230)
   0.09%        │   0x00007f93a863e7c4:   mov    %rbx,%r8
   0.82%        │   0x00007f93a863e7c7:   xor    %rbp,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@374 (line 193)
   0.31%        │   0x00007f93a863e7ca:   mov    %r8,0xb0(%rsp)
   0.18%        │   0x00007f93a863e7d2:   mov    %r10,%r13
   0.11%        │   0x00007f93a863e7d5:   xor    %rbp,%r13
   0.76%        │   0x00007f93a863e7d8:   mov    0x48(%rsp),%r8
   0.28%        │   0x00007f93a863e7dd:   xor    %rbp,%r8
   0.20%        │   0x00007f93a863e7e0:   rorx   $0x3d,%r13,%rbp              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@545 (line 212)
   0.11%        │   0x00007f93a863e7e6:   rorx   $0x2e,%r8,%r14               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@596 (line 218)
   0.70%        │   0x00007f93a863e7ec:   xor    0x58(%rsp),%rbx
   0.28%        │   0x00007f93a863e7f1:   xor    %r10,%rbx
   0.20%        │   0x00007f93a863e7f4:   xor    0x50(%rsp),%rbx              ;   {no_reloc}
   0.11%        │   0x00007f93a863e7f9:   xor    0x48(%rsp),%rbx              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@250 (line 183)
   0.76%        │   0x00007f93a863e7fe:   vmovq  %xmm7,%r10
   0.27%        │   0x00007f93a863e803:   xor    %rbx,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@335 (line 189)
   0.16%        │   0x00007f93a863e806:   mov    %r10,0xb8(%rsp)
   0.12%        │   0x00007f93a863e80e:   rorx   $0x3f,%rbx,%r8
   0.76%        │   0x00007f93a863e814:   xor    %r9,%r8                      ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@368 (line 192)
   0.26%        │   0x00007f93a863e817:   mov    0x30(%rsp),%r10
   0.16%        │   0x00007f93a863e81c:   xor    0xb8(%rsp),%r10
   0.31%        │   0x00007f93a863e824:   rorx   $0x13,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@694 (line 229)
   0.77%        │   0x00007f93a863e82a:   vmovq  %xmm3,%r9
   0.26%        │   0x00007f93a863e82f:   xor    %r10,%r9                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@916 (line 254)
   0.32%        │   0x00007f93a863e832:   mov    %r9,0x78(%rsp)
   0.87%        │   0x00007f93a863e837:   xor    %r8,%rcx
   0.46%        │   0x00007f93a863e83a:   rorx   $0x32,%rcx,%r9               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@668 (line 226)
   0.21%        │   0x00007f93a863e840:   andn   0xc0(%rsp),%r10,%rcx
   0.12%        │   0x00007f93a863e84a:   andn   %r10,%rbp,%r10
   0.48%        │   0x00007f93a863e84f:   vmovq  %r10,%xmm7
   0.44%        │   0x00007f93a863e854:   xor    %rbp,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@902 (line 253)
   0.24%        │   0x00007f93a863e857:   mov    %rcx,0x70(%rsp)
   0.65%        │   0x00007f93a863e85c:   andn   0xb0(%rsp),%r9,%r10
   0.25%        │   0x00007f93a863e866:   xor    %r11,%r10                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@826 (line 247)
   0.42%        │   0x00007f93a863e869:   vmovq  %r10,%xmm6
   0.25%        │   0x00007f93a863e86e:   andn   %r9,%r11,%r10
   0.39%        │   0x00007f93a863e873:   xor    0x98(%rsp),%r10              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@812 (line 246)
   0.23%        │   0x00007f93a863e87b:   vmovq  %r10,%xmm3
   0.49%        │   0x00007f93a863e880:   mov    0x18(%rsp),%r10
   0.21%        │   0x00007f93a863e885:   xor    %r8,%r10
   0.41%        │   0x00007f93a863e888:   rorx   $0x19,%r10,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@587 (line 217)
   0.23%        │   0x00007f93a863e88e:   mov    0x10(%rsp),%r10
   0.46%        │   0x00007f93a863e893:   xor    %r8,%r10
   0.21%        │   0x00007f93a863e896:   rorx   $0x38,%r10,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@632 (line 222)
   0.38%        │   0x00007f93a863e89c:   andn   %rbx,%rsi,%r11
   0.25%        │   0x00007f93a863e8a1:   xor    0x88(%rsp),%r11              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1144 (line 272)
   0.50%        │   0x00007f93a863e8a9:   mov    %r11,0x48(%rsp)
   0.36%        │   0x00007f93a863e8ae:   andn   %r10,%rdx,%r13
   0.35%        │   0x00007f93a863e8b3:   xor    0xa0(%rsp),%r13              ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@978 (line 259)
   0.23%        │   0x00007f93a863e8bb:   andn   %r14,%r10,%r11
   0.39%        │   0x00007f93a863e8c0:   xor    %rdx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@992 (line 260)
   0.35%        │   0x00007f93a863e8c3:   mov    %r11,0x68(%rsp)
   0.63%        │   0x00007f93a863e8c8:   andn   0xa8(%rsp),%rbx,%rcx
   0.18%        │   0x00007f93a863e8d2:   xor    %rsi,%rcx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1158 (line 273)
   0.38%        │   0x00007f93a863e8d5:   vmovq  %xmm4,%r11
   0.26%        │   0x00007f93a863e8da:   xor    %r8,%r11
   0.49%        │   0x00007f93a863e8dd:   mov    0x20(%rsp),%rdx
   0.18%        │   0x00007f93a863e8e2:   xor    %r8,%rdx
   0.38%        │   0x00007f93a863e8e5:   rorx   $0x25,%r11,%r11              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@659 (line 225)
   0.27%        │   0x00007f93a863e8eb:   rorx   $0x2c,%rdx,%r8               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@569 (line 215)
   0.47%        │   0x00007f93a863e8f1:   andn   %rbp,%r8,%rdx                ;   {no_reloc}
   0.18%        │   0x00007f93a863e8f6:   mov    %rdx,%rsi
   0.43%        │   0x00007f93a863e8f9:   vmovq  %xmm7,%rdx
   0.29%        │   0x00007f93a863e8fe:   xor    %r8,%rdx                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@888 (line 252)
   0.45%        │   0x00007f93a863e901:   mov    %rdx,%rbp
   0.20%        │   0x00007f93a863e904:   mov    0x80(%rsp),%rdx
   0.39%        │   0x00007f93a863e90c:   andn   %r8,%rdx,%r8
   0.27%        │   0x00007f93a863e911:   xor    0xc0(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@930 (line 255)
   0.43%        │   0x00007f93a863e919:   mov    %r8,0x20(%rsp)
   0.24%        │   0x00007f93a863e91e:   mov    %rsi,%r8
   0.41%        │   0x00007f93a863e921:   xor    %rdx,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@874 (line 251)
   0.32%        │   0x00007f93a863e924:   mov    %r8,0x58(%rsp)
   0.52%        │   0x00007f93a863e929:   andn   %r11,%rdi,%r8
   0.20%        │   0x00007f93a863e92e:   xor    0x90(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1096 (line 268)
   0.35%        │   0x00007f93a863e936:   mov    %r8,0x40(%rsp)
   0.41%        │   0x00007f93a863e93b:   andn   %rax,%r11,%r8
   0.41%        │   0x00007f93a863e940:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1110 (line 269)
   0.18%        │   0x00007f93a863e943:   mov    %r8,0x10(%rsp)
   0.41%        │   0x00007f93a863e948:   mov    0x38(%rsp),%r8
   0.25%        │   0x00007f93a863e94d:   xor    0xb8(%rsp),%r8
   0.44%        │   0x00007f93a863e955:   rorx   $0x36,%r8,%rdi               ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@739 (line 234)
   0.23%        │   0x00007f93a863e95b:   vmovq  %xmm11,%r8
   0.44%        │   0x00007f93a863e960:   xor    %rdi,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1082 (line 267)
   0.29%        │   0x00007f93a863e963:   mov    %r8,0x60(%rsp)
   0.51%        │   0x00007f93a863e968:   andn   0x90(%rsp),%rdi,%r8
   0.19%        │   0x00007f93a863e972:   andn   %rdi,%rax,%rdi
   0.39%        │   0x00007f93a863e977:   xor    %r11,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1054 (line 265)
   0.31%        │   0x00007f93a863e97a:   mov    %rdi,0x50(%rsp)
   0.60%        │   0x00007f93a863e97f:   xor    %rax,%r8                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1068 (line 266)
   0.18%        │   0x00007f93a863e982:   mov    %r8,0x30(%rsp)
   0.41%        │   0x00007f93a863e987:   mov    0x28(%rsp),%r11
   0.29%        │   0x00007f93a863e98c:   xor    0xb8(%rsp),%r11
   0.50%        │   0x00007f93a863e994:   rorx   $0x3e,%r11,%rdi              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@676 (line 227)
   0.18%        │   0x00007f93a863e99a:   andn   0x88(%rsp),%rdi,%r8
   0.42%        │   0x00007f93a863e9a4:   vmovq  %xmm8,%r11
   0.25%        │   0x00007f93a863e9a9:   xor    %rdi,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1200 (line 276)
   0.48%        │   0x00007f93a863e9ac:   mov    %r11,%rax
   0.13%        │   0x00007f93a863e9af:   mov    0xa8(%rsp),%r11
   0.40%        │   0x00007f93a863e9b7:   andn   %rdi,%r11,%r11
   0.25%        │   0x00007f93a863e9bc:   xor    %rbx,%r11                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1172 (line 274)
   0.54%        │   0x00007f93a863e9bf:   xor    0xa8(%rsp),%r8               ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1186 (line 275)
   0.16%        │   0x00007f93a863e9c7:   vmovq  %xmm5,%rbx
   0.41%        │   0x00007f93a863e9cc:   xor    0xb8(%rsp),%rbx
   0.28%        │   0x00007f93a863e9d4:   mov    0x8(%rsp),%rsi
   0.50%        │   0x00007f93a863e9d9:   xor    0xb8(%rsp),%rsi
   0.19%        │   0x00007f93a863e9e1:   rorx   $0x3f,%rbx,%rbx              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@552 (line 213)
   0.44%        │   0x00007f93a863e9e7:   andn   0xa0(%rsp),%rbx,%rdi
   0.31%        │   0x00007f93a863e9f1:   vmovq  %xmm10,%rdx                  ;   {no_reloc}
   0.46%        │   0x00007f93a863e9f6:   xor    %rbx,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@964 (line 258)
   0.18%        │   0x00007f93a863e9f9:   vmovq  %rdx,%xmm7
   0.46%        │   0x00007f93a863e9fe:   xor    %r14,%rdi                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1020 (line 262)
   0.25%        │   0x00007f93a863ea01:   mov    %rdi,0x18(%rsp)
   0.47%        │   0x00007f93a863ea06:   andn   %rbx,%r14,%rdx
   0.18%        │   0x00007f93a863ea0b:   xor    %r10,%rdx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1006 (line 261)
   0.40%        │   0x00007f93a863ea0e:   rorx   $0x14,%rsi,%r10              ;*lor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.lang.Long::rotateLeft@7 (line 1867)
                │                                                             ; - sun.security.provider.SHA3::keccak@561 (line 214)
   0.27%        │   0x00007f93a863ea14:   vmovq  %xmm9,%rbx
   0.45%        │   0x00007f93a863ea19:   xor    %r10,%rbx                    ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@799 (line 245)
   0.15%        │   0x00007f93a863ea1c:   vmovq  %rbx,%xmm5
   0.41%        │   0x00007f93a863ea21:   andn   0x98(%rsp),%r10,%rbx
   0.29%        │   0x00007f93a863ea2b:   mov    0xb0(%rsp),%rdi
   0.46%        │   0x00007f93a863ea33:   andn   %r10,%rdi,%r10
   0.17%        │   0x00007f93a863ea38:   xor    %r9,%r10                     ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@840 (line 248)
   0.40%        │   0x00007f93a863ea3b:   vmovq  %r10,%xmm4
   0.24%        │   0x00007f93a863ea40:   xor    %rdi,%rbx
   0.49%        │   0x00007f93a863ea43:   movabs $0x7ff052970,%r9             ;   {oop([J{0x00000007ff052970})}
   0.16%        │   0x00007f93a863ea4d:   vmovd  %xmm12,%r10d
   0.45%        │   0x00007f93a863ea52:   xor    0x10(%r9,%r10,8),%rbx        ;*lxor {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1210 (line 279)
   0.20%        │   0x00007f93a863ea57:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - sun.security.provider.SHA3::keccak@1212 (line 181)
   0.44%        │   0x00007f93a863ea5a:   vmovd  %r10d,%xmm12
   0.17%        │   0x00007f93a863ea5f:   nop
   0.35%        │   0x00007f93a863ea60:   cmp    $0x18,%r10d
                ╰   0x00007f93a863ea64:   jl     0x00007f93a863e600           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@235 (line 181)
   0.02%            0x00007f93a863ea6a:   vmovd  %xmm1,%r10d
   0.03%            0x00007f93a863ea6f:   mov    %rbx,0x10(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1224 (line 282)
   0.01%            0x00007f93a863ea74:   mov    %r10d,%r9d
   0.02%            0x00007f93a863ea77:   vmovq  %xmm5,%r10
                    0x00007f93a863ea7c:   mov    %r10,0x18(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1231 (line 282)
   0.02%            0x00007f93a863ea81:   mov    %r9d,%r10d
   0.01%            0x00007f93a863ea84:   vmovq  %xmm3,%r9
   0.02%            0x00007f93a863ea89:   mov    %r9,0x20(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1239 (line 282)
   0.01%            0x00007f93a863ea8e:   mov    %r10d,%r9d
   0.02%            0x00007f93a863ea91:   vmovq  %xmm6,%r10
   0.01%            0x00007f93a863ea96:   mov    %r10,0x28(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1247 (line 282)
   0.02%            0x00007f93a863ea9b:   mov    %r9d,%r10d
   0.00%            0x00007f93a863ea9e:   vmovq  %xmm4,%r9
   0.02%            0x00007f93a863eaa3:   mov    %r9,0x30(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1255 (line 282)
   0.00%            0x00007f93a863eaa8:   mov    %r10d,%r9d
   0.01%            0x00007f93a863eaab:   mov    0x58(%rsp),%r10
   0.02%            0x00007f93a863eab0:   mov    %r10,0x38(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1263 (line 283)
   0.01%            0x00007f93a863eab5:   mov    %r9d,%r10d
   0.01%            0x00007f93a863eab8:   mov    %rbp,0x40(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1272 (line 283)
   0.02%            0x00007f93a863eabd:   mov    %r10d,%r9d
   0.00%            0x00007f93a863eac0:   mov    0x70(%rsp),%r10
   0.02%            0x00007f93a863eac5:   mov    %r10,0x48(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1281 (line 283)
                    0x00007f93a863eaca:   mov    %r9d,%r10d
   0.01%            0x00007f93a863eacd:   mov    0x78(%rsp),%r9
   0.02%            0x00007f93a863ead2:   mov    %r9,0x50(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1290 (line 283)
   0.02%            0x00007f93a863ead7:   mov    %r10d,%r9d
   0.01%            0x00007f93a863eada:   mov    0x20(%rsp),%r10
   0.02%            0x00007f93a863eadf:   mov    %r10,0x58(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1299 (line 283)
   0.01%            0x00007f93a863eae4:   mov    %r9d,%r10d
   0.02%            0x00007f93a863eae7:   vmovq  %xmm7,%r9
   0.00%            0x00007f93a863eaec:   mov    %r9,0x60(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1308 (line 284)
   0.02%            0x00007f93a863eaf1:   mov    %r13,0x68(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1317 (line 284)
   0.01%            0x00007f93a863eaf6:   mov    %r10d,%r9d
   0.03%            0x00007f93a863eaf9:   mov    0x68(%rsp),%r10
   0.01%            0x00007f93a863eafe:   mov    %r10,0x70(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1326 (line 284)
   0.03%            0x00007f93a863eb03:   mov    %r9d,%r10d
   0.02%            0x00007f93a863eb06:   mov    %rdx,0x78(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1335 (line 284)
   0.03%            0x00007f93a863eb0b:   mov    0x18(%rsp),%r10
   0.00%            0x00007f93a863eb10:   mov    %r10,0x80(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1344 (line 284)
   0.02%            0x00007f93a863eb18:   mov    %r9d,%r10d
   0.01%            0x00007f93a863eb1b:   mov    0x50(%rsp),%r9
   0.02%            0x00007f93a863eb20:   mov    %r9,0x88(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1353 (line 285)
   0.01%            0x00007f93a863eb28:   mov    %r10d,%r9d
   0.02%            0x00007f93a863eb2b:   mov    0x30(%rsp),%r10
   0.01%            0x00007f93a863eb30:   mov    %r10,0x90(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1362 (line 285)
   0.01%            0x00007f93a863eb38:   mov    %r9d,%r10d
   0.01%            0x00007f93a863eb3b:   mov    0x60(%rsp),%r9
   0.01%            0x00007f93a863eb40:   mov    %r9,0x98(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1371 (line 285)
                                                                              ;   {no_reloc}
   0.02%            0x00007f93a863eb48:   mov    %r10d,%r9d
   0.02%            0x00007f93a863eb4b:   mov    0x40(%rsp),%r10
                    0x00007f93a863eb50:   mov    %r10,0xa0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1380 (line 285)
   0.03%            0x00007f93a863eb58:   mov    %r9d,%r10d
   0.02%            0x00007f93a863eb5b:   mov    0x10(%rsp),%r9
   0.01%            0x00007f93a863eb60:   mov    %r9,0xa8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1389 (line 285)
   0.02%            0x00007f93a863eb68:   mov    %r10d,%r9d
   0.00%            0x00007f93a863eb6b:   mov    0x48(%rsp),%r10
   0.02%            0x00007f93a863eb70:   mov    %r10,0xb0(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1398 (line 286)
   0.03%            0x00007f93a863eb78:   mov    %rcx,0xb8(%r12,%r9,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1407 (line 286)
   0.03%            0x00007f93a863eb80:   mov    %r9d,%r10d
   0.01%            0x00007f93a863eb83:   mov    %r11,0xc0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1416 (line 286)
   0.03%            0x00007f93a863eb8b:   mov    %r8,0xc8(%r12,%r10,8)        ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1425 (line 286)
   0.03%            0x00007f93a863eb93:   mov    %rax,0xd0(%r12,%r10,8)       ;*lastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1434 (line 286)
   0.04%            0x00007f93a863eb9b:   vmovq  %xmm0,%r10
   0.01%            0x00007f93a863eba0:   mov    0x34(%r10),%ebx              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.SHA3::keccak@1440 (line 289)
   0.00%            0x00007f93a863eba4:   mov    0xc(%r12,%rbx,8),%r11d       ; implicit exception: dispatches to 0x00007f93a863eea4
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::index@2 (line 101)
                                                                              ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@20 (line 128)
                                                                              ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.01%            0x00007f93a863eba9:   lea    -0x7(%r11),%eax
   0.05%            0x00007f93a863ebad:   test   %eax,%eax
                    0x00007f93a863ebaf:   jl     0x00007f93a863eea4
   0.01%            0x00007f93a863ebb5:   movslq %r11d,%r14
   0.01%            0x00007f93a863ebb8:   mov    %r9d,%ecx
   0.02%            0x00007f93a863ebbb:   lea    (%r12,%r9,8),%r10
   0.04%            0x00007f93a863ebbf:   add    $0xfffffffffffffff9,%r14
   0.01%            0x00007f93a863ebc3:   lea    (%r12,%rbx,8),%r11
   0.01%            0x00007f93a863ebc7:   xor    %edi,%edi
   0.01%            0x00007f93a863ebc9:   jmp    0x00007f93a863eca1
                    0x00007f93a863ebce:   xchg   %ax,%ax
                 ↗  0x00007f93a863ebd0:   mov    %edx,%edi
                 │  0x00007f93a863ebd2:   vmovd  %xmm1,%edx                   ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f93a863ebd6:   mov    %r13d,%r9d
   0.06%         │  0x00007f93a863ebd9:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f93a863ebdc:   nopl   0x0(%rax)
   0.07%         │  0x00007f93a863ebe0:   cmp    (%rsp),%r13d
                 │  0x00007f93a863ebe4:   jae    0x00007f93a863ed8c
   0.08%         │  0x00007f93a863ebea:   vmovd  %edx,%xmm1
   0.06%         │  0x00007f93a863ebee:   mov    %edi,%edx
   0.06%         │  0x00007f93a863ebf0:   mov    0x10(%r10,%r13,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f93a863ebf5:   movslq %r8d,%rbp                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@23 (line 128)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f93a863ebf8:   mov    %rdi,0x10(%r11,%rbp,1)       ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.07%         │  0x00007f93a863ebfd:   lea    0x3(%r13),%edi
   0.06%         │  0x00007f93a863ec01:   cmp    (%rsp),%edi
                 │  0x00007f93a863ec04:   jae    0x00007f93a863ed97
   0.07%         │  0x00007f93a863ec0a:   movslq %r13d,%rdi
   0.09%         │  0x00007f93a863ec0d:   mov    0x18(%r10,%rdi,8),%r9        ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.04%         │  0x00007f93a863ec12:   mov    %r9,0x18(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.05%         │  0x00007f93a863ec17:   mov    0x28(%r10,%rdi,8),%r9
   0.06%         │  0x00007f93a863ec1c:   mov    0x20(%r10,%rdi,8),%rdi       ;*laload {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@22 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%         │  0x00007f93a863ec21:   mov    %rdi,0x20(%r11,%rbp,1)
   0.07%         │  0x00007f93a863ec26:   mov    %r9,0x28(%r11,%rbp,1)        ;*invokevirtual putLongUnaligned {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - jdk.internal.misc.Unsafe::putLongUnaligned@10 (line 3676)
                 │                                                            ; - java.lang.invoke.VarHandleByteArrayAsLongs$ArrayHandle::set@35 (line 126)
                 │                                                            ; - java.lang.invoke.VarHandleGuards::guard_LIJ_V@50 (line 811)
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@23 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f93a863ec2b:   add    $0x4,%r13d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.06%         │  0x00007f93a863ec2f:   add    $0x20,%r8d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - sun.security.provider.ByteArrayAccess::l2bLittle@26 (line 196)
                 │                                                            ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                 │                                                            ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.09%         │  0x00007f93a863ec33:   cmp    %esi,%r8d
                 ╰  0x00007f93a863ec36:   jl     0x00007f93a863ebd0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@9 (line 194)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
   0.08%            0x00007f93a863ec38:   mov    %edx,%edi
   0.06%            0x00007f93a863ec3a:   vmovd  %xmm1,%edx
   0.05%            0x00007f93a863ec3e:   xchg   %ax,%ax
   0.09%            0x00007f93a863ec40:   cmp    %edx,%r8d                    ;   {no_reloc}
                    0x00007f93a863ec43:   jge    0x00007f93a863ec6f
                    0x00007f93a863ec45:   data16 xchg %ax,%ax                 ;*getstatic LONG_ARRAY {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@12 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
                    0x00007f93a863ec48:   mov    %r13d,%ebp
                    0x00007f93a863ec4b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - sun.security.provider.ByteArrayAccess::l2bLittle@19 (line 195)
                                                                              ; - sun.security.provider.SHA3::lanes2Bytes@17 (line 159)
                                                                              ; - sun.security.provider.SHA3::keccak@1443 (line 289)
....................................................................................................
  84.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  84.15%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 599 
   9.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 636 
   2.47%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 599 
   1.73%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 599 
   0.87%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.13%  <...other 363 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  88.35%         c2, level 4  sun.security.provider.SHA3::keccak, version 2, compile id 599 
   9.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 636 
   2.22%              kernel  [unknown] 
   0.05%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.03%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 676 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.00%           libjvm.so  os::write 
   0.15%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.44%         c2, level 4
   2.22%              kernel
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.05%        runtime stub
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:19:56

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
MessageDigestBenchmark.digest              MD5     16384  avgt    5   30.471 ± 0.018  us/op
MessageDigestBenchmark.digest:asm          MD5     16384  avgt           NaN            ---
MessageDigestBenchmark.digest            SHA-1     16384  avgt    5   68.066 ± 0.026  us/op
MessageDigestBenchmark.digest:asm        SHA-1     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-224     16384  avgt    5   54.310 ± 0.022  us/op
MessageDigestBenchmark.digest:asm      SHA-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-256     16384  avgt    5   54.352 ± 0.016  us/op
MessageDigestBenchmark.digest:asm      SHA-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-384     16384  avgt    5   37.865 ± 0.028  us/op
MessageDigestBenchmark.digest:asm      SHA-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/224     16384  avgt    5   37.860 ± 0.015  us/op
MessageDigestBenchmark.digest:asm  SHA-512/224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/256     16384  avgt    5   37.864 ± 0.008  us/op
MessageDigestBenchmark.digest:asm  SHA-512/256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-224     16384  avgt    5   85.410 ± 0.084  us/op
MessageDigestBenchmark.digest:asm     SHA3-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-256     16384  avgt    5   89.130 ± 0.025  us/op
MessageDigestBenchmark.digest:asm     SHA3-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-384     16384  avgt    5  113.035 ± 0.149  us/op
MessageDigestBenchmark.digest:asm     SHA3-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-512     16384  avgt    5  157.065 ± 0.029  us/op
MessageDigestBenchmark.digest:asm     SHA3-512     16384  avgt           NaN            ---
