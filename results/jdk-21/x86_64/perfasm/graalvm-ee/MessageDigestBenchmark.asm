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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = MD5, length = 16384)

# Run progress: 0.00% complete, ETA 00:18:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 33.015 us/op
# Warmup Iteration   2: 30.434 us/op
# Warmup Iteration   3: 30.430 us/op
# Warmup Iteration   4: 30.431 us/op
# Warmup Iteration   5: 30.430 us/op
Iteration   1: 30.431 us/op
Iteration   2: 30.431 us/op
Iteration   3: 30.430 us/op
Iteration   4: 30.431 us/op
Iteration   5: 30.431 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  30.431 ±(99.9%) 0.002 us/op [Average]
  (min, avg, max) = (30.430, 30.431, 30.431), stdev = 0.001
  CI (99.9%): [30.429, 30.433] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 244160 total address lines.
Perf output processed (skipped 60.794 seconds):
 Column 1: cycles (50517 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::md5_implCompressMB 

           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::md5_implCompressMB [0x00007f00ba78da40, 0x00007f00ba78e0f6] (1718 bytes)
           --------------------------------------------------------------------------------
             0x00007f00ba78da40:   push   %rbp
             0x00007f00ba78da41:   mov    %rsp,%rbp
   0.00%     0x00007f00ba78da44:   push   %rbx
   0.00%     0x00007f00ba78da45:   push   %rdi
             0x00007f00ba78da46:   push   %rsi
             0x00007f00ba78da47:   push   %r15
             0x00007f00ba78da49:   sub    $0x10,%rsp
             0x00007f00ba78da4d:   mov    %rdi,%r15
             0x00007f00ba78da50:   mov    %rsi,(%rsp)
             0x00007f00ba78da54:   mov    %edx,0x8(%rsp)
   0.00%     0x00007f00ba78da58:   mov    %ecx,0xc(%rsp)
             0x00007f00ba78da5c:   mov    (%rsp),%rdi
             0x00007f00ba78da60:   mov    (%rdi),%eax
             0x00007f00ba78da62:   mov    0x4(%rdi),%ebx
             0x00007f00ba78da65:   mov    0x8(%rdi),%ecx
             0x00007f00ba78da68:   mov    0xc(%rdi),%edx
          ↗  0x00007f00ba78da6b:   add    $0xd76aa478,%eax
          │  0x00007f00ba78da70:   mov    %ecx,%esi
   0.00%  │  0x00007f00ba78da72:   add    (%r15),%eax
   0.35%  │  0x00007f00ba78da75:   xor    %edx,%esi
          │  0x00007f00ba78da77:   and    %ebx,%esi
          │  0x00007f00ba78da79:   xor    %edx,%esi
          │  0x00007f00ba78da7b:   add    %esi,%eax
   0.32%  │  0x00007f00ba78da7d:   rol    $0x7,%eax
          │  0x00007f00ba78da80:   add    %ebx,%eax
          │  0x00007f00ba78da82:   add    $0xe8c7b756,%edx
   0.00%  │  0x00007f00ba78da88:   mov    %ebx,%esi
   0.35%  │  0x00007f00ba78da8a:   add    0x4(%r15),%edx
          │  0x00007f00ba78da8e:   xor    %ecx,%esi
          │  0x00007f00ba78da90:   and    %eax,%esi
          │  0x00007f00ba78da92:   xor    %ecx,%esi
   0.36%  │  0x00007f00ba78da94:   add    %esi,%edx
   0.00%  │  0x00007f00ba78da96:   rol    $0xc,%edx
   0.34%  │  0x00007f00ba78da99:   add    %eax,%edx
   0.27%  │  0x00007f00ba78da9b:   add    $0x242070db,%ecx
   0.01%  │  0x00007f00ba78daa1:   mov    %eax,%esi
          │  0x00007f00ba78daa3:   add    0x8(%r15),%ecx
          │  0x00007f00ba78daa7:   xor    %ebx,%esi
   0.31%  │  0x00007f00ba78daa9:   and    %edx,%esi
   0.01%  │  0x00007f00ba78daab:   xor    %ebx,%esi
   0.50%  │  0x00007f00ba78daad:   add    %esi,%ecx
   0.16%  │  0x00007f00ba78daaf:   rol    $0x11,%ecx
   0.29%  │  0x00007f00ba78dab2:   add    %edx,%ecx
   0.26%  │  0x00007f00ba78dab4:   add    $0xc1bdceee,%ebx
   0.00%  │  0x00007f00ba78daba:   mov    %edx,%esi
          │  0x00007f00ba78dabc:   add    0xc(%r15),%ebx
          │  0x00007f00ba78dac0:   xor    %eax,%esi
   0.35%  │  0x00007f00ba78dac2:   and    %ecx,%esi
   0.00%  │  0x00007f00ba78dac4:   xor    %eax,%esi
   0.56%  │  0x00007f00ba78dac6:   add    %esi,%ebx
   0.17%  │  0x00007f00ba78dac8:   rol    $0x16,%ebx
   0.27%  │  0x00007f00ba78dacb:   add    %ecx,%ebx
   0.29%  │  0x00007f00ba78dacd:   add    $0xf57c0faf,%eax
   0.00%  │  0x00007f00ba78dad2:   mov    %ecx,%esi
          │  0x00007f00ba78dad4:   add    0x10(%r15),%eax
          │  0x00007f00ba78dad8:   xor    %edx,%esi
   0.32%  │  0x00007f00ba78dada:   and    %ebx,%esi
          │  0x00007f00ba78dadc:   xor    %edx,%esi
   0.48%  │  0x00007f00ba78dade:   add    %esi,%eax
   0.14%  │  0x00007f00ba78dae0:   rol    $0x7,%eax
   0.28%  │  0x00007f00ba78dae3:   add    %ebx,%eax
   0.32%  │  0x00007f00ba78dae5:   add    $0x4787c62a,%edx
          │  0x00007f00ba78daeb:   mov    %ebx,%esi
          │  0x00007f00ba78daed:   add    0x14(%r15),%edx
   0.00%  │  0x00007f00ba78daf1:   xor    %ecx,%esi
   0.32%  │  0x00007f00ba78daf3:   and    %eax,%esi
   0.00%  │  0x00007f00ba78daf5:   xor    %ecx,%esi
   0.49%  │  0x00007f00ba78daf7:   add    %esi,%edx
   0.14%  │  0x00007f00ba78daf9:   rol    $0xc,%edx
   0.30%  │  0x00007f00ba78dafc:   add    %eax,%edx
   0.29%  │  0x00007f00ba78dafe:   add    $0xa8304613,%ecx
          │  0x00007f00ba78db04:   mov    %eax,%esi
          │  0x00007f00ba78db06:   add    0x18(%r15),%ecx
          │  0x00007f00ba78db0a:   xor    %ebx,%esi
   0.33%  │  0x00007f00ba78db0c:   and    %edx,%esi
   0.01%  │  0x00007f00ba78db0e:   xor    %ebx,%esi
   0.50%  │  0x00007f00ba78db10:   add    %esi,%ecx
   0.13%  │  0x00007f00ba78db12:   rol    $0x11,%ecx
   0.31%  │  0x00007f00ba78db15:   add    %edx,%ecx
   0.32%  │  0x00007f00ba78db17:   add    $0xfd469501,%ebx
   0.00%  │  0x00007f00ba78db1d:   mov    %edx,%esi
          │  0x00007f00ba78db1f:   add    0x1c(%r15),%ebx
          │  0x00007f00ba78db23:   xor    %eax,%esi
   0.31%  │  0x00007f00ba78db25:   and    %ecx,%esi
   0.00%  │  0x00007f00ba78db27:   xor    %eax,%esi
   0.57%  │  0x00007f00ba78db29:   add    %esi,%ebx
   0.16%  │  0x00007f00ba78db2b:   rol    $0x16,%ebx
   0.29%  │  0x00007f00ba78db2e:   add    %ecx,%ebx
   0.33%  │  0x00007f00ba78db30:   add    $0x698098d8,%eax
          │  0x00007f00ba78db35:   mov    %ecx,%esi
          │  0x00007f00ba78db37:   add    0x20(%r15),%eax
          │  0x00007f00ba78db3b:   xor    %edx,%esi
   0.33%  │  0x00007f00ba78db3d:   and    %ebx,%esi
          │  0x00007f00ba78db3f:   xor    %edx,%esi
   0.46%  │  0x00007f00ba78db41:   add    %esi,%eax
   0.18%  │  0x00007f00ba78db43:   rol    $0x7,%eax
   0.28%  │  0x00007f00ba78db46:   add    %ebx,%eax
   0.32%  │  0x00007f00ba78db48:   add    $0x8b44f7af,%edx
   0.00%  │  0x00007f00ba78db4e:   mov    %ebx,%esi
          │  0x00007f00ba78db50:   add    0x24(%r15),%edx
          │  0x00007f00ba78db54:   xor    %ecx,%esi
   0.33%  │  0x00007f00ba78db56:   and    %eax,%esi
   0.00%  │  0x00007f00ba78db58:   xor    %ecx,%esi
   0.52%  │  0x00007f00ba78db5a:   add    %esi,%edx
   0.16%  │  0x00007f00ba78db5c:   rol    $0xc,%edx
   0.32%  │  0x00007f00ba78db5f:   add    %eax,%edx
   0.33%  │  0x00007f00ba78db61:   add    $0xffff5bb1,%ecx
   0.00%  │  0x00007f00ba78db67:   mov    %eax,%esi
   0.00%  │  0x00007f00ba78db69:   add    0x28(%r15),%ecx
          │  0x00007f00ba78db6d:   xor    %ebx,%esi
   0.33%  │  0x00007f00ba78db6f:   and    %edx,%esi
   0.01%  │  0x00007f00ba78db71:   xor    %ebx,%esi
   0.66%  │  0x00007f00ba78db73:   add    %esi,%ecx
   0.11%  │  0x00007f00ba78db75:   rol    $0x11,%ecx
   0.25%  │  0x00007f00ba78db78:   add    %edx,%ecx
   0.27%  │  0x00007f00ba78db7a:   add    $0x895cd7be,%ebx
   0.01%  │  0x00007f00ba78db80:   mov    %edx,%esi
          │  0x00007f00ba78db82:   add    0x2c(%r15),%ebx
          │  0x00007f00ba78db86:   xor    %eax,%esi
   0.34%  │  0x00007f00ba78db88:   and    %ecx,%esi
   0.01%  │  0x00007f00ba78db8a:   xor    %eax,%esi
   0.68%  │  0x00007f00ba78db8c:   add    %esi,%ebx
   0.09%  │  0x00007f00ba78db8e:   rol    $0x16,%ebx
   0.25%  │  0x00007f00ba78db91:   add    %ecx,%ebx
   0.32%  │  0x00007f00ba78db93:   add    $0x6b901122,%eax
   0.02%  │  0x00007f00ba78db98:   mov    %ecx,%esi
          │  0x00007f00ba78db9a:   add    0x30(%r15),%eax
          │  0x00007f00ba78db9e:   xor    %edx,%esi
   0.33%  │  0x00007f00ba78dba0:   and    %ebx,%esi
   0.02%  │  0x00007f00ba78dba2:   xor    %edx,%esi
   0.61%  │  0x00007f00ba78dba4:   add    %esi,%eax
   0.11%  │  0x00007f00ba78dba6:   rol    $0x7,%eax
   0.24%  │  0x00007f00ba78dba9:   add    %ebx,%eax
   0.28%  │  0x00007f00ba78dbab:   add    $0xfd987193,%edx
   0.02%  │  0x00007f00ba78dbb1:   mov    %ebx,%esi
          │  0x00007f00ba78dbb3:   add    0x34(%r15),%edx
          │  0x00007f00ba78dbb7:   xor    %ecx,%esi
   0.26%  │  0x00007f00ba78dbb9:   and    %eax,%esi
   0.02%  │  0x00007f00ba78dbbb:   xor    %ecx,%esi
   0.56%  │  0x00007f00ba78dbbd:   add    %esi,%edx
   0.16%  │  0x00007f00ba78dbbf:   rol    $0xc,%edx
   0.23%  │  0x00007f00ba78dbc2:   add    %eax,%edx
   0.32%  │  0x00007f00ba78dbc4:   add    $0xa679438e,%ecx
   0.02%  │  0x00007f00ba78dbca:   mov    %eax,%esi
          │  0x00007f00ba78dbcc:   add    0x38(%r15),%ecx
          │  0x00007f00ba78dbd0:   xor    %ebx,%esi
   0.29%  │  0x00007f00ba78dbd2:   and    %edx,%esi
   0.02%  │  0x00007f00ba78dbd4:   xor    %ebx,%esi
   0.55%  │  0x00007f00ba78dbd6:   add    %esi,%ecx
   0.18%  │  0x00007f00ba78dbd8:   rol    $0x11,%ecx
   0.30%  │  0x00007f00ba78dbdb:   add    %edx,%ecx
   0.31%  │  0x00007f00ba78dbdd:   add    $0x49b40821,%ebx
   0.01%  │  0x00007f00ba78dbe3:   mov    %edx,%esi
          │  0x00007f00ba78dbe5:   add    0x3c(%r15),%ebx
          │  0x00007f00ba78dbe9:   xor    %eax,%esi
   0.30%  │  0x00007f00ba78dbeb:   and    %ecx,%esi
   0.02%  │  0x00007f00ba78dbed:   xor    %eax,%esi
   0.61%  │  0x00007f00ba78dbef:   add    %esi,%ebx
   0.14%  │  0x00007f00ba78dbf1:   rol    $0x16,%ebx
   0.28%  │  0x00007f00ba78dbf4:   add    %ecx,%ebx
   0.25%  │  0x00007f00ba78dbf6:   add    $0xf61e2562,%eax
   0.02%  │  0x00007f00ba78dbfb:   mov    %edx,%esi
          │  0x00007f00ba78dbfd:   mov    %edx,%edi
          │  0x00007f00ba78dbff:   add    0x4(%r15),%eax
   0.23%  │  0x00007f00ba78dc03:   not    %esi
   0.02%  │  0x00007f00ba78dc05:   and    %ebx,%edi
          │  0x00007f00ba78dc07:   and    %ecx,%esi
          │  0x00007f00ba78dc09:   or     %edi,%esi
   0.31%  │  0x00007f00ba78dc0b:   add    %esi,%eax
   0.36%  │  0x00007f00ba78dc0d:   rol    $0x5,%eax
   0.29%  │  0x00007f00ba78dc10:   add    %ebx,%eax
   0.30%  │  0x00007f00ba78dc12:   add    $0xc040b340,%edx
          │  0x00007f00ba78dc18:   mov    %ecx,%esi
          │  0x00007f00ba78dc1a:   mov    %ecx,%edi
          │  0x00007f00ba78dc1c:   add    0x18(%r15),%edx
   0.32%  │  0x00007f00ba78dc20:   not    %esi
          │  0x00007f00ba78dc22:   and    %eax,%edi
          │  0x00007f00ba78dc24:   and    %ebx,%esi
          │  0x00007f00ba78dc26:   or     %edi,%esi
   0.33%  │  0x00007f00ba78dc28:   add    %esi,%edx
   0.30%  │  0x00007f00ba78dc2a:   rol    $0x9,%edx
   0.32%  │  0x00007f00ba78dc2d:   add    %eax,%edx
   0.32%  │  0x00007f00ba78dc2f:   add    $0x265e5a51,%ecx
          │  0x00007f00ba78dc35:   mov    %ebx,%esi
          │  0x00007f00ba78dc37:   mov    %ebx,%edi
          │  0x00007f00ba78dc39:   add    0x2c(%r15),%ecx
   0.33%  │  0x00007f00ba78dc3d:   not    %esi
   0.00%  │  0x00007f00ba78dc3f:   and    %edx,%edi
          │  0x00007f00ba78dc41:   and    %eax,%esi
          │  0x00007f00ba78dc43:   or     %edi,%esi
   0.36%  │  0x00007f00ba78dc45:   add    %esi,%ecx
   0.34%  │  0x00007f00ba78dc47:   rol    $0xe,%ecx
   0.33%  │  0x00007f00ba78dc4a:   add    %edx,%ecx
   0.30%  │  0x00007f00ba78dc4c:   add    $0xe9b6c7aa,%ebx
          │  0x00007f00ba78dc52:   mov    %eax,%esi
          │  0x00007f00ba78dc54:   mov    %eax,%edi
          │  0x00007f00ba78dc56:   add    (%r15),%ebx
   0.32%  │  0x00007f00ba78dc59:   not    %esi
          │  0x00007f00ba78dc5b:   and    %ecx,%edi
          │  0x00007f00ba78dc5d:   and    %edx,%esi
          │  0x00007f00ba78dc5f:   or     %edi,%esi
   0.34%  │  0x00007f00ba78dc61:   add    %esi,%ebx
   0.35%  │  0x00007f00ba78dc63:   rol    $0x14,%ebx
   0.31%  │  0x00007f00ba78dc66:   add    %ecx,%ebx
   0.32%  │  0x00007f00ba78dc68:   add    $0xd62f105d,%eax
          │  0x00007f00ba78dc6d:   mov    %edx,%esi
          │  0x00007f00ba78dc6f:   mov    %edx,%edi
          │  0x00007f00ba78dc71:   add    0x14(%r15),%eax
   0.29%  │  0x00007f00ba78dc75:   not    %esi
          │  0x00007f00ba78dc77:   and    %ebx,%edi
          │  0x00007f00ba78dc79:   and    %ecx,%esi
          │  0x00007f00ba78dc7b:   or     %edi,%esi
   0.27%  │  0x00007f00ba78dc7d:   add    %esi,%eax
   0.30%  │  0x00007f00ba78dc7f:   rol    $0x5,%eax
   0.28%  │  0x00007f00ba78dc82:   add    %ebx,%eax
   0.35%  │  0x00007f00ba78dc84:   add    $0x2441453,%edx
          │  0x00007f00ba78dc8a:   mov    %ecx,%esi
          │  0x00007f00ba78dc8c:   mov    %ecx,%edi
          │  0x00007f00ba78dc8e:   add    0x28(%r15),%edx
   0.33%  │  0x00007f00ba78dc92:   not    %esi
          │  0x00007f00ba78dc94:   and    %eax,%edi
          │  0x00007f00ba78dc96:   and    %ebx,%esi
          │  0x00007f00ba78dc98:   or     %edi,%esi
   0.35%  │  0x00007f00ba78dc9a:   add    %esi,%edx
   0.29%  │  0x00007f00ba78dc9c:   rol    $0x9,%edx
   0.31%  │  0x00007f00ba78dc9f:   add    %eax,%edx
   0.32%  │  0x00007f00ba78dca1:   add    $0xd8a1e681,%ecx
          │  0x00007f00ba78dca7:   mov    %ebx,%esi
          │  0x00007f00ba78dca9:   mov    %ebx,%edi
          │  0x00007f00ba78dcab:   add    0x3c(%r15),%ecx
   0.34%  │  0x00007f00ba78dcaf:   not    %esi
          │  0x00007f00ba78dcb1:   and    %edx,%edi
          │  0x00007f00ba78dcb3:   and    %eax,%esi
          │  0x00007f00ba78dcb5:   or     %edi,%esi
   0.32%  │  0x00007f00ba78dcb7:   add    %esi,%ecx
   0.30%  │  0x00007f00ba78dcb9:   rol    $0xe,%ecx
   0.29%  │  0x00007f00ba78dcbc:   add    %edx,%ecx
   0.32%  │  0x00007f00ba78dcbe:   add    $0xe7d3fbc8,%ebx
          │  0x00007f00ba78dcc4:   mov    %eax,%esi
          │  0x00007f00ba78dcc6:   mov    %eax,%edi
          │  0x00007f00ba78dcc8:   add    0x10(%r15),%ebx
   0.34%  │  0x00007f00ba78dccc:   not    %esi
          │  0x00007f00ba78dcce:   and    %ecx,%edi
          │  0x00007f00ba78dcd0:   and    %edx,%esi
          │  0x00007f00ba78dcd2:   or     %edi,%esi
   0.29%  │  0x00007f00ba78dcd4:   add    %esi,%ebx
   0.31%  │  0x00007f00ba78dcd6:   rol    $0x14,%ebx
   0.33%  │  0x00007f00ba78dcd9:   add    %ecx,%ebx
   0.34%  │  0x00007f00ba78dcdb:   add    $0x21e1cde6,%eax
          │  0x00007f00ba78dce0:   mov    %edx,%esi
          │  0x00007f00ba78dce2:   mov    %edx,%edi
          │  0x00007f00ba78dce4:   add    0x24(%r15),%eax
   0.32%  │  0x00007f00ba78dce8:   not    %esi
          │  0x00007f00ba78dcea:   and    %ebx,%edi
          │  0x00007f00ba78dcec:   and    %ecx,%esi
          │  0x00007f00ba78dcee:   or     %edi,%esi
   0.35%  │  0x00007f00ba78dcf0:   add    %esi,%eax
   0.30%  │  0x00007f00ba78dcf2:   rol    $0x5,%eax
   0.29%  │  0x00007f00ba78dcf5:   add    %ebx,%eax
   0.28%  │  0x00007f00ba78dcf7:   add    $0xc33707d6,%edx
          │  0x00007f00ba78dcfd:   mov    %ecx,%esi
          │  0x00007f00ba78dcff:   mov    %ecx,%edi
          │  0x00007f00ba78dd01:   add    0x38(%r15),%edx
   0.33%  │  0x00007f00ba78dd05:   not    %esi
          │  0x00007f00ba78dd07:   and    %eax,%edi
          │  0x00007f00ba78dd09:   and    %ebx,%esi
          │  0x00007f00ba78dd0b:   or     %edi,%esi
   0.33%  │  0x00007f00ba78dd0d:   add    %esi,%edx
   0.27%  │  0x00007f00ba78dd0f:   rol    $0x9,%edx
   0.33%  │  0x00007f00ba78dd12:   add    %eax,%edx
   0.26%  │  0x00007f00ba78dd14:   add    $0xf4d50d87,%ecx
          │  0x00007f00ba78dd1a:   mov    %ebx,%esi
          │  0x00007f00ba78dd1c:   mov    %ebx,%edi
          │  0x00007f00ba78dd1e:   add    0xc(%r15),%ecx
   0.32%  │  0x00007f00ba78dd22:   not    %esi
          │  0x00007f00ba78dd24:   and    %edx,%edi
          │  0x00007f00ba78dd26:   and    %eax,%esi
          │  0x00007f00ba78dd28:   or     %edi,%esi
   0.34%  │  0x00007f00ba78dd2a:   add    %esi,%ecx
   0.33%  │  0x00007f00ba78dd2c:   rol    $0xe,%ecx
   0.33%  │  0x00007f00ba78dd2f:   add    %edx,%ecx
   0.31%  │  0x00007f00ba78dd31:   add    $0x455a14ed,%ebx
          │  0x00007f00ba78dd37:   mov    %eax,%esi
          │  0x00007f00ba78dd39:   mov    %eax,%edi
          │  0x00007f00ba78dd3b:   add    0x20(%r15),%ebx
   0.27%  │  0x00007f00ba78dd3f:   not    %esi
          │  0x00007f00ba78dd41:   and    %ecx,%edi
          │  0x00007f00ba78dd43:   and    %edx,%esi
          │  0x00007f00ba78dd45:   or     %edi,%esi
   0.29%  │  0x00007f00ba78dd47:   add    %esi,%ebx
   0.30%  │  0x00007f00ba78dd49:   rol    $0x14,%ebx
   0.30%  │  0x00007f00ba78dd4c:   add    %ecx,%ebx
   0.31%  │  0x00007f00ba78dd4e:   add    $0xa9e3e905,%eax
          │  0x00007f00ba78dd53:   mov    %edx,%esi
          │  0x00007f00ba78dd55:   mov    %edx,%edi
          │  0x00007f00ba78dd57:   add    0x34(%r15),%eax
   0.35%  │  0x00007f00ba78dd5b:   not    %esi
          │  0x00007f00ba78dd5d:   and    %ebx,%edi
          │  0x00007f00ba78dd5f:   and    %ecx,%esi
          │  0x00007f00ba78dd61:   or     %edi,%esi
   0.35%  │  0x00007f00ba78dd63:   add    %esi,%eax
   0.31%  │  0x00007f00ba78dd65:   rol    $0x5,%eax
   0.29%  │  0x00007f00ba78dd68:   add    %ebx,%eax
   0.29%  │  0x00007f00ba78dd6a:   add    $0xfcefa3f8,%edx
          │  0x00007f00ba78dd70:   mov    %ecx,%esi
          │  0x00007f00ba78dd72:   mov    %ecx,%edi
          │  0x00007f00ba78dd74:   add    0x8(%r15),%edx
   0.32%  │  0x00007f00ba78dd78:   not    %esi
          │  0x00007f00ba78dd7a:   and    %eax,%edi
          │  0x00007f00ba78dd7c:   and    %ebx,%esi
          │  0x00007f00ba78dd7e:   or     %edi,%esi
   0.34%  │  0x00007f00ba78dd80:   add    %esi,%edx
   0.34%  │  0x00007f00ba78dd82:   rol    $0x9,%edx
   0.37%  │  0x00007f00ba78dd85:   add    %eax,%edx
   0.26%  │  0x00007f00ba78dd87:   add    $0x676f02d9,%ecx
          │  0x00007f00ba78dd8d:   mov    %ebx,%esi
          │  0x00007f00ba78dd8f:   mov    %ebx,%edi
          │  0x00007f00ba78dd91:   add    0x1c(%r15),%ecx
   0.31%  │  0x00007f00ba78dd95:   not    %esi
          │  0x00007f00ba78dd97:   and    %edx,%edi
          │  0x00007f00ba78dd99:   and    %eax,%esi
          │  0x00007f00ba78dd9b:   or     %edi,%esi
   0.31%  │  0x00007f00ba78dd9d:   add    %esi,%ecx
   0.31%  │  0x00007f00ba78dd9f:   rol    $0xe,%ecx
   0.31%  │  0x00007f00ba78dda2:   add    %edx,%ecx
   0.30%  │  0x00007f00ba78dda4:   add    $0x8d2a4c8a,%ebx
          │  0x00007f00ba78ddaa:   mov    %eax,%esi
          │  0x00007f00ba78ddac:   mov    %eax,%edi
          │  0x00007f00ba78ddae:   add    0x30(%r15),%ebx
   0.31%  │  0x00007f00ba78ddb2:   not    %esi
          │  0x00007f00ba78ddb4:   and    %ecx,%edi
          │  0x00007f00ba78ddb6:   and    %edx,%esi
          │  0x00007f00ba78ddb8:   or     %edi,%esi
   0.34%  │  0x00007f00ba78ddba:   add    %esi,%ebx
   0.35%  │  0x00007f00ba78ddbc:   rol    $0x14,%ebx
   0.31%  │  0x00007f00ba78ddbf:   add    %ecx,%ebx
   0.33%  │  0x00007f00ba78ddc1:   add    $0xfffa3942,%eax
          │  0x00007f00ba78ddc6:   mov    %ecx,%esi
          │  0x00007f00ba78ddc8:   add    0x14(%r15),%eax
          │  0x00007f00ba78ddcc:   xor    %edx,%esi
   0.31%  │  0x00007f00ba78ddce:   xor    %ebx,%esi
          │  0x00007f00ba78ddd0:   add    %esi,%eax
   0.29%  │  0x00007f00ba78ddd2:   rol    $0x4,%eax
   0.32%  │  0x00007f00ba78ddd5:   add    %ebx,%eax
   0.29%  │  0x00007f00ba78ddd7:   add    $0x8771f681,%edx
          │  0x00007f00ba78dddd:   mov    %ebx,%esi
          │  0x00007f00ba78dddf:   add    0x20(%r15),%edx
          │  0x00007f00ba78dde3:   xor    %ecx,%esi
   0.34%  │  0x00007f00ba78dde5:   xor    %eax,%esi
          │  0x00007f00ba78dde7:   add    %esi,%edx
   0.34%  │  0x00007f00ba78dde9:   rol    $0xb,%edx
   0.30%  │  0x00007f00ba78ddec:   add    %eax,%edx
   0.31%  │  0x00007f00ba78ddee:   add    $0x6d9d6122,%ecx
          │  0x00007f00ba78ddf4:   mov    %eax,%esi
          │  0x00007f00ba78ddf6:   add    0x2c(%r15),%ecx
          │  0x00007f00ba78ddfa:   xor    %ebx,%esi
   0.33%  │  0x00007f00ba78ddfc:   xor    %edx,%esi
          │  0x00007f00ba78ddfe:   add    %esi,%ecx
   0.31%  │  0x00007f00ba78de00:   rol    $0x10,%ecx
   0.31%  │  0x00007f00ba78de03:   add    %edx,%ecx
   0.32%  │  0x00007f00ba78de05:   add    $0xfde5380c,%ebx
          │  0x00007f00ba78de0b:   mov    %edx,%esi
          │  0x00007f00ba78de0d:   add    0x38(%r15),%ebx
          │  0x00007f00ba78de11:   xor    %eax,%esi
   0.36%  │  0x00007f00ba78de13:   xor    %ecx,%esi
   0.00%  │  0x00007f00ba78de15:   add    %esi,%ebx
   0.31%  │  0x00007f00ba78de17:   rol    $0x17,%ebx
   0.35%  │  0x00007f00ba78de1a:   add    %ecx,%ebx
   0.29%  │  0x00007f00ba78de1c:   add    $0xa4beea44,%eax
          │  0x00007f00ba78de21:   mov    %ecx,%esi
          │  0x00007f00ba78de23:   add    0x4(%r15),%eax
          │  0x00007f00ba78de27:   xor    %edx,%esi
   0.36%  │  0x00007f00ba78de29:   xor    %ebx,%esi
          │  0x00007f00ba78de2b:   add    %esi,%eax
   0.29%  │  0x00007f00ba78de2d:   rol    $0x4,%eax
   0.32%  │  0x00007f00ba78de30:   add    %ebx,%eax
   0.31%  │  0x00007f00ba78de32:   add    $0x4bdecfa9,%edx
          │  0x00007f00ba78de38:   mov    %ebx,%esi
          │  0x00007f00ba78de3a:   add    0x10(%r15),%edx
          │  0x00007f00ba78de3e:   xor    %ecx,%esi
   0.31%  │  0x00007f00ba78de40:   xor    %eax,%esi
          │  0x00007f00ba78de42:   add    %esi,%edx
   0.32%  │  0x00007f00ba78de44:   rol    $0xb,%edx
   0.28%  │  0x00007f00ba78de47:   add    %eax,%edx
   0.30%  │  0x00007f00ba78de49:   add    $0xf6bb4b60,%ecx
          │  0x00007f00ba78de4f:   mov    %eax,%esi
          │  0x00007f00ba78de51:   add    0x1c(%r15),%ecx
          │  0x00007f00ba78de55:   xor    %ebx,%esi
   0.30%  │  0x00007f00ba78de57:   xor    %edx,%esi
          │  0x00007f00ba78de59:   add    %esi,%ecx
   0.32%  │  0x00007f00ba78de5b:   rol    $0x10,%ecx
   0.30%  │  0x00007f00ba78de5e:   add    %edx,%ecx
   0.26%  │  0x00007f00ba78de60:   add    $0xbebfbc70,%ebx
          │  0x00007f00ba78de66:   mov    %edx,%esi
          │  0x00007f00ba78de68:   add    0x28(%r15),%ebx
          │  0x00007f00ba78de6c:   xor    %eax,%esi
   0.28%  │  0x00007f00ba78de6e:   xor    %ecx,%esi
   0.00%  │  0x00007f00ba78de70:   add    %esi,%ebx
   0.31%  │  0x00007f00ba78de72:   rol    $0x17,%ebx
   0.28%  │  0x00007f00ba78de75:   add    %ecx,%ebx
   0.29%  │  0x00007f00ba78de77:   add    $0x289b7ec6,%eax
          │  0x00007f00ba78de7c:   mov    %ecx,%esi
          │  0x00007f00ba78de7e:   add    0x34(%r15),%eax
          │  0x00007f00ba78de82:   xor    %edx,%esi
   0.29%  │  0x00007f00ba78de84:   xor    %ebx,%esi
          │  0x00007f00ba78de86:   add    %esi,%eax
   0.31%  │  0x00007f00ba78de88:   rol    $0x4,%eax
   0.30%  │  0x00007f00ba78de8b:   add    %ebx,%eax
   0.36%  │  0x00007f00ba78de8d:   add    $0xeaa127fa,%edx
          │  0x00007f00ba78de93:   mov    %ebx,%esi
          │  0x00007f00ba78de95:   add    (%r15),%edx
          │  0x00007f00ba78de98:   xor    %ecx,%esi
   0.34%  │  0x00007f00ba78de9a:   xor    %eax,%esi
   0.00%  │  0x00007f00ba78de9c:   add    %esi,%edx
   0.36%  │  0x00007f00ba78de9e:   rol    $0xb,%edx
   0.31%  │  0x00007f00ba78dea1:   add    %eax,%edx
   0.29%  │  0x00007f00ba78dea3:   add    $0xd4ef3085,%ecx
          │  0x00007f00ba78dea9:   mov    %eax,%esi
          │  0x00007f00ba78deab:   add    0xc(%r15),%ecx
          │  0x00007f00ba78deaf:   xor    %ebx,%esi
   0.32%  │  0x00007f00ba78deb1:   xor    %edx,%esi
          │  0x00007f00ba78deb3:   add    %esi,%ecx
   0.33%  │  0x00007f00ba78deb5:   rol    $0x10,%ecx
   0.33%  │  0x00007f00ba78deb8:   add    %edx,%ecx
   0.30%  │  0x00007f00ba78deba:   add    $0x4881d05,%ebx
          │  0x00007f00ba78dec0:   mov    %edx,%esi
          │  0x00007f00ba78dec2:   add    0x18(%r15),%ebx
          │  0x00007f00ba78dec6:   xor    %eax,%esi
   0.36%  │  0x00007f00ba78dec8:   xor    %ecx,%esi
          │  0x00007f00ba78deca:   add    %esi,%ebx
   0.35%  │  0x00007f00ba78decc:   rol    $0x17,%ebx
   0.32%  │  0x00007f00ba78decf:   add    %ecx,%ebx
   0.27%  │  0x00007f00ba78ded1:   add    $0xd9d4d039,%eax
          │  0x00007f00ba78ded6:   mov    %ecx,%esi
          │  0x00007f00ba78ded8:   add    0x24(%r15),%eax
          │  0x00007f00ba78dedc:   xor    %edx,%esi
   0.31%  │  0x00007f00ba78dede:   xor    %ebx,%esi
          │  0x00007f00ba78dee0:   add    %esi,%eax
   0.31%  │  0x00007f00ba78dee2:   rol    $0x4,%eax
   0.30%  │  0x00007f00ba78dee5:   add    %ebx,%eax
   0.29%  │  0x00007f00ba78dee7:   add    $0xe6db99e5,%edx
          │  0x00007f00ba78deed:   mov    %ebx,%esi
          │  0x00007f00ba78deef:   add    0x30(%r15),%edx
          │  0x00007f00ba78def3:   xor    %ecx,%esi
   0.34%  │  0x00007f00ba78def5:   xor    %eax,%esi
          │  0x00007f00ba78def7:   add    %esi,%edx
   0.33%  │  0x00007f00ba78def9:   rol    $0xb,%edx
   0.35%  │  0x00007f00ba78defc:   add    %eax,%edx
   0.32%  │  0x00007f00ba78defe:   add    $0x1fa27cf8,%ecx
          │  0x00007f00ba78df04:   mov    %eax,%esi
          │  0x00007f00ba78df06:   add    0x3c(%r15),%ecx
          │  0x00007f00ba78df0a:   xor    %ebx,%esi
   0.32%  │  0x00007f00ba78df0c:   xor    %edx,%esi
   0.00%  │  0x00007f00ba78df0e:   add    %esi,%ecx
   0.33%  │  0x00007f00ba78df10:   rol    $0x10,%ecx
   0.34%  │  0x00007f00ba78df13:   add    %edx,%ecx
   0.34%  │  0x00007f00ba78df15:   add    $0xc4ac5665,%ebx
          │  0x00007f00ba78df1b:   mov    %edx,%esi
          │  0x00007f00ba78df1d:   add    0x8(%r15),%ebx
          │  0x00007f00ba78df21:   xor    %eax,%esi
   0.30%  │  0x00007f00ba78df23:   xor    %ecx,%esi
          │  0x00007f00ba78df25:   add    %esi,%ebx
   0.33%  │  0x00007f00ba78df27:   rol    $0x17,%ebx
   0.31%  │  0x00007f00ba78df2a:   add    %ecx,%ebx
   0.31%  │  0x00007f00ba78df2c:   add    $0xf4292244,%eax
          │  0x00007f00ba78df31:   mov    %edx,%esi
          │  0x00007f00ba78df33:   not    %esi
          │  0x00007f00ba78df35:   add    (%r15),%eax
   0.52%  │  0x00007f00ba78df38:   or     %ebx,%esi
          │  0x00007f00ba78df3a:   xor    %ecx,%esi
   0.14%  │  0x00007f00ba78df3c:   add    %esi,%eax
   0.27%  │  0x00007f00ba78df3e:   rol    $0x6,%eax
   0.34%  │  0x00007f00ba78df41:   add    %ebx,%eax
   0.32%  │  0x00007f00ba78df43:   add    $0x432aff97,%edx
          │  0x00007f00ba78df49:   mov    %ecx,%esi
          │  0x00007f00ba78df4b:   not    %esi
          │  0x00007f00ba78df4d:   add    0x1c(%r15),%edx
   0.50%  │  0x00007f00ba78df51:   or     %eax,%esi
          │  0x00007f00ba78df53:   xor    %ebx,%esi
   0.16%  │  0x00007f00ba78df55:   add    %esi,%edx
   0.31%  │  0x00007f00ba78df57:   rol    $0xa,%edx
   0.33%  │  0x00007f00ba78df5a:   add    %eax,%edx
   0.31%  │  0x00007f00ba78df5c:   add    $0xab9423a7,%ecx
          │  0x00007f00ba78df62:   mov    %ebx,%esi
          │  0x00007f00ba78df64:   not    %esi
          │  0x00007f00ba78df66:   add    0x38(%r15),%ecx
   0.51%  │  0x00007f00ba78df6a:   or     %edx,%esi
          │  0x00007f00ba78df6c:   xor    %eax,%esi
   0.13%  │  0x00007f00ba78df6e:   add    %esi,%ecx
   0.31%  │  0x00007f00ba78df70:   rol    $0xf,%ecx
   0.35%  │  0x00007f00ba78df73:   add    %edx,%ecx
   0.32%  │  0x00007f00ba78df75:   add    $0xfc93a039,%ebx
          │  0x00007f00ba78df7b:   mov    %eax,%esi
          │  0x00007f00ba78df7d:   not    %esi
          │  0x00007f00ba78df7f:   add    0x14(%r15),%ebx
   0.53%  │  0x00007f00ba78df83:   or     %ecx,%esi
          │  0x00007f00ba78df85:   xor    %edx,%esi
   0.13%  │  0x00007f00ba78df87:   add    %esi,%ebx
   0.40%  │  0x00007f00ba78df89:   rol    $0x15,%ebx
   0.32%  │  0x00007f00ba78df8c:   add    %ecx,%ebx
   0.34%  │  0x00007f00ba78df8e:   add    $0x655b59c3,%eax
          │  0x00007f00ba78df93:   mov    %edx,%esi
          │  0x00007f00ba78df95:   not    %esi
          │  0x00007f00ba78df97:   add    0x30(%r15),%eax
   0.52%  │  0x00007f00ba78df9b:   or     %ebx,%esi
          │  0x00007f00ba78df9d:   xor    %ecx,%esi
   0.20%  │  0x00007f00ba78df9f:   add    %esi,%eax
   0.33%  │  0x00007f00ba78dfa1:   rol    $0x6,%eax
   0.30%  │  0x00007f00ba78dfa4:   add    %ebx,%eax
   0.32%  │  0x00007f00ba78dfa6:   add    $0x8f0ccc92,%edx
          │  0x00007f00ba78dfac:   mov    %ecx,%esi
          │  0x00007f00ba78dfae:   not    %esi
          │  0x00007f00ba78dfb0:   add    0xc(%r15),%edx
   0.51%  │  0x00007f00ba78dfb4:   or     %eax,%esi
          │  0x00007f00ba78dfb6:   xor    %ebx,%esi
   0.13%  │  0x00007f00ba78dfb8:   add    %esi,%edx
   0.31%  │  0x00007f00ba78dfba:   rol    $0xa,%edx
   0.32%  │  0x00007f00ba78dfbd:   add    %eax,%edx
   0.31%  │  0x00007f00ba78dfbf:   add    $0xffeff47d,%ecx
          │  0x00007f00ba78dfc5:   mov    %ebx,%esi
          │  0x00007f00ba78dfc7:   not    %esi
          │  0x00007f00ba78dfc9:   add    0x28(%r15),%ecx
   0.44%  │  0x00007f00ba78dfcd:   or     %edx,%esi
          │  0x00007f00ba78dfcf:   xor    %eax,%esi
   0.15%  │  0x00007f00ba78dfd1:   add    %esi,%ecx
   0.36%  │  0x00007f00ba78dfd3:   rol    $0xf,%ecx
   0.35%  │  0x00007f00ba78dfd6:   add    %edx,%ecx
   0.33%  │  0x00007f00ba78dfd8:   add    $0x85845dd1,%ebx
          │  0x00007f00ba78dfde:   mov    %eax,%esi
          │  0x00007f00ba78dfe0:   not    %esi
          │  0x00007f00ba78dfe2:   add    0x4(%r15),%ebx
   0.52%  │  0x00007f00ba78dfe6:   or     %ecx,%esi
          │  0x00007f00ba78dfe8:   xor    %edx,%esi
   0.13%  │  0x00007f00ba78dfea:   add    %esi,%ebx
   0.30%  │  0x00007f00ba78dfec:   rol    $0x15,%ebx
   0.33%  │  0x00007f00ba78dfef:   add    %ecx,%ebx
   0.30%  │  0x00007f00ba78dff1:   add    $0x6fa87e4f,%eax
          │  0x00007f00ba78dff6:   mov    %edx,%esi
          │  0x00007f00ba78dff8:   not    %esi
          │  0x00007f00ba78dffa:   add    0x20(%r15),%eax
   0.52%  │  0x00007f00ba78dffe:   or     %ebx,%esi
          │  0x00007f00ba78e000:   xor    %ecx,%esi
   0.08%  │  0x00007f00ba78e002:   add    %esi,%eax
   0.34%  │  0x00007f00ba78e004:   rol    $0x6,%eax
   0.33%  │  0x00007f00ba78e007:   add    %ebx,%eax
   0.33%  │  0x00007f00ba78e009:   add    $0xfe2ce6e0,%edx
          │  0x00007f00ba78e00f:   mov    %ecx,%esi
          │  0x00007f00ba78e011:   not    %esi
          │  0x00007f00ba78e013:   add    0x3c(%r15),%edx
   0.55%  │  0x00007f00ba78e017:   or     %eax,%esi
          │  0x00007f00ba78e019:   xor    %ebx,%esi
   0.10%  │  0x00007f00ba78e01b:   add    %esi,%edx
   0.34%  │  0x00007f00ba78e01d:   rol    $0xa,%edx
   0.30%  │  0x00007f00ba78e020:   add    %eax,%edx
   0.31%  │  0x00007f00ba78e022:   add    $0xa3014314,%ecx
          │  0x00007f00ba78e028:   mov    %ebx,%esi
          │  0x00007f00ba78e02a:   not    %esi
          │  0x00007f00ba78e02c:   add    0x18(%r15),%ecx
   0.46%  │  0x00007f00ba78e030:   or     %edx,%esi
          │  0x00007f00ba78e032:   xor    %eax,%esi
   0.14%  │  0x00007f00ba78e034:   add    %esi,%ecx
   0.35%  │  0x00007f00ba78e036:   rol    $0xf,%ecx
   0.34%  │  0x00007f00ba78e039:   add    %edx,%ecx
   0.37%  │  0x00007f00ba78e03b:   add    $0x4e0811a1,%ebx
          │  0x00007f00ba78e041:   mov    %eax,%esi
          │  0x00007f00ba78e043:   not    %esi
          │  0x00007f00ba78e045:   add    0x34(%r15),%ebx
   0.50%  │  0x00007f00ba78e049:   or     %ecx,%esi
          │  0x00007f00ba78e04b:   xor    %edx,%esi
   0.09%  │  0x00007f00ba78e04d:   add    %esi,%ebx
   0.36%  │  0x00007f00ba78e04f:   rol    $0x15,%ebx
   0.33%  │  0x00007f00ba78e052:   add    %ecx,%ebx
   0.30%  │  0x00007f00ba78e054:   add    $0xf7537e82,%eax
          │  0x00007f00ba78e059:   mov    %edx,%esi
          │  0x00007f00ba78e05b:   not    %esi
          │  0x00007f00ba78e05d:   add    0x10(%r15),%eax
   0.43%  │  0x00007f00ba78e061:   or     %ebx,%esi
          │  0x00007f00ba78e063:   xor    %ecx,%esi
   0.18%  │  0x00007f00ba78e065:   add    %esi,%eax
   0.35%  │  0x00007f00ba78e067:   rol    $0x6,%eax
   0.29%  │  0x00007f00ba78e06a:   add    %ebx,%eax
   0.32%  │  0x00007f00ba78e06c:   add    $0xbd3af235,%edx
          │  0x00007f00ba78e072:   mov    %ecx,%esi
          │  0x00007f00ba78e074:   not    %esi
          │  0x00007f00ba78e076:   add    0x2c(%r15),%edx
   0.50%  │  0x00007f00ba78e07a:   or     %eax,%esi
          │  0x00007f00ba78e07c:   xor    %ebx,%esi
   0.13%  │  0x00007f00ba78e07e:   add    %esi,%edx
   0.32%  │  0x00007f00ba78e080:   rol    $0xa,%edx
   0.33%  │  0x00007f00ba78e083:   add    %eax,%edx
   0.31%  │  0x00007f00ba78e085:   add    $0x2ad7d2bb,%ecx
          │  0x00007f00ba78e08b:   mov    %ebx,%esi
          │  0x00007f00ba78e08d:   not    %esi
          │  0x00007f00ba78e08f:   add    0x8(%r15),%ecx
   0.47%  │  0x00007f00ba78e093:   or     %edx,%esi
          │  0x00007f00ba78e095:   xor    %eax,%esi
   0.17%  │  0x00007f00ba78e097:   add    %esi,%ecx
   0.34%  │  0x00007f00ba78e099:   rol    $0xf,%ecx
   0.31%  │  0x00007f00ba78e09c:   add    %edx,%ecx
   0.37%  │  0x00007f00ba78e09e:   add    $0xeb86d391,%ebx
          │  0x00007f00ba78e0a4:   mov    %eax,%esi
          │  0x00007f00ba78e0a6:   not    %esi
          │  0x00007f00ba78e0a8:   add    0x24(%r15),%ebx
   0.46%  │  0x00007f00ba78e0ac:   or     %ecx,%esi
          │  0x00007f00ba78e0ae:   xor    %edx,%esi
   0.19%  │  0x00007f00ba78e0b0:   add    %esi,%ebx
   0.31%  │  0x00007f00ba78e0b2:   rol    $0x15,%ebx
   0.33%  │  0x00007f00ba78e0b5:   add    %ecx,%ebx
   0.39%  │  0x00007f00ba78e0b7:   mov    (%rsp),%rdi
          │  0x00007f00ba78e0bb:   add    (%rdi),%eax
          │  0x00007f00ba78e0bd:   mov    %eax,(%rdi)
          │  0x00007f00ba78e0bf:   add    0x4(%rdi),%ebx
   0.29%  │  0x00007f00ba78e0c2:   mov    %ebx,0x4(%rdi)
   0.62%  │  0x00007f00ba78e0c5:   add    0x8(%rdi),%ecx
          │  0x00007f00ba78e0c8:   mov    %ecx,0x8(%rdi)
          │  0x00007f00ba78e0cb:   add    0xc(%rdi),%edx
          │  0x00007f00ba78e0ce:   mov    %edx,0xc(%rdi)
   0.30%  │  0x00007f00ba78e0d1:   add    $0x40,%r15
          │  0x00007f00ba78e0d5:   addl   $0x40,0x8(%rsp)
          │  0x00007f00ba78e0da:   mov    0x8(%rsp),%esi
   0.31%  │  0x00007f00ba78e0de:   cmp    0xc(%rsp),%esi
          ╰  0x00007f00ba78e0e2:   jbe    0x00007f00ba78da6b
             0x00007f00ba78e0e8:   mov    %rsi,%rax
             0x00007f00ba78e0eb:   add    $0x10,%rsp
             0x00007f00ba78e0ef:   pop    %r15
   0.01%     0x00007f00ba78e0f1:   pop    %rsi
             0x00007f00ba78e0f2:   pop    %rdi
   0.00%     0x00007f00ba78e0f3:   pop    %rbx
             0x00007f00ba78e0f4:   leave  
             0x00007f00ba78e0f5:   ret    
           --------------------------------------------------------------------------------
           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
           StubRoutines::pshuffle_byte_flip_mask [0x00007f00ba78e140, 0x00007f00ba78e1a0] (96 bytes)
           --------------------------------------------------------------------------------
....................................................................................................
  97.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.63%        runtime stub  StubRoutines::md5_implCompressMB 
   0.18%              kernel  [unknown] 
   0.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1022 
   0.15%                      <unknown> 
   0.14%                      <unknown> 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1022 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1022 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1022 
   1.01%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.63%        runtime stub  StubRoutines::md5_implCompressMB 
   1.34%              kernel  [unknown] 
   0.45%                      <unknown> 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1022 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_setb 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1043 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  ElfSymbolTable::lookup 
   0.00%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%        runtime stub
   1.34%              kernel
   0.45%                    
   0.33%      jvmci, level 4
   0.10%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-1, length = 16384)

# Run progress: 9.09% complete, ETA 00:19:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 83.140 us/op
# Warmup Iteration   2: 66.473 us/op
# Warmup Iteration   3: 66.454 us/op
# Warmup Iteration   4: 66.472 us/op
# Warmup Iteration   5: 66.504 us/op
Iteration   1: 66.470 us/op
Iteration   2: 66.470 us/op
Iteration   3: 66.460 us/op
Iteration   4: 66.444 us/op
Iteration   5: 66.478 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  66.464 ±(99.9%) 0.051 us/op [Average]
  (min, avg, max) = (66.444, 66.464, 66.478), stdev = 0.013
  CI (99.9%): [66.414, 66.515] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 257967 total address lines.
Perf output processed (skipped 60.889 seconds):
 Column 1: cycles (50570 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1051 

 <region is too big to display, has 3680 lines, but threshold is 1000>
....................................................................................................
  97.59%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.59%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1051 
   0.30%               kernel  [unknown] 
   0.17%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   0.03%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   1.32%  <...other 370 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 5, compile id 1051 
   1.35%               kernel  [unknown] 
   0.57%       jvmci, level 4  sun.security.provider.SHA::implDigest, version 2, compile id 1055 
   0.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.03%                       <unknown> 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1083 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.19%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.30%       jvmci, level 4
   1.35%               kernel
   0.16%            libjvm.so
   0.07%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-224, length = 16384)

# Run progress: 18.18% complete, ETA 00:17:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.226 us/op
# Warmup Iteration   2: 54.245 us/op
# Warmup Iteration   3: 54.243 us/op
# Warmup Iteration   4: 54.238 us/op
# Warmup Iteration   5: 54.231 us/op
Iteration   1: 54.227 us/op
Iteration   2: 54.228 us/op
Iteration   3: 54.204 us/op
Iteration   4: 54.202 us/op
Iteration   5: 54.217 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.216 ±(99.9%) 0.048 us/op [Average]
  (min, avg, max) = (54.202, 54.216, 54.228), stdev = 0.012
  CI (99.9%): [54.168, 54.263] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 249410 total address lines.
Perf output processed (skipped 60.957 seconds):
 Column 1: cycles (50752 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1097 lines, but threshold is 1000>
....................................................................................................
  96.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.21%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.58%              kernel  [unknown] 
   0.38%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.25%        runtime stub  StubRoutines::sha256_implCompressMB 
   0.19%                      <unknown> 
   0.11%                      <unknown> 
   0.11%                      <unknown> 
   0.10%                      <unknown> 
   0.08%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.04%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%                      <unknown> 
   1.40%  <...other 362 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.85%        runtime stub  StubRoutines::sha256_implCompressMB 
   1.69%              kernel  [unknown] 
   0.94%                      <unknown> 
   0.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1034 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1055 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  fileStream::write 
   0.16%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.85%        runtime stub
   1.69%              kernel
   0.94%                    
   0.22%      jvmci, level 4
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-256, length = 16384)

# Run progress: 27.27% complete, ETA 00:15:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 59.589 us/op
# Warmup Iteration   2: 54.287 us/op
# Warmup Iteration   3: 54.262 us/op
# Warmup Iteration   4: 54.243 us/op
# Warmup Iteration   5: 54.208 us/op
Iteration   1: 54.221 us/op
Iteration   2: 54.248 us/op
Iteration   3: 54.248 us/op
Iteration   4: 54.246 us/op
Iteration   5: 54.244 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  54.241 ±(99.9%) 0.044 us/op [Average]
  (min, avg, max) = (54.221, 54.241, 54.248), stdev = 0.011
  CI (99.9%): [54.198, 54.285] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 246429 total address lines.
Perf output processed (skipped 60.638 seconds):
 Column 1: cycles (50707 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha256_implCompressMB 

 <region is too big to display, has 1097 lines, but threshold is 1000>
....................................................................................................
  96.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.31%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.40%                       <unknown> 
   0.37%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.32%               kernel  [unknown] 
   0.24%         runtime stub  StubRoutines::sha256_implCompressMB 
   0.15%                       <unknown> 
   0.13%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%                       <unknown> 
   0.07%                       <unknown> 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%                       <unknown> 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1031 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1031 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1031 
   1.41%  <...other 402 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.92%         runtime stub  StubRoutines::sha256_implCompressMB 
   1.47%               kernel  [unknown] 
   0.91%                       <unknown> 
   0.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1031 
   0.04%         libc-2.31.so  __vfprintf_internal 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1053 
   0.02%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.25%  <...other 111 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.92%         runtime stub
   1.47%               kernel
   0.91%                     
   0.26%       jvmci, level 4
   0.18%            libjvm.so
   0.11%         libc-2.31.so
   0.08%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-384, length = 16384)

# Run progress: 36.36% complete, ETA 00:13:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.487 us/op
# Warmup Iteration   2: 37.839 us/op
# Warmup Iteration   3: 37.839 us/op
# Warmup Iteration   4: 37.832 us/op
# Warmup Iteration   5: 37.833 us/op
Iteration   1: 37.846 us/op
Iteration   2: 37.830 us/op
Iteration   3: 37.837 us/op
Iteration   4: 37.833 us/op
Iteration   5: 37.843 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.838 ±(99.9%) 0.027 us/op [Average]
  (min, avg, max) = (37.830, 37.838, 37.846), stdev = 0.007
  CI (99.9%): [37.811, 37.864] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 250088 total address lines.
Perf output processed (skipped 60.681 seconds):
 Column 1: cycles (50597 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                    0x00007f4316790d61:   mov    %rsp,%rbp
                    0x00007f4316790d64:   push   %rdx
                    0x00007f4316790d65:   push   %rcx
                    0x00007f4316790d66:   mov    %rsp,%rax
                    0x00007f4316790d69:   sub    $0x70,%rsp
                    0x00007f4316790d6d:   and    $0xffffffffffffffe0,%rsp
                    0x00007f4316790d71:   mov    %rax,0x38(%rsp)
                    0x00007f4316790d76:   mov    %rbp,0x40(%rsp)
                    0x00007f4316790d7b:   mov    %rbx,0x48(%rsp)
                    0x00007f4316790d80:   mov    %r12,0x50(%rsp)
   0.00%            0x00007f4316790d85:   mov    %r13,0x58(%rsp)
                    0x00007f4316790d8a:   mov    %r14,0x60(%rsp)
                    0x00007f4316790d8f:   mov    %r15,0x68(%rsp)
                    0x00007f4316790d94:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f4316790d9a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f4316790da0:   xor    %rax,%rax
   0.00%   ↗        0x00007f4316790da3:   cmp    %rcx,%rdx
          ╭│        0x00007f4316790da6:   jae    0x00007f4316790db7
   0.04%  ││        0x00007f4316790da8:   add    $0x80,%rdx
   0.15%  ││        0x00007f4316790daf:   add    $0x80,%rax
   0.00%  │╰        0x00007f4316790db5:   jmp    0x00007f4316790da3
   0.01%  ↘         0x00007f4316790db7:   mov    %rax,%rdx
                    0x00007f4316790dba:   cmp    $0x0,%rdx
            ╭       0x00007f4316790dbe:   je     0x00007f4316791b6b
   0.01%    │       0x00007f4316790dc4:   add    %rdi,%rdx
   0.00%    │       0x00007f4316790dc7:   mov    %rdx,0x30(%rsp)
   0.01%    │       0x00007f4316790dcc:   mov    (%rsi),%rax
            │       0x00007f4316790dcf:   mov    0x8(%rsi),%rbx
            │       0x00007f4316790dd3:   mov    0x10(%rsi),%rcx
            │       0x00007f4316790dd7:   mov    0x18(%rsi),%r8
            │       0x00007f4316790ddb:   mov    0x20(%rsi),%rdx
            │       0x00007f4316790ddf:   mov    0x28(%rsi),%r9
            │       0x00007f4316790de3:   mov    0x38(%rsi),%r11
   0.00%    │       0x00007f4316790de7:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f431678ff00
            │       0x00007f4316790def:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f431678ff20
   0.00%    │       0x00007f4316790df7:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f4316790dfb:   movabs $0x7f432e6e9180,%rbp
   0.02%    │  │    0x00007f4316790e05:   vmovdqu (%rdi),%ymm4
   0.02%    │  │    0x00007f4316790e09:   vpshufb %ymm9,%ymm4,%ymm4
   0.13%    │  │    0x00007f4316790e0e:   vmovdqu 0x20(%rdi),%ymm5
   0.13%    │  │    0x00007f4316790e13:   vpshufb %ymm9,%ymm5,%ymm5
   0.34%    │  │    0x00007f4316790e18:   vmovdqu 0x40(%rdi),%ymm6
   0.03%    │  │    0x00007f4316790e1d:   vpshufb %ymm9,%ymm6,%ymm6
   0.02%    │  │    0x00007f4316790e22:   vmovdqu 0x60(%rdi),%ymm7
   0.09%    │  │    0x00007f4316790e27:   vpshufb %ymm9,%ymm7,%ymm7
   0.35%    │  │    0x00007f4316790e2c:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f4316790e31:   movq   $0x4,0x20(%rsp)
   0.01%    │  │    0x00007f4316790e3a:   nopw   0x0(%rax,%rax,1)
   0.04%    │↗ │    0x00007f4316790e40:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.30%    ││ │    0x00007f4316790e45:   vmovdqu %ymm0,(%rsp)
   0.13%    ││ │    0x00007f4316790e4a:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.28%    ││ │    0x00007f4316790e50:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.18%    ││ │    0x00007f4316790e56:   vpaddq %ymm4,%ymm0,%ymm0
   0.73%    ││ │    0x00007f4316790e5a:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.10%    ││ │    0x00007f4316790e60:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.06%    ││ │    0x00007f4316790e66:   vpsrlq $0x1,%ymm1,%ymm2
   0.07%    ││ │    0x00007f4316790e6b:   vpsllq $0x3f,%ymm1,%ymm3
   0.32%    ││ │    0x00007f4316790e70:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007f4316790e74:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007f4316790e79:   mov    %rax,%rdi
   0.03%    ││ │    0x00007f4316790e7c:   rorx   $0x29,%rdx,%r13
   0.37%    ││ │    0x00007f4316790e82:   rorx   $0x12,%rdx,%r14
   0.11%    ││ │    0x00007f4316790e88:   add    (%rsp),%r11
   0.07%    ││ │    0x00007f4316790e8c:   or     %rcx,%rdi
   0.05%    ││ │    0x00007f4316790e8f:   mov    %r9,%r15
   0.28%    ││ │    0x00007f4316790e92:   xor    %r10,%r15
   0.13%    ││ │    0x00007f4316790e95:   rorx   $0x22,%rax,%r12
   0.05%    ││ │    0x00007f4316790e9b:   xor    %r14,%r13
   0.04%    ││ │    0x00007f4316790e9e:   rorx   $0xe,%rdx,%r14
   0.32%    ││ │    0x00007f4316790ea4:   and    %rdx,%r15
   0.10%    ││ │    0x00007f4316790ea7:   add    %r11,%r8
   0.06%    ││ │    0x00007f4316790eaa:   and    %rbx,%rdi
   0.06%    ││ │    0x00007f4316790ead:   xor    %r14,%r13
   0.31%    ││ │    0x00007f4316790eb0:   rorx   $0x27,%rax,%r14
   0.12%    ││ │    0x00007f4316790eb6:   xor    %r12,%r14
   0.05%    ││ │    0x00007f4316790eb9:   rorx   $0x1c,%rax,%r12
   0.03%    ││ │    0x00007f4316790ebf:   xor    %r10,%r15
   0.28%    ││ │    0x00007f4316790ec2:   xor    %r12,%r14
   0.10%    ││ │    0x00007f4316790ec5:   mov    %rax,%r12
   0.04%    ││ │    0x00007f4316790ec8:   and    %rcx,%r12
   0.06%    ││ │    0x00007f4316790ecb:   add    %r13,%r15
   0.27%    ││ │    0x00007f4316790ece:   or     %r12,%rdi
   0.13%    ││ │    0x00007f4316790ed1:   add    %r14,%r11
   0.05%    ││ │    0x00007f4316790ed4:   add    %r15,%r8
   0.04%    ││ │    0x00007f4316790ed7:   add    %r15,%r11
   0.29%    ││ │    0x00007f4316790eda:   add    %rdi,%r11
   0.11%    ││ │    0x00007f4316790edd:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%    ││ │    0x00007f4316790ee2:   vpsllq $0x38,%ymm1,%ymm1
   0.03%    ││ │    0x00007f4316790ee7:   vpor   %ymm2,%ymm1,%ymm1
   0.27%    ││ │    0x00007f4316790eeb:   vpxor  %ymm8,%ymm3,%ymm3
   0.11%    ││ │    0x00007f4316790ef0:   vpxor  %ymm1,%ymm3,%ymm1
   0.05%    ││ │    0x00007f4316790ef4:   vpaddq %ymm1,%ymm0,%ymm0
   0.04%    ││ │    0x00007f4316790ef8:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.27%    ││ │    0x00007f4316790efe:   vpand  %ymm10,%ymm0,%ymm0
   0.13%    ││ │    0x00007f4316790f03:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%    ││ │    0x00007f4316790f09:   vpsrlq $0x6,%ymm2,%ymm8
   0.03%    ││ │    0x00007f4316790f0e:   mov    %r11,%rdi
   0.28%    ││ │    0x00007f4316790f11:   rorx   $0x29,%r8,%r13
   0.12%    ││ │    0x00007f4316790f17:   rorx   $0x12,%r8,%r14
   0.06%    ││ │    0x00007f4316790f1d:   add    0x8(%rsp),%r10
   0.06%    ││ │    0x00007f4316790f22:   or     %rbx,%rdi
   0.30%    ││ │    0x00007f4316790f25:   mov    %rdx,%r15
   0.12%    ││ │    0x00007f4316790f28:   xor    %r9,%r15
   0.05%    ││ │    0x00007f4316790f2b:   rorx   $0x22,%r11,%r12
   0.04%    ││ │    0x00007f4316790f31:   xor    %r14,%r13
   0.33%    ││ │    0x00007f4316790f34:   rorx   $0xe,%r8,%r14
   0.10%    ││ │    0x00007f4316790f3a:   and    %r8,%r15
   0.05%    ││ │    0x00007f4316790f3d:   add    %r10,%rcx
   0.05%    ││ │    0x00007f4316790f40:   and    %rax,%rdi
   0.31%    ││ │    0x00007f4316790f43:   xor    %r14,%r13
   0.11%    ││ │    0x00007f4316790f46:   rorx   $0x27,%r11,%r14
   0.04%    ││ │    0x00007f4316790f4c:   xor    %r12,%r14
   0.05%    ││ │    0x00007f4316790f4f:   rorx   $0x1c,%r11,%r12
   0.30%    ││ │    0x00007f4316790f55:   xor    %r9,%r15
   0.12%    ││ │    0x00007f4316790f58:   xor    %r12,%r14
   0.07%    ││ │    0x00007f4316790f5b:   mov    %r11,%r12
   0.04%    ││ │    0x00007f4316790f5e:   and    %rbx,%r12
   0.30%    ││ │    0x00007f4316790f61:   add    %r13,%r15
   0.09%    ││ │    0x00007f4316790f64:   or     %r12,%rdi
   0.04%    ││ │    0x00007f4316790f67:   add    %r14,%r10
   0.04%    ││ │    0x00007f4316790f6a:   add    %r15,%rcx
   0.28%    ││ │    0x00007f4316790f6d:   add    %r15,%r10
   0.08%    ││ │    0x00007f4316790f70:   add    %rdi,%r10
   0.06%    ││ │    0x00007f4316790f73:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007f4316790f78:   vpsllq $0x2d,%ymm2,%ymm1
   0.33%    ││ │    0x00007f4316790f7d:   vpor   %ymm1,%ymm3,%ymm3
   0.15%    ││ │    0x00007f4316790f81:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f4316790f85:   vpsrlq $0x3d,%ymm2,%ymm3
   0.04%    ││ │    0x00007f4316790f8a:   vpsllq $0x3,%ymm2,%ymm1
   0.29%    ││ │    0x00007f4316790f8f:   vpor   %ymm1,%ymm3,%ymm3
   0.14%    ││ │    0x00007f4316790f93:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007f4316790f97:   vpaddq %ymm8,%ymm4,%ymm4
   0.03%    ││ │    0x00007f4316790f9c:   vpsrlq $0x6,%ymm4,%ymm8
   0.33%    ││ │    0x00007f4316790fa1:   mov    %r10,%rdi
   0.11%    ││ │    0x00007f4316790fa4:   rorx   $0x29,%rcx,%r13
   0.06%    ││ │    0x00007f4316790faa:   rorx   $0x12,%rcx,%r14
   0.05%    ││ │    0x00007f4316790fb0:   add    0x10(%rsp),%r9
   0.35%    ││ │    0x00007f4316790fb5:   or     %rax,%rdi
   0.15%    ││ │    0x00007f4316790fb8:   mov    %r8,%r15
   0.05%    ││ │    0x00007f4316790fbb:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f4316790fbe:   rorx   $0x22,%r10,%r12
   0.24%    ││ │    0x00007f4316790fc4:   xor    %r14,%r13
   0.11%    ││ │    0x00007f4316790fc7:   rorx   $0xe,%rcx,%r14
   0.08%    ││ │    0x00007f4316790fcd:   and    %rcx,%r15
   0.04%    ││ │    0x00007f4316790fd0:   add    %r9,%rbx
   0.29%    ││ │    0x00007f4316790fd3:   and    %r11,%rdi
   0.13%    ││ │    0x00007f4316790fd6:   xor    %r14,%r13
   0.08%    ││ │    0x00007f4316790fd9:   rorx   $0x27,%r10,%r14
   0.04%    ││ │    0x00007f4316790fdf:   xor    %r12,%r14
   0.30%    ││ │    0x00007f4316790fe2:   rorx   $0x1c,%r10,%r12
   0.09%    ││ │    0x00007f4316790fe8:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f4316790feb:   xor    %r12,%r14
   0.05%    ││ │    0x00007f4316790fee:   mov    %r10,%r12
   0.29%    ││ │    0x00007f4316790ff1:   and    %rax,%r12
   0.13%    ││ │    0x00007f4316790ff4:   add    %r13,%r15
   0.04%    ││ │    0x00007f4316790ff7:   or     %r12,%rdi
   0.03%    ││ │    0x00007f4316790ffa:   add    %r14,%r9
   0.27%    ││ │    0x00007f4316790ffd:   add    %r15,%rbx
   0.14%    ││ │    0x00007f4316791000:   add    %r15,%r9
   0.05%    ││ │    0x00007f4316791003:   add    %rdi,%r9
   0.06%    ││ │    0x00007f4316791006:   vpsrlq $0x13,%ymm4,%ymm3
   0.33%    ││ │    0x00007f431679100b:   vpsllq $0x2d,%ymm4,%ymm1
   0.15%    ││ │    0x00007f4316791010:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f4316791014:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f4316791018:   vpsrlq $0x3d,%ymm4,%ymm3
   0.30%    ││ │    0x00007f431679101d:   vpsllq $0x3,%ymm4,%ymm1
   0.15%    ││ │    0x00007f4316791022:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f4316791026:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f431679102a:   vpaddq %ymm8,%ymm0,%ymm2
   0.29%    ││ │    0x00007f431679102f:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.20%    ││ │    0x00007f4316791035:   mov    %r9,%rdi
   0.07%    ││ │    0x00007f4316791038:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007f431679103e:   rorx   $0x12,%rbx,%r14
   0.23%    ││ │    0x00007f4316791044:   add    0x18(%rsp),%rdx
   0.13%    ││ │    0x00007f4316791049:   or     %r11,%rdi
   0.07%    ││ │    0x00007f431679104c:   mov    %rcx,%r15
   0.03%    ││ │    0x00007f431679104f:   xor    %r8,%r15
   0.30%    ││ │    0x00007f4316791052:   rorx   $0x22,%r9,%r12
   0.13%    ││ │    0x00007f4316791058:   xor    %r14,%r13
   0.05%    ││ │    0x00007f431679105b:   rorx   $0xe,%rbx,%r14
   0.04%    ││ │    0x00007f4316791061:   and    %rbx,%r15
   0.26%    ││ │    0x00007f4316791064:   add    %rdx,%rax
   0.14%    ││ │    0x00007f4316791067:   and    %r10,%rdi
   0.04%    ││ │    0x00007f431679106a:   xor    %r14,%r13
   0.03%    ││ │    0x00007f431679106d:   rorx   $0x27,%r9,%r14
   0.26%    ││ │    0x00007f4316791073:   xor    %r12,%r14
   0.13%    ││ │    0x00007f4316791076:   rorx   $0x1c,%r9,%r12
   0.05%    ││ │    0x00007f431679107c:   xor    %r8,%r15
   0.02%    ││ │    0x00007f431679107f:   xor    %r12,%r14
   0.26%    ││ │    0x00007f4316791082:   mov    %r9,%r12
   0.13%    ││ │    0x00007f4316791085:   and    %r11,%r12
   0.05%    ││ │    0x00007f4316791088:   add    %r13,%r15
   0.02%    ││ │    0x00007f431679108b:   or     %r12,%rdi
   0.27%    ││ │    0x00007f431679108e:   add    %r14,%rdx
   0.14%    ││ │    0x00007f4316791091:   add    %r15,%rax
   0.06%    ││ │    0x00007f4316791094:   add    %r15,%rdx
   0.04%    ││ │    0x00007f4316791097:   add    %rdi,%rdx
   0.28%    ││ │    0x00007f431679109a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.16%    ││ │    0x00007f431679109f:   vmovdqu %ymm0,(%rsp)
   0.05%    ││ │    0x00007f43167910a4:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.02%    ││ │    0x00007f43167910aa:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.26%    ││ │    0x00007f43167910b0:   vpaddq %ymm5,%ymm0,%ymm0
   0.26%    ││ │    0x00007f43167910b4:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.04%    ││ │    0x00007f43167910ba:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.03%    ││ │    0x00007f43167910c0:   vpsrlq $0x1,%ymm1,%ymm2
   0.28%    ││ │    0x00007f43167910c5:   vpsllq $0x3f,%ymm1,%ymm3
   0.16%    ││ │    0x00007f43167910ca:   vpor   %ymm2,%ymm3,%ymm3
   0.07%    ││ │    0x00007f43167910ce:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%    ││ │    0x00007f43167910d3:   mov    %rdx,%rdi
   0.26%    ││ │    0x00007f43167910d6:   rorx   $0x29,%rax,%r13
   0.16%    ││ │    0x00007f43167910dc:   rorx   $0x12,%rax,%r14
   0.07%    ││ │    0x00007f43167910e2:   add    (%rsp),%r8
   0.02%    ││ │    0x00007f43167910e6:   or     %r10,%rdi
   0.24%    ││ │    0x00007f43167910e9:   mov    %rbx,%r15
   0.15%    ││ │    0x00007f43167910ec:   xor    %rcx,%r15
   0.06%    ││ │    0x00007f43167910ef:   rorx   $0x22,%rdx,%r12
   0.03%    ││ │    0x00007f43167910f5:   xor    %r14,%r13
   0.28%    ││ │    0x00007f43167910f8:   rorx   $0xe,%rax,%r14
   0.14%    ││ │    0x00007f43167910fe:   and    %rax,%r15
   0.06%    ││ │    0x00007f4316791101:   add    %r8,%r11
   0.02%    ││ │    0x00007f4316791104:   and    %r9,%rdi
   0.25%    ││ │    0x00007f4316791107:   xor    %r14,%r13
   0.16%    ││ │    0x00007f431679110a:   rorx   $0x27,%rdx,%r14
   0.05%    ││ │    0x00007f4316791110:   xor    %r12,%r14
   0.03%    ││ │    0x00007f4316791113:   rorx   $0x1c,%rdx,%r12
   0.23%    ││ │    0x00007f4316791119:   xor    %rcx,%r15
   0.17%    ││ │    0x00007f431679111c:   xor    %r12,%r14
   0.06%    ││ │    0x00007f431679111f:   mov    %rdx,%r12
   0.02%    ││ │    0x00007f4316791122:   and    %r10,%r12
   0.25%    ││ │    0x00007f4316791125:   add    %r13,%r15
   0.16%    ││ │    0x00007f4316791128:   or     %r12,%rdi
   0.07%    ││ │    0x00007f431679112b:   add    %r14,%r8
   0.03%    ││ │    0x00007f431679112e:   add    %r15,%r11
   0.27%    ││ │    0x00007f4316791131:   add    %r15,%r8
   0.15%    ││ │    0x00007f4316791134:   add    %rdi,%r8
   0.07%    ││ │    0x00007f4316791137:   vpsrlq $0x8,%ymm1,%ymm2
   0.02%    ││ │    0x00007f431679113c:   vpsllq $0x38,%ymm1,%ymm1
   0.27%    ││ │    0x00007f4316791141:   vpor   %ymm2,%ymm1,%ymm1
   0.19%    ││ │    0x00007f4316791145:   vpxor  %ymm8,%ymm3,%ymm3
   0.08%    ││ │    0x00007f431679114a:   vpxor  %ymm1,%ymm3,%ymm1
   0.04%    ││ │    0x00007f431679114e:   vpaddq %ymm1,%ymm0,%ymm0
   0.27%    ││ │    0x00007f4316791152:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.13%    ││ │    0x00007f4316791158:   vpand  %ymm10,%ymm0,%ymm0
   0.08%    ││ │    0x00007f431679115d:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.04%    ││ │    0x00007f4316791163:   vpsrlq $0x6,%ymm2,%ymm8
   0.24%    ││ │    0x00007f4316791168:   mov    %r8,%rdi
   0.17%    ││ │    0x00007f431679116b:   rorx   $0x29,%r11,%r13
   0.06%    ││ │    0x00007f4316791171:   rorx   $0x12,%r11,%r14
   0.04%    ││ │    0x00007f4316791177:   add    0x8(%rsp),%rcx
   0.28%    ││ │    0x00007f431679117c:   or     %r9,%rdi
   0.18%    ││ │    0x00007f431679117f:   mov    %rax,%r15
   0.07%    ││ │    0x00007f4316791182:   xor    %rbx,%r15
   0.04%    ││ │    0x00007f4316791185:   rorx   $0x22,%r8,%r12
   0.26%    ││ │    0x00007f431679118b:   xor    %r14,%r13
   0.18%    ││ │    0x00007f431679118e:   rorx   $0xe,%r11,%r14
   0.06%    ││ │    0x00007f4316791194:   and    %r11,%r15
   0.04%    ││ │    0x00007f4316791197:   add    %rcx,%r10
   0.26%    ││ │    0x00007f431679119a:   and    %rdx,%rdi
   0.16%    ││ │    0x00007f431679119d:   xor    %r14,%r13
   0.06%    ││ │    0x00007f43167911a0:   rorx   $0x27,%r8,%r14
   0.04%    ││ │    0x00007f43167911a6:   xor    %r12,%r14
   0.27%    ││ │    0x00007f43167911a9:   rorx   $0x1c,%r8,%r12
   0.14%    ││ │    0x00007f43167911af:   xor    %rbx,%r15
   0.08%    ││ │    0x00007f43167911b2:   xor    %r12,%r14
   0.03%    ││ │    0x00007f43167911b5:   mov    %r8,%r12
   0.25%    ││ │    0x00007f43167911b8:   and    %r9,%r12
   0.15%    ││ │    0x00007f43167911bb:   add    %r13,%r15
   0.07%    ││ │    0x00007f43167911be:   or     %r12,%rdi
   0.03%    ││ │    0x00007f43167911c1:   add    %r14,%rcx
   0.22%    ││ │    0x00007f43167911c4:   add    %r15,%r10
   0.17%    ││ │    0x00007f43167911c7:   add    %r15,%rcx
   0.05%    ││ │    0x00007f43167911ca:   add    %rdi,%rcx
   0.04%    ││ │    0x00007f43167911cd:   vpsrlq $0x13,%ymm2,%ymm3
   0.25%    ││ │    0x00007f43167911d2:   vpsllq $0x2d,%ymm2,%ymm1
   0.12%    ││ │    0x00007f43167911d7:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f43167911db:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007f43167911df:   vpsrlq $0x3d,%ymm2,%ymm3
   0.30%    ││ │    0x00007f43167911e4:   vpsllq $0x3,%ymm2,%ymm1
   0.17%    ││ │    0x00007f43167911e9:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f43167911ed:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007f43167911f1:   vpaddq %ymm8,%ymm5,%ymm5
   0.27%    ││ │    0x00007f43167911f6:   vpsrlq $0x6,%ymm5,%ymm8
   0.15%    ││ │    0x00007f43167911fb:   mov    %rcx,%rdi
   0.06%    ││ │    0x00007f43167911fe:   rorx   $0x29,%r10,%r13
   0.03%    ││ │    0x00007f4316791204:   rorx   $0x12,%r10,%r14
   0.27%    ││ │    0x00007f431679120a:   add    0x10(%rsp),%rbx
   0.19%    ││ │    0x00007f431679120f:   or     %rdx,%rdi
   0.07%    ││ │    0x00007f4316791212:   mov    %r11,%r15
   0.02%    ││ │    0x00007f4316791215:   xor    %rax,%r15
   0.23%    ││ │    0x00007f4316791218:   rorx   $0x22,%rcx,%r12
   0.16%    ││ │    0x00007f431679121e:   xor    %r14,%r13
   0.07%    ││ │    0x00007f4316791221:   rorx   $0xe,%r10,%r14
   0.04%    ││ │    0x00007f4316791227:   and    %r10,%r15
   0.25%    ││ │    0x00007f431679122a:   add    %rbx,%r9
   0.20%    ││ │    0x00007f431679122d:   and    %r8,%rdi
   0.07%    ││ │    0x00007f4316791230:   xor    %r14,%r13
   0.03%    ││ │    0x00007f4316791233:   rorx   $0x27,%rcx,%r14
   0.25%    ││ │    0x00007f4316791239:   xor    %r12,%r14
   0.17%    ││ │    0x00007f431679123c:   rorx   $0x1c,%rcx,%r12
   0.07%    ││ │    0x00007f4316791242:   xor    %rax,%r15
   0.02%    ││ │    0x00007f4316791245:   xor    %r12,%r14
   0.27%    ││ │    0x00007f4316791248:   mov    %rcx,%r12
   0.17%    ││ │    0x00007f431679124b:   and    %rdx,%r12
   0.09%    ││ │    0x00007f431679124e:   add    %r13,%r15
   0.02%    ││ │    0x00007f4316791251:   or     %r12,%rdi
   0.26%    ││ │    0x00007f4316791254:   add    %r14,%rbx
   0.16%    ││ │    0x00007f4316791257:   add    %r15,%r9
   0.04%    ││ │    0x00007f431679125a:   add    %r15,%rbx
   0.04%    ││ │    0x00007f431679125d:   add    %rdi,%rbx
   0.26%    ││ │    0x00007f4316791260:   vpsrlq $0x13,%ymm5,%ymm3
   0.16%    ││ │    0x00007f4316791265:   vpsllq $0x2d,%ymm5,%ymm1
   0.06%    ││ │    0x00007f431679126a:   vpor   %ymm1,%ymm3,%ymm3
   0.02%    ││ │    0x00007f431679126e:   vpxor  %ymm3,%ymm8,%ymm8
   0.27%    ││ │    0x00007f4316791272:   vpsrlq $0x3d,%ymm5,%ymm3
   0.15%    ││ │    0x00007f4316791277:   vpsllq $0x3,%ymm5,%ymm1
   0.07%    ││ │    0x00007f431679127c:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f4316791280:   vpxor  %ymm3,%ymm8,%ymm8
   0.26%    ││ │    0x00007f4316791284:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f4316791289:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.10%    ││ │    0x00007f431679128f:   mov    %rbx,%rdi
   0.04%    ││ │    0x00007f4316791292:   rorx   $0x29,%r9,%r13
   0.21%    ││ │    0x00007f4316791298:   rorx   $0x12,%r9,%r14
   0.14%    ││ │    0x00007f431679129e:   add    0x18(%rsp),%rax
   0.09%    ││ │    0x00007f43167912a3:   or     %r8,%rdi
   0.02%    ││ │    0x00007f43167912a6:   mov    %r10,%r15
   0.22%    ││ │    0x00007f43167912a9:   xor    %r11,%r15
   0.15%    ││ │    0x00007f43167912ac:   rorx   $0x22,%rbx,%r12
   0.08%    ││ │    0x00007f43167912b2:   xor    %r14,%r13
   0.03%    ││ │    0x00007f43167912b5:   rorx   $0xe,%r9,%r14
   0.22%    ││ │    0x00007f43167912bb:   and    %r9,%r15
   0.17%    ││ │    0x00007f43167912be:   add    %rax,%rdx
   0.10%    ││ │    0x00007f43167912c1:   and    %rcx,%rdi
   0.03%    ││ │    0x00007f43167912c4:   xor    %r14,%r13
   0.23%    ││ │    0x00007f43167912c7:   rorx   $0x27,%rbx,%r14
   0.15%    ││ │    0x00007f43167912cd:   xor    %r12,%r14
   0.10%    ││ │    0x00007f43167912d0:   rorx   $0x1c,%rbx,%r12
   0.03%    ││ │    0x00007f43167912d6:   xor    %r11,%r15
   0.22%    ││ │    0x00007f43167912d9:   xor    %r12,%r14
   0.15%    ││ │    0x00007f43167912dc:   mov    %rbx,%r12
   0.09%    ││ │    0x00007f43167912df:   and    %r8,%r12
   0.03%    ││ │    0x00007f43167912e2:   add    %r13,%r15
   0.22%    ││ │    0x00007f43167912e5:   or     %r12,%rdi
   0.17%    ││ │    0x00007f43167912e8:   add    %r14,%rax
   0.13%    ││ │    0x00007f43167912eb:   add    %r15,%rdx
   0.03%    ││ │    0x00007f43167912ee:   add    %r15,%rax
   0.25%    ││ │    0x00007f43167912f1:   add    %rdi,%rax
   0.18%    ││ │    0x00007f43167912f4:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.09%    ││ │    0x00007f43167912f9:   vmovdqu %ymm0,(%rsp)
   0.03%    ││ │    0x00007f43167912fe:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.21%    ││ │    0x00007f4316791304:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.13%    ││ │    0x00007f431679130a:   vpaddq %ymm6,%ymm0,%ymm0
   0.17%    ││ │    0x00007f431679130e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%    ││ │    0x00007f4316791314:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.23%    ││ │    0x00007f431679131a:   vpsrlq $0x1,%ymm1,%ymm2
   0.15%    ││ │    0x00007f431679131f:   vpsllq $0x3f,%ymm1,%ymm3
   0.12%    ││ │    0x00007f4316791324:   vpor   %ymm2,%ymm3,%ymm3
   0.04%    ││ │    0x00007f4316791328:   vpsrlq $0x7,%ymm1,%ymm8
   0.22%    ││ │    0x00007f431679132d:   mov    %rax,%rdi
   0.13%    ││ │    0x00007f4316791330:   rorx   $0x29,%rdx,%r13
   0.11%    ││ │    0x00007f4316791336:   rorx   $0x12,%rdx,%r14
   0.02%    ││ │    0x00007f431679133c:   add    (%rsp),%r11
   0.20%    ││ │    0x00007f4316791340:   or     %rcx,%rdi
   0.12%    ││ │    0x00007f4316791343:   mov    %r9,%r15
   0.13%    ││ │    0x00007f4316791346:   xor    %r10,%r15
   0.04%    ││ │    0x00007f4316791349:   rorx   $0x22,%rax,%r12
   0.25%    ││ │    0x00007f431679134f:   xor    %r14,%r13
   0.13%    ││ │    0x00007f4316791352:   rorx   $0xe,%rdx,%r14
   0.12%    ││ │    0x00007f4316791358:   and    %rdx,%r15
   0.03%    ││ │    0x00007f431679135b:   add    %r11,%r8
   0.23%    ││ │    0x00007f431679135e:   and    %rbx,%rdi
   0.11%    ││ │    0x00007f4316791361:   xor    %r14,%r13
   0.15%    ││ │    0x00007f4316791364:   rorx   $0x27,%rax,%r14
   0.04%    ││ │    0x00007f431679136a:   xor    %r12,%r14
   0.22%    ││ │    0x00007f431679136d:   rorx   $0x1c,%rax,%r12
   0.16%    ││ │    0x00007f4316791373:   xor    %r10,%r15
   0.11%    ││ │    0x00007f4316791376:   xor    %r12,%r14
   0.03%    ││ │    0x00007f4316791379:   mov    %rax,%r12
   0.24%    ││ │    0x00007f431679137c:   and    %rcx,%r12
   0.12%    ││ │    0x00007f431679137f:   add    %r13,%r15
   0.12%    ││ │    0x00007f4316791382:   or     %r12,%rdi
   0.03%    ││ │    0x00007f4316791385:   add    %r14,%r11
   0.22%    ││ │    0x00007f4316791388:   add    %r15,%r8
   0.15%    ││ │    0x00007f431679138b:   add    %r15,%r11
   0.13%    ││ │    0x00007f431679138e:   add    %rdi,%r11
   0.03%    ││ │    0x00007f4316791391:   vpsrlq $0x8,%ymm1,%ymm2
   0.26%    ││ │    0x00007f4316791396:   vpsllq $0x38,%ymm1,%ymm1
   0.12%    ││ │    0x00007f431679139b:   vpor   %ymm2,%ymm1,%ymm1
   0.13%    ││ │    0x00007f431679139f:   vpxor  %ymm8,%ymm3,%ymm3
   0.03%    ││ │    0x00007f43167913a4:   vpxor  %ymm1,%ymm3,%ymm1
   0.24%    ││ │    0x00007f43167913a8:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%    ││ │    0x00007f43167913ac:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.11%    ││ │    0x00007f43167913b2:   vpand  %ymm10,%ymm0,%ymm0
   0.04%    ││ │    0x00007f43167913b7:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.24%    ││ │    0x00007f43167913bd:   vpsrlq $0x6,%ymm2,%ymm8
   0.10%    ││ │    0x00007f43167913c2:   mov    %r11,%rdi
   0.13%    ││ │    0x00007f43167913c5:   rorx   $0x29,%r8,%r13
   0.04%    ││ │    0x00007f43167913cb:   rorx   $0x12,%r8,%r14
   0.25%    ││ │    0x00007f43167913d1:   add    0x8(%rsp),%r10
   0.11%    ││ │    0x00007f43167913d6:   or     %rbx,%rdi
   0.15%    ││ │    0x00007f43167913d9:   mov    %rdx,%r15
   0.04%    ││ │    0x00007f43167913dc:   xor    %r9,%r15
   0.22%    ││ │    0x00007f43167913df:   rorx   $0x22,%r11,%r12
   0.14%    ││ │    0x00007f43167913e5:   xor    %r14,%r13
   0.14%    ││ │    0x00007f43167913e8:   rorx   $0xe,%r8,%r14
   0.06%    ││ │    0x00007f43167913ee:   and    %r8,%r15
   0.22%    ││ │    0x00007f43167913f1:   add    %r10,%rcx
   0.13%    ││ │    0x00007f43167913f4:   and    %rax,%rdi
   0.09%    ││ │    0x00007f43167913f7:   xor    %r14,%r13
   0.04%    ││ │    0x00007f43167913fa:   rorx   $0x27,%r11,%r14
   0.20%    ││ │    0x00007f4316791400:   xor    %r12,%r14
   0.14%    ││ │    0x00007f4316791403:   rorx   $0x1c,%r11,%r12
   0.15%    ││ │    0x00007f4316791409:   xor    %r9,%r15
   0.04%    ││ │    0x00007f431679140c:   xor    %r12,%r14
   0.20%    ││ │    0x00007f431679140f:   mov    %r11,%r12
   0.13%    ││ │    0x00007f4316791412:   and    %rbx,%r12
   0.13%    ││ │    0x00007f4316791415:   add    %r13,%r15
   0.04%    ││ │    0x00007f4316791418:   or     %r12,%rdi
   0.21%    ││ │    0x00007f431679141b:   add    %r14,%r10
   0.13%    ││ │    0x00007f431679141e:   add    %r15,%rcx
   0.13%    ││ │    0x00007f4316791421:   add    %r15,%r10
   0.03%    ││ │    0x00007f4316791424:   add    %rdi,%r10
   0.22%    ││ │    0x00007f4316791427:   vpsrlq $0x13,%ymm2,%ymm3
   0.12%    ││ │    0x00007f431679142c:   vpsllq $0x2d,%ymm2,%ymm1
   0.12%    ││ │    0x00007f4316791431:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f4316791435:   vpxor  %ymm3,%ymm8,%ymm8
   0.22%    ││ │    0x00007f4316791439:   vpsrlq $0x3d,%ymm2,%ymm3
   0.15%    ││ │    0x00007f431679143e:   vpsllq $0x3,%ymm2,%ymm1
   0.11%    ││ │    0x00007f4316791443:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f4316791447:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%    ││ │    0x00007f431679144b:   vpaddq %ymm8,%ymm6,%ymm6
   0.13%    ││ │    0x00007f4316791450:   vpsrlq $0x6,%ymm6,%ymm8
   0.13%    ││ │    0x00007f4316791455:   mov    %r10,%rdi
   0.04%    ││ │    0x00007f4316791458:   rorx   $0x29,%rcx,%r13
   0.21%    ││ │    0x00007f431679145e:   rorx   $0x12,%rcx,%r14
   0.10%    ││ │    0x00007f4316791464:   add    0x10(%rsp),%r9
   0.16%    ││ │    0x00007f4316791469:   or     %rax,%rdi
   0.03%    ││ │    0x00007f431679146c:   mov    %r8,%r15
   0.22%    ││ │    0x00007f431679146f:   xor    %rdx,%r15
   0.11%    ││ │    0x00007f4316791472:   rorx   $0x22,%r10,%r12
   0.13%    ││ │    0x00007f4316791478:   xor    %r14,%r13
   0.03%    ││ │    0x00007f431679147b:   rorx   $0xe,%rcx,%r14
   0.23%    ││ │    0x00007f4316791481:   and    %rcx,%r15
   0.14%    ││ │    0x00007f4316791484:   add    %r9,%rbx
   0.15%    ││ │    0x00007f4316791487:   and    %r11,%rdi
   0.02%    ││ │    0x00007f431679148a:   xor    %r14,%r13
   0.20%    ││ │    0x00007f431679148d:   rorx   $0x27,%r10,%r14
   0.12%    ││ │    0x00007f4316791493:   xor    %r12,%r14
   0.15%    ││ │    0x00007f4316791496:   rorx   $0x1c,%r10,%r12
   0.04%    ││ │    0x00007f431679149c:   xor    %rdx,%r15
   0.21%    ││ │    0x00007f431679149f:   xor    %r12,%r14
   0.10%    ││ │    0x00007f43167914a2:   mov    %r10,%r12
   0.15%    ││ │    0x00007f43167914a5:   and    %rax,%r12
   0.05%    ││ │    0x00007f43167914a8:   add    %r13,%r15
   0.19%    ││ │    0x00007f43167914ab:   or     %r12,%rdi
   0.11%    ││ │    0x00007f43167914ae:   add    %r14,%r9
   0.11%    ││ │    0x00007f43167914b1:   add    %r15,%rbx
   0.04%    ││ │    0x00007f43167914b4:   add    %r15,%r9
   0.22%    ││ │    0x00007f43167914b7:   add    %rdi,%r9
   0.12%    ││ │    0x00007f43167914ba:   vpsrlq $0x13,%ymm6,%ymm3
   0.16%    ││ │    0x00007f43167914bf:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007f43167914c4:   vpor   %ymm1,%ymm3,%ymm3
   0.18%    ││ │    0x00007f43167914c8:   vpxor  %ymm3,%ymm8,%ymm8
   0.15%    ││ │    0x00007f43167914cc:   vpsrlq $0x3d,%ymm6,%ymm3
   0.13%    ││ │    0x00007f43167914d1:   vpsllq $0x3,%ymm6,%ymm1
   0.05%    ││ │    0x00007f43167914d6:   vpor   %ymm1,%ymm3,%ymm3
   0.27%    ││ │    0x00007f43167914da:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%    ││ │    0x00007f43167914de:   vpaddq %ymm8,%ymm0,%ymm2
   0.12%    ││ │    0x00007f43167914e3:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.15%    ││ │    0x00007f43167914e9:   mov    %r9,%rdi
   0.19%    ││ │    0x00007f43167914ec:   rorx   $0x29,%rbx,%r13
   0.10%    ││ │    0x00007f43167914f2:   rorx   $0x12,%rbx,%r14
   0.10%    ││ │    0x00007f43167914f8:   add    0x18(%rsp),%rdx
   0.08%    ││ │    0x00007f43167914fd:   or     %r11,%rdi
   0.18%    ││ │    0x00007f4316791500:   mov    %rcx,%r15
   0.08%    ││ │    0x00007f4316791503:   xor    %r8,%r15
   0.11%    ││ │    0x00007f4316791506:   rorx   $0x22,%r9,%r12
   0.09%    ││ │    0x00007f431679150c:   xor    %r14,%r13
   0.26%    ││ │    0x00007f431679150f:   rorx   $0xe,%rbx,%r14
   0.08%    ││ │    0x00007f4316791515:   and    %rbx,%r15
   0.09%    ││ │    0x00007f4316791518:   add    %rdx,%rax
   0.08%    ││ │    0x00007f431679151b:   and    %r10,%rdi
   0.22%    ││ │    0x00007f431679151e:   xor    %r14,%r13
   0.11%    ││ │    0x00007f4316791521:   rorx   $0x27,%r9,%r14
   0.12%    ││ │    0x00007f4316791527:   xor    %r12,%r14
   0.09%    ││ │    0x00007f431679152a:   rorx   $0x1c,%r9,%r12
   0.23%    ││ │    0x00007f4316791530:   xor    %r8,%r15
   0.09%    ││ │    0x00007f4316791533:   xor    %r12,%r14
   0.10%    ││ │    0x00007f4316791536:   mov    %r9,%r12
   0.11%    ││ │    0x00007f4316791539:   and    %r11,%r12
   0.22%    ││ │    0x00007f431679153c:   add    %r13,%r15
   0.08%    ││ │    0x00007f431679153f:   or     %r12,%rdi
   0.11%    ││ │    0x00007f4316791542:   add    %r14,%rdx
   0.09%    ││ │    0x00007f4316791545:   add    %r15,%rax
   0.21%    ││ │    0x00007f4316791548:   add    %r15,%rdx
   0.10%    ││ │    0x00007f431679154b:   add    %rdi,%rdx
   0.11%    ││ │    0x00007f431679154e:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.10%    ││ │    0x00007f4316791553:   vmovdqu %ymm0,(%rsp)
   0.20%    ││ │    0x00007f4316791558:   add    $0x80,%rbp
   0.11%    ││ │    0x00007f431679155f:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.12%    ││ │    0x00007f4316791565:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.11%    ││ │    0x00007f431679156b:   vpaddq %ymm7,%ymm0,%ymm0
   0.36%    ││ │    0x00007f431679156f:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.09%    ││ │    0x00007f4316791575:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.09%    ││ │    0x00007f431679157b:   vpsrlq $0x1,%ymm1,%ymm2
   0.10%    ││ │    0x00007f4316791580:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%    ││ │    0x00007f4316791585:   vpor   %ymm2,%ymm3,%ymm3
   0.10%    ││ │    0x00007f4316791589:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007f431679158e:   mov    %rdx,%rdi
   0.09%    ││ │    0x00007f4316791591:   rorx   $0x29,%rax,%r13
   0.21%    ││ │    0x00007f4316791597:   rorx   $0x12,%rax,%r14
   0.08%    ││ │    0x00007f431679159d:   add    (%rsp),%r8
   0.09%    ││ │    0x00007f43167915a1:   or     %r10,%rdi
   0.10%    ││ │    0x00007f43167915a4:   mov    %rbx,%r15
   0.22%    ││ │    0x00007f43167915a7:   xor    %rcx,%r15
   0.10%    ││ │    0x00007f43167915aa:   rorx   $0x22,%rdx,%r12
   0.08%    ││ │    0x00007f43167915b0:   xor    %r14,%r13
   0.07%    ││ │    0x00007f43167915b3:   rorx   $0xe,%rax,%r14
   0.22%    ││ │    0x00007f43167915b9:   and    %rax,%r15
   0.11%    ││ │    0x00007f43167915bc:   add    %r8,%r11
   0.08%    ││ │    0x00007f43167915bf:   and    %r9,%rdi
   0.07%    ││ │    0x00007f43167915c2:   xor    %r14,%r13
   0.22%    ││ │    0x00007f43167915c5:   rorx   $0x27,%rdx,%r14
   0.12%    ││ │    0x00007f43167915cb:   xor    %r12,%r14
   0.10%    ││ │    0x00007f43167915ce:   rorx   $0x1c,%rdx,%r12
   0.09%    ││ │    0x00007f43167915d4:   xor    %rcx,%r15
   0.26%    ││ │    0x00007f43167915d7:   xor    %r12,%r14
   0.10%    ││ │    0x00007f43167915da:   mov    %rdx,%r12
   0.08%    ││ │    0x00007f43167915dd:   and    %r10,%r12
   0.08%    ││ │    0x00007f43167915e0:   add    %r13,%r15
   0.22%    ││ │    0x00007f43167915e3:   or     %r12,%rdi
   0.10%    ││ │    0x00007f43167915e6:   add    %r14,%r8
   0.09%    ││ │    0x00007f43167915e9:   add    %r15,%r11
   0.10%    ││ │    0x00007f43167915ec:   add    %r15,%r8
   0.28%    ││ │    0x00007f43167915ef:   add    %rdi,%r8
   0.12%    ││ │    0x00007f43167915f2:   vpsrlq $0x8,%ymm1,%ymm2
   0.09%    ││ │    0x00007f43167915f7:   vpsllq $0x38,%ymm1,%ymm1
   0.09%    ││ │    0x00007f43167915fc:   vpor   %ymm2,%ymm1,%ymm1
   0.24%    ││ │    0x00007f4316791600:   vpxor  %ymm8,%ymm3,%ymm3
   0.12%    ││ │    0x00007f4316791605:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%    ││ │    0x00007f4316791609:   vpaddq %ymm1,%ymm0,%ymm0
   0.09%    ││ │    0x00007f431679160d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.20%    ││ │    0x00007f4316791613:   vpand  %ymm10,%ymm0,%ymm0
   0.12%    ││ │    0x00007f4316791618:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.09%    ││ │    0x00007f431679161e:   vpsrlq $0x6,%ymm2,%ymm8
   0.10%    ││ │    0x00007f4316791623:   mov    %r8,%rdi
   0.22%    ││ │    0x00007f4316791626:   rorx   $0x29,%r11,%r13
   0.10%    ││ │    0x00007f431679162c:   rorx   $0x12,%r11,%r14
   0.09%    ││ │    0x00007f4316791632:   add    0x8(%rsp),%rcx
   0.07%    ││ │    0x00007f4316791637:   or     %r9,%rdi
   0.19%    ││ │    0x00007f431679163a:   mov    %rax,%r15
   0.14%    ││ │    0x00007f431679163d:   xor    %rbx,%r15
   0.09%    ││ │    0x00007f4316791640:   rorx   $0x22,%r8,%r12
   0.08%    ││ │    0x00007f4316791646:   xor    %r14,%r13
   0.24%    ││ │    0x00007f4316791649:   rorx   $0xe,%r11,%r14
   0.10%    ││ │    0x00007f431679164f:   and    %r11,%r15
   0.08%    ││ │    0x00007f4316791652:   add    %rcx,%r10
   0.08%    ││ │    0x00007f4316791655:   and    %rdx,%rdi
   0.24%    ││ │    0x00007f4316791658:   xor    %r14,%r13
   0.12%    ││ │    0x00007f431679165b:   rorx   $0x27,%r8,%r14
   0.07%    ││ │    0x00007f4316791661:   xor    %r12,%r14
   0.08%    ││ │    0x00007f4316791664:   rorx   $0x1c,%r8,%r12
   0.22%    ││ │    0x00007f431679166a:   xor    %rbx,%r15
   0.10%    ││ │    0x00007f431679166d:   xor    %r12,%r14
   0.08%    ││ │    0x00007f4316791670:   mov    %r8,%r12
   0.08%    ││ │    0x00007f4316791673:   and    %r9,%r12
   0.25%    ││ │    0x00007f4316791676:   add    %r13,%r15
   0.10%    ││ │    0x00007f4316791679:   or     %r12,%rdi
   0.10%    ││ │    0x00007f431679167c:   add    %r14,%rcx
   0.07%    ││ │    0x00007f431679167f:   add    %r15,%r10
   0.21%    ││ │    0x00007f4316791682:   add    %r15,%rcx
   0.10%    ││ │    0x00007f4316791685:   add    %rdi,%rcx
   0.09%    ││ │    0x00007f4316791688:   vpsrlq $0x13,%ymm2,%ymm3
   0.08%    ││ │    0x00007f431679168d:   vpsllq $0x2d,%ymm2,%ymm1
   0.26%    ││ │    0x00007f4316791692:   vpor   %ymm1,%ymm3,%ymm3
   0.13%    ││ │    0x00007f4316791696:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%    ││ │    0x00007f431679169a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.10%    ││ │    0x00007f431679169f:   vpsllq $0x3,%ymm2,%ymm1
   0.22%    ││ │    0x00007f43167916a4:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f43167916a8:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f43167916ac:   vpaddq %ymm8,%ymm7,%ymm7
   0.07%    ││ │    0x00007f43167916b1:   vpsrlq $0x6,%ymm7,%ymm8
   0.24%    ││ │    0x00007f43167916b6:   mov    %rcx,%rdi
   0.12%    ││ │    0x00007f43167916b9:   rorx   $0x29,%r10,%r13
   0.08%    ││ │    0x00007f43167916bf:   rorx   $0x12,%r10,%r14
   0.08%    ││ │    0x00007f43167916c5:   add    0x10(%rsp),%rbx
   0.30%    ││ │    0x00007f43167916ca:   or     %rdx,%rdi
   0.10%    ││ │    0x00007f43167916cd:   mov    %r11,%r15
   0.08%    ││ │    0x00007f43167916d0:   xor    %rax,%r15
   0.06%    ││ │    0x00007f43167916d3:   rorx   $0x22,%rcx,%r12
   0.25%    ││ │    0x00007f43167916d9:   xor    %r14,%r13
   0.11%    ││ │    0x00007f43167916dc:   rorx   $0xe,%r10,%r14
   0.08%    ││ │    0x00007f43167916e2:   and    %r10,%r15
   0.07%    ││ │    0x00007f43167916e5:   add    %rbx,%r9
   0.26%    ││ │    0x00007f43167916e8:   and    %r8,%rdi
   0.09%    ││ │    0x00007f43167916eb:   xor    %r14,%r13
   0.09%    ││ │    0x00007f43167916ee:   rorx   $0x27,%rcx,%r14
   0.09%    ││ │    0x00007f43167916f4:   xor    %r12,%r14
   0.26%    ││ │    0x00007f43167916f7:   rorx   $0x1c,%rcx,%r12
   0.10%    ││ │    0x00007f43167916fd:   xor    %rax,%r15
   0.08%    ││ │    0x00007f4316791700:   xor    %r12,%r14
   0.07%    ││ │    0x00007f4316791703:   mov    %rcx,%r12
   0.27%    ││ │    0x00007f4316791706:   and    %rdx,%r12
   0.12%    ││ │    0x00007f4316791709:   add    %r13,%r15
   0.10%    ││ │    0x00007f431679170c:   or     %r12,%rdi
   0.05%    ││ │    0x00007f431679170f:   add    %r14,%rbx
   0.22%    ││ │    0x00007f4316791712:   add    %r15,%r9
   0.12%    ││ │    0x00007f4316791715:   add    %r15,%rbx
   0.13%    ││ │    0x00007f4316791718:   add    %rdi,%rbx
   0.07%    ││ │    0x00007f431679171b:   vpsrlq $0x13,%ymm7,%ymm3
   0.25%    ││ │    0x00007f4316791720:   vpsllq $0x2d,%ymm7,%ymm1
   0.09%    ││ │    0x00007f4316791725:   vpor   %ymm1,%ymm3,%ymm3
   0.10%    ││ │    0x00007f4316791729:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f431679172d:   vpsrlq $0x3d,%ymm7,%ymm3
   0.25%    ││ │    0x00007f4316791732:   vpsllq $0x3,%ymm7,%ymm1
   0.10%    ││ │    0x00007f4316791737:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f431679173b:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f431679173f:   vpaddq %ymm8,%ymm0,%ymm2
   0.24%    ││ │    0x00007f4316791744:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.19%    ││ │    0x00007f431679174a:   mov    %rbx,%rdi
   0.11%    ││ │    0x00007f431679174d:   rorx   $0x29,%r9,%r13
   0.05%    ││ │    0x00007f4316791753:   rorx   $0x12,%r9,%r14
   0.22%    ││ │    0x00007f4316791759:   add    0x18(%rsp),%rax
   0.14%    ││ │    0x00007f431679175e:   or     %r8,%rdi
   0.08%    ││ │    0x00007f4316791761:   mov    %r10,%r15
   0.06%    ││ │    0x00007f4316791764:   xor    %r11,%r15
   0.25%    ││ │    0x00007f4316791767:   rorx   $0x22,%rbx,%r12
   0.19%    ││ │    0x00007f431679176d:   xor    %r14,%r13
   0.10%    ││ │    0x00007f4316791770:   rorx   $0xe,%r9,%r14
   0.07%    ││ │    0x00007f4316791776:   and    %r9,%r15
   0.22%    ││ │    0x00007f4316791779:   add    %rax,%rdx
   0.16%    ││ │    0x00007f431679177c:   and    %rcx,%rdi
   0.08%    ││ │    0x00007f431679177f:   xor    %r14,%r13
   0.06%    ││ │    0x00007f4316791782:   rorx   $0x27,%rbx,%r14
   0.22%    ││ │    0x00007f4316791788:   xor    %r12,%r14
   0.16%    ││ │    0x00007f431679178b:   rorx   $0x1c,%rbx,%r12
   0.05%    ││ │    0x00007f4316791791:   xor    %r11,%r15
   0.06%    ││ │    0x00007f4316791794:   xor    %r12,%r14
   0.25%    ││ │    0x00007f4316791797:   mov    %rbx,%r12
   0.18%    ││ │    0x00007f431679179a:   and    %r8,%r12
   0.10%    ││ │    0x00007f431679179d:   add    %r13,%r15
   0.06%    ││ │    0x00007f43167917a0:   or     %r12,%rdi
   0.23%    ││ │    0x00007f43167917a3:   add    %r14,%rax
   0.16%    ││ │    0x00007f43167917a6:   add    %r15,%rdx
   0.07%    ││ │    0x00007f43167917a9:   add    %r15,%rax
   0.05%    ││ │    0x00007f43167917ac:   add    %rdi,%rax
   0.22%    ││ │    0x00007f43167917af:   subq   $0x1,0x20(%rsp)
   0.27%    │╰ │    0x00007f43167917b5:   jne    0x00007f4316790e40
   0.02%    │  │    0x00007f43167917bb:   movq   $0x2,0x20(%rsp)
   0.06%    │ ↗│    0x00007f43167917c4:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.07%    │ ││    0x00007f43167917c9:   vmovdqu %ymm0,(%rsp)
   0.07%    │ ││    0x00007f43167917ce:   mov    %r9,%r15
   0.09%    │ ││    0x00007f43167917d1:   rorx   $0x29,%rdx,%r13
   0.08%    │ ││    0x00007f43167917d7:   rorx   $0x12,%rdx,%r14
   0.08%    │ ││    0x00007f43167917dd:   xor    %r10,%r15
   0.08%    │ ││    0x00007f43167917e0:   xor    %r14,%r13
   0.06%    │ ││    0x00007f43167917e3:   rorx   $0xe,%rdx,%r14
   0.08%    │ ││    0x00007f43167917e9:   and    %rdx,%r15
   0.05%    │ ││    0x00007f43167917ec:   xor    %r14,%r13
   0.07%    │ ││    0x00007f43167917ef:   rorx   $0x22,%rax,%r12
   0.07%    │ ││    0x00007f43167917f5:   xor    %r10,%r15
   0.08%    │ ││    0x00007f43167917f8:   rorx   $0x27,%rax,%r14
   0.07%    │ ││    0x00007f43167917fe:   mov    %rax,%rdi
   0.07%    │ ││    0x00007f4316791801:   xor    %r12,%r14
   0.08%    │ ││    0x00007f4316791804:   rorx   $0x1c,%rax,%r12
   0.08%    │ ││    0x00007f431679180a:   add    (%rsp),%r11
   0.04%    │ ││    0x00007f431679180e:   or     %rcx,%rdi
   0.05%    │ ││    0x00007f4316791811:   xor    %r12,%r14
   0.07%    │ ││    0x00007f4316791814:   mov    %rax,%r12
   0.05%    │ ││    0x00007f4316791817:   and    %rbx,%rdi
   0.07%    │ ││    0x00007f431679181a:   and    %rcx,%r12
   0.07%    │ ││    0x00007f431679181d:   add    %r13,%r15
   0.05%    │ ││    0x00007f4316791820:   add    %r11,%r8
   0.05%    │ ││    0x00007f4316791823:   or     %r12,%rdi
   0.06%    │ ││    0x00007f4316791826:   add    %r14,%r11
   0.07%    │ ││    0x00007f4316791829:   add    %r15,%r8
   0.08%    │ ││    0x00007f431679182c:   add    %r15,%r11
   0.05%    │ ││    0x00007f431679182f:   mov    %rdx,%r15
   0.05%    │ ││    0x00007f4316791832:   rorx   $0x29,%r8,%r13
   0.07%    │ ││    0x00007f4316791838:   rorx   $0x12,%r8,%r14
   0.07%    │ ││    0x00007f431679183e:   xor    %r9,%r15
   0.05%    │ ││    0x00007f4316791841:   xor    %r14,%r13
   0.07%    │ ││    0x00007f4316791844:   rorx   $0xe,%r8,%r14
   0.07%    │ ││    0x00007f431679184a:   and    %r8,%r15
   0.07%    │ ││    0x00007f431679184d:   add    %rdi,%r11
   0.05%    │ ││    0x00007f4316791850:   xor    %r14,%r13
   0.07%    │ ││    0x00007f4316791853:   rorx   $0x22,%r11,%r12
   0.09%    │ ││    0x00007f4316791859:   xor    %r9,%r15
   0.07%    │ ││    0x00007f431679185c:   rorx   $0x27,%r11,%r14
   0.07%    │ ││    0x00007f4316791862:   mov    %r11,%rdi
   0.07%    │ ││    0x00007f4316791865:   xor    %r12,%r14
   0.04%    │ ││    0x00007f4316791868:   rorx   $0x1c,%r11,%r12
   0.08%    │ ││    0x00007f431679186e:   add    0x8(%rsp),%r10
   0.06%    │ ││    0x00007f4316791873:   or     %rbx,%rdi
   0.06%    │ ││    0x00007f4316791876:   xor    %r12,%r14
   0.08%    │ ││    0x00007f4316791879:   mov    %r11,%r12
   0.08%    │ ││    0x00007f431679187c:   and    %rax,%rdi
   0.04%    │ ││    0x00007f431679187f:   and    %rbx,%r12
   0.06%    │ ││    0x00007f4316791882:   add    %r13,%r15
   0.07%    │ ││    0x00007f4316791885:   add    %r10,%rcx
   0.05%    │ ││    0x00007f4316791888:   or     %r12,%rdi
   0.06%    │ ││    0x00007f431679188b:   add    %r14,%r10
   0.06%    │ ││    0x00007f431679188e:   add    %r15,%rcx
   0.08%    │ ││    0x00007f4316791891:   add    %r15,%r10
   0.07%    │ ││    0x00007f4316791894:   mov    %r8,%r15
   0.07%    │ ││    0x00007f4316791897:   rorx   $0x29,%rcx,%r13
   0.07%    │ ││    0x00007f431679189d:   rorx   $0x12,%rcx,%r14
   0.07%    │ ││    0x00007f43167918a3:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f43167918a6:   xor    %r14,%r13
   0.04%    │ ││    0x00007f43167918a9:   rorx   $0xe,%rcx,%r14
   0.08%    │ ││    0x00007f43167918af:   and    %rcx,%r15
   0.06%    │ ││    0x00007f43167918b2:   add    %rdi,%r10
   0.06%    │ ││    0x00007f43167918b5:   xor    %r14,%r13
   0.08%    │ ││    0x00007f43167918b8:   rorx   $0x22,%r10,%r12
   0.07%    │ ││    0x00007f43167918be:   xor    %rdx,%r15
   0.07%    │ ││    0x00007f43167918c1:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007f43167918c7:   mov    %r10,%rdi
   0.08%    │ ││    0x00007f43167918ca:   xor    %r12,%r14
   0.08%    │ ││    0x00007f43167918cd:   rorx   $0x1c,%r10,%r12
   0.07%    │ ││    0x00007f43167918d3:   add    0x10(%rsp),%r9
   0.06%    │ ││    0x00007f43167918d8:   or     %rax,%rdi
   0.05%    │ ││    0x00007f43167918db:   xor    %r12,%r14
   0.08%    │ ││    0x00007f43167918de:   mov    %r10,%r12
   0.05%    │ ││    0x00007f43167918e1:   and    %r11,%rdi
   0.05%    │ ││    0x00007f43167918e4:   and    %rax,%r12
   0.06%    │ ││    0x00007f43167918e7:   add    %r13,%r15
   0.07%    │ ││    0x00007f43167918ea:   add    %r9,%rbx
   0.07%    │ ││    0x00007f43167918ed:   or     %r12,%rdi
   0.05%    │ ││    0x00007f43167918f0:   add    %r14,%r9
   0.05%    │ ││    0x00007f43167918f3:   add    %r15,%rbx
   0.07%    │ ││    0x00007f43167918f6:   add    %r15,%r9
   0.06%    │ ││    0x00007f43167918f9:   mov    %rcx,%r15
   0.04%    │ ││    0x00007f43167918fc:   rorx   $0x29,%rbx,%r13
   0.06%    │ ││    0x00007f4316791902:   rorx   $0x12,%rbx,%r14
   0.10%    │ ││    0x00007f4316791908:   xor    %r8,%r15
   0.06%    │ ││    0x00007f431679190b:   xor    %r14,%r13
   0.06%    │ ││    0x00007f431679190e:   rorx   $0xe,%rbx,%r14
   0.10%    │ ││    0x00007f4316791914:   and    %rbx,%r15
   0.08%    │ ││    0x00007f4316791917:   add    %rdi,%r9
   0.08%    │ ││    0x00007f431679191a:   xor    %r14,%r13
   0.07%    │ ││    0x00007f431679191d:   rorx   $0x22,%r9,%r12
   0.07%    │ ││    0x00007f4316791923:   xor    %r8,%r15
   0.08%    │ ││    0x00007f4316791926:   rorx   $0x27,%r9,%r14
   0.07%    │ ││    0x00007f431679192c:   mov    %r9,%rdi
   0.07%    │ ││    0x00007f431679192f:   xor    %r12,%r14
   0.07%    │ ││    0x00007f4316791932:   rorx   $0x1c,%r9,%r12
   0.07%    │ ││    0x00007f4316791938:   add    0x18(%rsp),%rdx
   0.06%    │ ││    0x00007f431679193d:   or     %r11,%rdi
   0.06%    │ ││    0x00007f4316791940:   xor    %r12,%r14
   0.07%    │ ││    0x00007f4316791943:   mov    %r9,%r12
   0.07%    │ ││    0x00007f4316791946:   and    %r10,%rdi
   0.07%    │ ││    0x00007f4316791949:   and    %r11,%r12
   0.04%    │ ││    0x00007f431679194c:   add    %r13,%r15
   0.07%    │ ││    0x00007f431679194f:   add    %rdx,%rax
   0.07%    │ ││    0x00007f4316791952:   or     %r12,%rdi
   0.08%    │ ││    0x00007f4316791955:   add    %r14,%rdx
   0.07%    │ ││    0x00007f4316791958:   add    %r15,%rax
   0.07%    │ ││    0x00007f431679195b:   add    %r15,%rdx
   0.07%    │ ││    0x00007f431679195e:   add    %rdi,%rdx
   0.10%    │ ││    0x00007f4316791961:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.08%    │ ││    0x00007f4316791966:   vmovdqu %ymm0,(%rsp)
   0.04%    │ ││    0x00007f431679196b:   add    $0x40,%rbp
   0.06%    │ ││    0x00007f431679196f:   mov    %rbx,%r15
   0.09%    │ ││    0x00007f4316791972:   rorx   $0x29,%rax,%r13
   0.06%    │ ││    0x00007f4316791978:   rorx   $0x12,%rax,%r14
   0.04%    │ ││    0x00007f431679197e:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f4316791981:   xor    %r14,%r13
   0.10%    │ ││    0x00007f4316791984:   rorx   $0xe,%rax,%r14
   0.06%    │ ││    0x00007f431679198a:   and    %rax,%r15
   0.05%    │ ││    0x00007f431679198d:   xor    %r14,%r13
   0.07%    │ ││    0x00007f4316791990:   rorx   $0x22,%rdx,%r12
   0.08%    │ ││    0x00007f4316791996:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f4316791999:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007f431679199f:   mov    %rdx,%rdi
   0.06%    │ ││    0x00007f43167919a2:   xor    %r12,%r14
   0.07%    │ ││    0x00007f43167919a5:   rorx   $0x1c,%rdx,%r12
   0.05%    │ ││    0x00007f43167919ab:   add    (%rsp),%r8
   0.04%    │ ││    0x00007f43167919af:   or     %r10,%rdi
   0.07%    │ ││    0x00007f43167919b2:   xor    %r12,%r14
   0.08%    │ ││    0x00007f43167919b5:   mov    %rdx,%r12
   0.06%    │ ││    0x00007f43167919b8:   and    %r9,%rdi
   0.05%    │ ││    0x00007f43167919bb:   and    %r10,%r12
   0.08%    │ ││    0x00007f43167919be:   add    %r13,%r15
   0.09%    │ ││    0x00007f43167919c1:   add    %r8,%r11
   0.06%    │ ││    0x00007f43167919c4:   or     %r12,%rdi
   0.06%    │ ││    0x00007f43167919c7:   add    %r14,%r8
   0.06%    │ ││    0x00007f43167919ca:   add    %r15,%r11
   0.10%    │ ││    0x00007f43167919cd:   add    %r15,%r8
   0.05%    │ ││    0x00007f43167919d0:   mov    %rax,%r15
   0.05%    │ ││    0x00007f43167919d3:   rorx   $0x29,%r11,%r13
   0.09%    │ ││    0x00007f43167919d9:   rorx   $0x12,%r11,%r14
   0.10%    │ ││    0x00007f43167919df:   xor    %rbx,%r15
   0.05%    │ ││    0x00007f43167919e2:   xor    %r14,%r13
   0.08%    │ ││    0x00007f43167919e5:   rorx   $0xe,%r11,%r14
   0.09%    │ ││    0x00007f43167919eb:   and    %r11,%r15
   0.08%    │ ││    0x00007f43167919ee:   add    %rdi,%r8
   0.05%    │ ││    0x00007f43167919f1:   xor    %r14,%r13
   0.07%    │ ││    0x00007f43167919f4:   rorx   $0x22,%r8,%r12
   0.07%    │ ││    0x00007f43167919fa:   xor    %rbx,%r15
   0.10%    │ ││    0x00007f43167919fd:   rorx   $0x27,%r8,%r14
   0.06%    │ ││    0x00007f4316791a03:   mov    %r8,%rdi
   0.04%    │ ││    0x00007f4316791a06:   xor    %r12,%r14
   0.07%    │ ││    0x00007f4316791a09:   rorx   $0x1c,%r8,%r12
   0.07%    │ ││    0x00007f4316791a0f:   add    0x8(%rsp),%rcx
   0.05%    │ ││    0x00007f4316791a14:   or     %r9,%rdi
   0.06%    │ ││    0x00007f4316791a17:   xor    %r12,%r14
   0.07%    │ ││    0x00007f4316791a1a:   mov    %r8,%r12
   0.07%    │ ││    0x00007f4316791a1d:   and    %rdx,%rdi
   0.04%    │ ││    0x00007f4316791a20:   and    %r9,%r12
   0.05%    │ ││    0x00007f4316791a23:   add    %r13,%r15
   0.08%    │ ││    0x00007f4316791a26:   add    %rcx,%r10
   0.07%    │ ││    0x00007f4316791a29:   or     %r12,%rdi
   0.06%    │ ││    0x00007f4316791a2c:   add    %r14,%rcx
   0.05%    │ ││    0x00007f4316791a2f:   add    %r15,%r10
   0.07%    │ ││    0x00007f4316791a32:   add    %r15,%rcx
   0.08%    │ ││    0x00007f4316791a35:   mov    %r11,%r15
   0.03%    │ ││    0x00007f4316791a38:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007f4316791a3e:   rorx   $0x12,%r10,%r14
   0.07%    │ ││    0x00007f4316791a44:   xor    %rax,%r15
   0.08%    │ ││    0x00007f4316791a47:   xor    %r14,%r13
   0.07%    │ ││    0x00007f4316791a4a:   rorx   $0xe,%r10,%r14
   0.08%    │ ││    0x00007f4316791a50:   and    %r10,%r15
   0.08%    │ ││    0x00007f4316791a53:   add    %rdi,%rcx
   0.06%    │ ││    0x00007f4316791a56:   xor    %r14,%r13
   0.07%    │ ││    0x00007f4316791a59:   rorx   $0x22,%rcx,%r12
   0.08%    │ ││    0x00007f4316791a5f:   xor    %rax,%r15
   0.11%    │ ││    0x00007f4316791a62:   rorx   $0x27,%rcx,%r14
   0.06%    │ ││    0x00007f4316791a68:   mov    %rcx,%rdi
   0.06%    │ ││    0x00007f4316791a6b:   xor    %r12,%r14
   0.04%    │ ││    0x00007f4316791a6e:   rorx   $0x1c,%rcx,%r12
   0.08%    │ ││    0x00007f4316791a74:   add    0x10(%rsp),%rbx
   0.04%    │ ││    0x00007f4316791a79:   or     %rdx,%rdi
   0.06%    │ ││    0x00007f4316791a7c:   xor    %r12,%r14
   0.06%    │ ││    0x00007f4316791a7f:   mov    %rcx,%r12
   0.07%    │ ││    0x00007f4316791a82:   and    %r8,%rdi
   0.07%    │ ││    0x00007f4316791a85:   and    %rdx,%r12
   0.05%    │ ││    0x00007f4316791a88:   add    %r13,%r15
   0.06%    │ ││    0x00007f4316791a8b:   add    %rbx,%r9
   0.08%    │ ││    0x00007f4316791a8e:   or     %r12,%rdi
   0.10%    │ ││    0x00007f4316791a91:   add    %r14,%rbx
   0.05%    │ ││    0x00007f4316791a94:   add    %r15,%r9
   0.08%    │ ││    0x00007f4316791a97:   add    %r15,%rbx
   0.07%    │ ││    0x00007f4316791a9a:   mov    %r10,%r15
   0.07%    │ ││    0x00007f4316791a9d:   rorx   $0x29,%r9,%r13
   0.05%    │ ││    0x00007f4316791aa3:   rorx   $0x12,%r9,%r14
   0.07%    │ ││    0x00007f4316791aa9:   xor    %r11,%r15
   0.07%    │ ││    0x00007f4316791aac:   xor    %r14,%r13
   0.08%    │ ││    0x00007f4316791aaf:   rorx   $0xe,%r9,%r14
   0.05%    │ ││    0x00007f4316791ab5:   and    %r9,%r15
   0.10%    │ ││    0x00007f4316791ab8:   add    %rdi,%rbx
   0.07%    │ ││    0x00007f4316791abb:   xor    %r14,%r13
   0.10%    │ ││    0x00007f4316791abe:   rorx   $0x22,%rbx,%r12
   0.07%    │ ││    0x00007f4316791ac4:   xor    %r11,%r15
   0.11%    │ ││    0x00007f4316791ac7:   rorx   $0x27,%rbx,%r14
   0.06%    │ ││    0x00007f4316791acd:   mov    %rbx,%rdi
   0.05%    │ ││    0x00007f4316791ad0:   xor    %r12,%r14
   0.06%    │ ││    0x00007f4316791ad3:   rorx   $0x1c,%rbx,%r12
   0.09%    │ ││    0x00007f4316791ad9:   add    0x18(%rsp),%rax
   0.05%    │ ││    0x00007f4316791ade:   or     %r8,%rdi
   0.06%    │ ││    0x00007f4316791ae1:   xor    %r12,%r14
   0.08%    │ ││    0x00007f4316791ae4:   mov    %rbx,%r12
   0.08%    │ ││    0x00007f4316791ae7:   and    %rcx,%rdi
   0.07%    │ ││    0x00007f4316791aea:   and    %r8,%r12
   0.04%    │ ││    0x00007f4316791aed:   add    %r13,%r15
   0.08%    │ ││    0x00007f4316791af0:   add    %rax,%rdx
   0.06%    │ ││    0x00007f4316791af3:   or     %r12,%rdi
   0.06%    │ ││    0x00007f4316791af6:   add    %r14,%rax
   0.07%    │ ││    0x00007f4316791af9:   add    %r15,%rdx
   0.06%    │ ││    0x00007f4316791afc:   add    %r15,%rax
   0.07%    │ ││    0x00007f4316791aff:   add    %rdi,%rax
   0.12%    │ ││    0x00007f4316791b02:   vmovdqu %ymm6,%ymm4
   0.04%    │ ││    0x00007f4316791b06:   vmovdqu %ymm7,%ymm5
   0.02%    │ ││    0x00007f4316791b0a:   subq   $0x1,0x20(%rsp)
   0.17%    │ ╰│    0x00007f4316791b10:   jne    0x00007f43167917c4
   0.04%    │  │    0x00007f4316791b16:   add    (%rsi),%rax
   0.00%    │  │    0x00007f4316791b19:   mov    %rax,(%rsi)
   0.25%    │  │    0x00007f4316791b1c:   add    0x8(%rsi),%rbx
            │  │    0x00007f4316791b20:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007f4316791b24:   add    0x10(%rsi),%rcx
            │  │    0x00007f4316791b28:   mov    %rcx,0x10(%rsi)
   0.11%    │  │    0x00007f4316791b2c:   add    0x18(%rsi),%r8
            │  │    0x00007f4316791b30:   mov    %r8,0x18(%rsi)
   0.02%    │  │    0x00007f4316791b34:   add    0x20(%rsi),%rdx
            │  │    0x00007f4316791b38:   mov    %rdx,0x20(%rsi)
   0.11%    │  │    0x00007f4316791b3c:   add    0x28(%rsi),%r9
   0.00%    │  │    0x00007f4316791b40:   mov    %r9,0x28(%rsi)
   0.02%    │  │    0x00007f4316791b44:   add    0x30(%rsi),%r10
   0.00%    │  │    0x00007f4316791b48:   mov    %r10,0x30(%rsi)
   0.10%    │  │    0x00007f4316791b4c:   add    0x38(%rsi),%r11
            │  │    0x00007f4316791b50:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007f4316791b54:   mov    0x28(%rsp),%rdi
   0.00%    │  │    0x00007f4316791b59:   add    $0x80,%rdi
   0.09%    │  │    0x00007f4316791b60:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f4316791b65:   jne    0x00007f4316790dfb
   0.01%    ↘       0x00007f4316791b6b:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f4316791b70:   mov    0x48(%rsp),%rbx
                    0x00007f4316791b75:   mov    0x50(%rsp),%r12
                    0x00007f4316791b7a:   mov    0x58(%rsp),%r13
                    0x00007f4316791b7f:   mov    0x60(%rsp),%r14
   0.00%            0x00007f4316791b84:   mov    0x68(%rsp),%r15
                    0x00007f4316791b89:   mov    0x38(%rsp),%rsp
                    0x00007f4316791b8e:   pop    %rcx
   0.01%            0x00007f4316791b8f:   pop    %rdx
                    0x00007f4316791b90:   mov    %rdx,%rax
   0.23%         ↗  0x00007f4316791b93:   cmp    %rcx,%rax
                ╭│  0x00007f4316791b96:   jae    0x00007f4316791ba0
   0.00%        ││  0x00007f4316791b98:   add    $0x80,%rax
   0.01%        │╰  0x00007f4316791b9e:   jmp    0x00007f4316791b93
   0.02%        ↘   0x00007f4316791ba0:   vzeroupper 
                    0x00007f4316791ba3:   leave  
   0.01%            0x00007f4316791ba4:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f4316791bc0, 0x00007f4316791be0] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  96.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.23%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.64%                      <unknown> 
   0.32%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.02%                      <unknown> 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1074 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   1.18%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.23%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.73%                      <unknown> 
   1.42%              kernel  [unknown] 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1048 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1074 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  decode_env::print_hook_comments 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.15%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.23%        runtime stub
   1.73%                    
   1.42%              kernel
   0.34%      jvmci, level 4
   0.13%           libjvm.so
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/224, length = 16384)

# Run progress: 45.45% complete, ETA 00:11:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.407 us/op
# Warmup Iteration   2: 37.784 us/op
# Warmup Iteration   3: 37.779 us/op
# Warmup Iteration   4: 37.777 us/op
# Warmup Iteration   5: 37.787 us/op
Iteration   1: 37.789 us/op
Iteration   2: 37.800 us/op
Iteration   3: 37.784 us/op
Iteration   4: 37.803 us/op
Iteration   5: 37.776 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.790 ±(99.9%) 0.042 us/op [Average]
  (min, avg, max) = (37.776, 37.790, 37.803), stdev = 0.011
  CI (99.9%): [37.748, 37.832] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 249808 total address lines.
Perf output processed (skipped 60.674 seconds):
 Column 1: cycles (50882 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                 0x00007f9e3e79094f:   mov    0x8(%rsi),%rbx
                 0x00007f9e3e790953:   mov    0x10(%rsi),%rcx
                 0x00007f9e3e790957:   mov    0x18(%rsi),%r8
   0.00%         0x00007f9e3e79095b:   mov    0x20(%rsi),%rdx
                 0x00007f9e3e79095f:   mov    0x28(%rsi),%r9
                 0x00007f9e3e790963:   mov    0x38(%rsi),%r11
                 0x00007f9e3e790967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f9e3e78fa80
                 0x00007f9e3e79096f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f9e3e78faa0
                 0x00007f9e3e790977:   mov    0x30(%rsi),%r10
            ↗    0x00007f9e3e79097b:   movabs $0x7f9e55a9a180,%rbp
   0.03%    │    0x00007f9e3e790985:   vmovdqu (%rdi),%ymm4
   0.08%    │    0x00007f9e3e790989:   vpshufb %ymm9,%ymm4,%ymm4
   0.16%    │    0x00007f9e3e79098e:   vmovdqu 0x20(%rdi),%ymm5
   0.02%    │    0x00007f9e3e790993:   vpshufb %ymm9,%ymm5,%ymm5
   0.08%    │    0x00007f9e3e790998:   vmovdqu 0x40(%rdi),%ymm6
   0.05%    │    0x00007f9e3e79099d:   vpshufb %ymm9,%ymm6,%ymm6
   0.13%    │    0x00007f9e3e7909a2:   vmovdqu 0x60(%rdi),%ymm7
   0.03%    │    0x00007f9e3e7909a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.07%    │    0x00007f9e3e7909ac:   mov    %rdi,0x28(%rsp)
   0.00%    │    0x00007f9e3e7909b1:   movq   $0x4,0x20(%rsp)
   0.05%    │    0x00007f9e3e7909ba:   nopw   0x0(%rax,%rax,1)
   0.06%  ↗ │    0x00007f9e3e7909c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.21%  │ │    0x00007f9e3e7909c5:   vmovdqu %ymm0,(%rsp)
   0.19%  │ │    0x00007f9e3e7909ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.26%  │ │    0x00007f9e3e7909d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.33%  │ │    0x00007f9e3e7909d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.71%  │ │    0x00007f9e3e7909da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.16%  │ │    0x00007f9e3e7909e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.13%  │ │    0x00007f9e3e7909e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.10%  │ │    0x00007f9e3e7909eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.26%  │ │    0x00007f9e3e7909f0:   vpor   %ymm2,%ymm3,%ymm3
   0.19%  │ │    0x00007f9e3e7909f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.07%  │ │    0x00007f9e3e7909f9:   mov    %rax,%rdi
   0.04%  │ │    0x00007f9e3e7909fc:   rorx   $0x29,%rdx,%r13
   0.21%  │ │    0x00007f9e3e790a02:   rorx   $0x12,%rdx,%r14
   0.17%  │ │    0x00007f9e3e790a08:   add    (%rsp),%r11
   0.10%  │ │    0x00007f9e3e790a0c:   or     %rcx,%rdi
   0.07%  │ │    0x00007f9e3e790a0f:   mov    %r9,%r15
   0.19%  │ │    0x00007f9e3e790a12:   xor    %r10,%r15
   0.18%  │ │    0x00007f9e3e790a15:   rorx   $0x22,%rax,%r12
   0.05%  │ │    0x00007f9e3e790a1b:   xor    %r14,%r13
   0.06%  │ │    0x00007f9e3e790a1e:   rorx   $0xe,%rdx,%r14
   0.20%  │ │    0x00007f9e3e790a24:   and    %rdx,%r15
   0.16%  │ │    0x00007f9e3e790a27:   add    %r11,%r8
   0.06%  │ │    0x00007f9e3e790a2a:   and    %rbx,%rdi
   0.06%  │ │    0x00007f9e3e790a2d:   xor    %r14,%r13
   0.20%  │ │    0x00007f9e3e790a30:   rorx   $0x27,%rax,%r14
   0.17%  │ │    0x00007f9e3e790a36:   xor    %r12,%r14
   0.06%  │ │    0x00007f9e3e790a39:   rorx   $0x1c,%rax,%r12
   0.05%  │ │    0x00007f9e3e790a3f:   xor    %r10,%r15
   0.21%  │ │    0x00007f9e3e790a42:   xor    %r12,%r14
   0.21%  │ │    0x00007f9e3e790a45:   mov    %rax,%r12
   0.06%  │ │    0x00007f9e3e790a48:   and    %rcx,%r12
   0.06%  │ │    0x00007f9e3e790a4b:   add    %r13,%r15
   0.16%  │ │    0x00007f9e3e790a4e:   or     %r12,%rdi
   0.18%  │ │    0x00007f9e3e790a51:   add    %r14,%r11
   0.06%  │ │    0x00007f9e3e790a54:   add    %r15,%r8
   0.05%  │ │    0x00007f9e3e790a57:   add    %r15,%r11
   0.18%  │ │    0x00007f9e3e790a5a:   add    %rdi,%r11
   0.17%  │ │    0x00007f9e3e790a5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.07%  │ │    0x00007f9e3e790a62:   vpsllq $0x38,%ymm1,%ymm1
   0.07%  │ │    0x00007f9e3e790a67:   vpor   %ymm2,%ymm1,%ymm1
   0.17%  │ │    0x00007f9e3e790a6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.21%  │ │    0x00007f9e3e790a70:   vpxor  %ymm1,%ymm3,%ymm1
   0.09%  │ │    0x00007f9e3e790a74:   vpaddq %ymm1,%ymm0,%ymm0
   0.04%  │ │    0x00007f9e3e790a78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.22%  │ │    0x00007f9e3e790a7e:   vpand  %ymm10,%ymm0,%ymm0
   0.19%  │ │    0x00007f9e3e790a83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.05%  │ │    0x00007f9e3e790a89:   vpsrlq $0x6,%ymm2,%ymm8
   0.06%  │ │    0x00007f9e3e790a8e:   mov    %r11,%rdi
   0.20%  │ │    0x00007f9e3e790a91:   rorx   $0x29,%r8,%r13
   0.21%  │ │    0x00007f9e3e790a97:   rorx   $0x12,%r8,%r14
   0.09%  │ │    0x00007f9e3e790a9d:   add    0x8(%rsp),%r10
   0.06%  │ │    0x00007f9e3e790aa2:   or     %rbx,%rdi
   0.18%  │ │    0x00007f9e3e790aa5:   mov    %rdx,%r15
   0.21%  │ │    0x00007f9e3e790aa8:   xor    %r9,%r15
   0.08%  │ │    0x00007f9e3e790aab:   rorx   $0x22,%r11,%r12
   0.06%  │ │    0x00007f9e3e790ab1:   xor    %r14,%r13
   0.21%  │ │    0x00007f9e3e790ab4:   rorx   $0xe,%r8,%r14
   0.17%  │ │    0x00007f9e3e790aba:   and    %r8,%r15
   0.09%  │ │    0x00007f9e3e790abd:   add    %r10,%rcx
   0.05%  │ │    0x00007f9e3e790ac0:   and    %rax,%rdi
   0.21%  │ │    0x00007f9e3e790ac3:   xor    %r14,%r13
   0.15%  │ │    0x00007f9e3e790ac6:   rorx   $0x27,%r11,%r14
   0.07%  │ │    0x00007f9e3e790acc:   xor    %r12,%r14
   0.06%  │ │    0x00007f9e3e790acf:   rorx   $0x1c,%r11,%r12
   0.20%  │ │    0x00007f9e3e790ad5:   xor    %r9,%r15
   0.17%  │ │    0x00007f9e3e790ad8:   xor    %r12,%r14
   0.09%  │ │    0x00007f9e3e790adb:   mov    %r11,%r12
   0.05%  │ │    0x00007f9e3e790ade:   and    %rbx,%r12
   0.17%  │ │    0x00007f9e3e790ae1:   add    %r13,%r15
   0.20%  │ │    0x00007f9e3e790ae4:   or     %r12,%rdi
   0.07%  │ │    0x00007f9e3e790ae7:   add    %r14,%r10
   0.06%  │ │    0x00007f9e3e790aea:   add    %r15,%rcx
   0.18%  │ │    0x00007f9e3e790aed:   add    %r15,%r10
   0.18%  │ │    0x00007f9e3e790af0:   add    %rdi,%r10
   0.05%  │ │    0x00007f9e3e790af3:   vpsrlq $0x13,%ymm2,%ymm3
   0.06%  │ │    0x00007f9e3e790af8:   vpsllq $0x2d,%ymm2,%ymm1
   0.19%  │ │    0x00007f9e3e790afd:   vpor   %ymm1,%ymm3,%ymm3
   0.20%  │ │    0x00007f9e3e790b01:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%  │ │    0x00007f9e3e790b05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%  │ │    0x00007f9e3e790b0a:   vpsllq $0x3,%ymm2,%ymm1
   0.17%  │ │    0x00007f9e3e790b0f:   vpor   %ymm1,%ymm3,%ymm3
   0.17%  │ │    0x00007f9e3e790b13:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │    0x00007f9e3e790b17:   vpaddq %ymm8,%ymm4,%ymm4
   0.04%  │ │    0x00007f9e3e790b1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.20%  │ │    0x00007f9e3e790b21:   mov    %r10,%rdi
   0.20%  │ │    0x00007f9e3e790b24:   rorx   $0x29,%rcx,%r13
   0.09%  │ │    0x00007f9e3e790b2a:   rorx   $0x12,%rcx,%r14
   0.05%  │ │    0x00007f9e3e790b30:   add    0x10(%rsp),%r9
   0.25%  │ │    0x00007f9e3e790b35:   or     %rax,%rdi
   0.17%  │ │    0x00007f9e3e790b38:   mov    %r8,%r15
   0.09%  │ │    0x00007f9e3e790b3b:   xor    %rdx,%r15
   0.05%  │ │    0x00007f9e3e790b3e:   rorx   $0x22,%r10,%r12
   0.22%  │ │    0x00007f9e3e790b44:   xor    %r14,%r13
   0.16%  │ │    0x00007f9e3e790b47:   rorx   $0xe,%rcx,%r14
   0.09%  │ │    0x00007f9e3e790b4d:   and    %rcx,%r15
   0.06%  │ │    0x00007f9e3e790b50:   add    %r9,%rbx
   0.22%  │ │    0x00007f9e3e790b53:   and    %r11,%rdi
   0.17%  │ │    0x00007f9e3e790b56:   xor    %r14,%r13
   0.05%  │ │    0x00007f9e3e790b59:   rorx   $0x27,%r10,%r14
   0.05%  │ │    0x00007f9e3e790b5f:   xor    %r12,%r14
   0.18%  │ │    0x00007f9e3e790b62:   rorx   $0x1c,%r10,%r12
   0.17%  │ │    0x00007f9e3e790b68:   xor    %rdx,%r15
   0.08%  │ │    0x00007f9e3e790b6b:   xor    %r12,%r14
   0.07%  │ │    0x00007f9e3e790b6e:   mov    %r10,%r12
   0.18%  │ │    0x00007f9e3e790b71:   and    %rax,%r12
   0.20%  │ │    0x00007f9e3e790b74:   add    %r13,%r15
   0.08%  │ │    0x00007f9e3e790b77:   or     %r12,%rdi
   0.07%  │ │    0x00007f9e3e790b7a:   add    %r14,%r9
   0.21%  │ │    0x00007f9e3e790b7d:   add    %r15,%rbx
   0.23%  │ │    0x00007f9e3e790b80:   add    %r15,%r9
   0.05%  │ │    0x00007f9e3e790b83:   add    %rdi,%r9
   0.03%  │ │    0x00007f9e3e790b86:   vpsrlq $0x13,%ymm4,%ymm3
   0.22%  │ │    0x00007f9e3e790b8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.19%  │ │    0x00007f9e3e790b90:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f9e3e790b94:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f9e3e790b98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.19%  │ │    0x00007f9e3e790b9d:   vpsllq $0x3,%ymm4,%ymm1
   0.20%  │ │    0x00007f9e3e790ba2:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f9e3e790ba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f9e3e790baa:   vpaddq %ymm8,%ymm0,%ymm2
   0.21%  │ │    0x00007f9e3e790baf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.24%  │ │    0x00007f9e3e790bb5:   mov    %r9,%rdi
   0.08%  │ │    0x00007f9e3e790bb8:   rorx   $0x29,%rbx,%r13
   0.03%  │ │    0x00007f9e3e790bbe:   rorx   $0x12,%rbx,%r14
   0.19%  │ │    0x00007f9e3e790bc4:   add    0x18(%rsp),%rdx
   0.24%  │ │    0x00007f9e3e790bc9:   or     %r11,%rdi
   0.06%  │ │    0x00007f9e3e790bcc:   mov    %rcx,%r15
   0.04%  │ │    0x00007f9e3e790bcf:   xor    %r8,%r15
   0.14%  │ │    0x00007f9e3e790bd2:   rorx   $0x22,%r9,%r12
   0.21%  │ │    0x00007f9e3e790bd8:   xor    %r14,%r13
   0.06%  │ │    0x00007f9e3e790bdb:   rorx   $0xe,%rbx,%r14
   0.06%  │ │    0x00007f9e3e790be1:   and    %rbx,%r15
   0.18%  │ │    0x00007f9e3e790be4:   add    %rdx,%rax
   0.20%  │ │    0x00007f9e3e790be7:   and    %r10,%rdi
   0.08%  │ │    0x00007f9e3e790bea:   xor    %r14,%r13
   0.06%  │ │    0x00007f9e3e790bed:   rorx   $0x27,%r9,%r14
   0.18%  │ │    0x00007f9e3e790bf3:   xor    %r12,%r14
   0.17%  │ │    0x00007f9e3e790bf6:   rorx   $0x1c,%r9,%r12
   0.07%  │ │    0x00007f9e3e790bfc:   xor    %r8,%r15
   0.03%  │ │    0x00007f9e3e790bff:   xor    %r12,%r14
   0.15%  │ │    0x00007f9e3e790c02:   mov    %r9,%r12
   0.19%  │ │    0x00007f9e3e790c05:   and    %r11,%r12
   0.06%  │ │    0x00007f9e3e790c08:   add    %r13,%r15
   0.02%  │ │    0x00007f9e3e790c0b:   or     %r12,%rdi
   0.16%  │ │    0x00007f9e3e790c0e:   add    %r14,%rdx
   0.24%  │ │    0x00007f9e3e790c11:   add    %r15,%rax
   0.08%  │ │    0x00007f9e3e790c14:   add    %r15,%rdx
   0.03%  │ │    0x00007f9e3e790c17:   add    %rdi,%rdx
   0.16%  │ │    0x00007f9e3e790c1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.23%  │ │    0x00007f9e3e790c1f:   vmovdqu %ymm0,(%rsp)
   0.07%  │ │    0x00007f9e3e790c24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.03%  │ │    0x00007f9e3e790c2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.17%  │ │    0x00007f9e3e790c30:   vpaddq %ymm5,%ymm0,%ymm0
   0.30%  │ │    0x00007f9e3e790c34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.06%  │ │    0x00007f9e3e790c3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.04%  │ │    0x00007f9e3e790c40:   vpsrlq $0x1,%ymm1,%ymm2
   0.20%  │ │    0x00007f9e3e790c45:   vpsllq $0x3f,%ymm1,%ymm3
   0.23%  │ │    0x00007f9e3e790c4a:   vpor   %ymm2,%ymm3,%ymm3
   0.09%  │ │    0x00007f9e3e790c4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.05%  │ │    0x00007f9e3e790c53:   mov    %rdx,%rdi
   0.16%  │ │    0x00007f9e3e790c56:   rorx   $0x29,%rax,%r13
   0.22%  │ │    0x00007f9e3e790c5c:   rorx   $0x12,%rax,%r14
   0.08%  │ │    0x00007f9e3e790c62:   add    (%rsp),%r8
   0.04%  │ │    0x00007f9e3e790c66:   or     %r10,%rdi
   0.16%  │ │    0x00007f9e3e790c69:   mov    %rbx,%r15
   0.24%  │ │    0x00007f9e3e790c6c:   xor    %rcx,%r15
   0.06%  │ │    0x00007f9e3e790c6f:   rorx   $0x22,%rdx,%r12
   0.04%  │ │    0x00007f9e3e790c75:   xor    %r14,%r13
   0.16%  │ │    0x00007f9e3e790c78:   rorx   $0xe,%rax,%r14
   0.19%  │ │    0x00007f9e3e790c7e:   and    %rax,%r15
   0.13%  │ │    0x00007f9e3e790c81:   add    %r8,%r11
   0.05%  │ │    0x00007f9e3e790c84:   and    %r9,%rdi
   0.15%  │ │    0x00007f9e3e790c87:   xor    %r14,%r13
   0.20%  │ │    0x00007f9e3e790c8a:   rorx   $0x27,%rdx,%r14
   0.09%  │ │    0x00007f9e3e790c90:   xor    %r12,%r14
   0.06%  │ │    0x00007f9e3e790c93:   rorx   $0x1c,%rdx,%r12
   0.15%  │ │    0x00007f9e3e790c99:   xor    %rcx,%r15
   0.19%  │ │    0x00007f9e3e790c9c:   xor    %r12,%r14
   0.08%  │ │    0x00007f9e3e790c9f:   mov    %rdx,%r12
   0.04%  │ │    0x00007f9e3e790ca2:   and    %r10,%r12
   0.17%  │ │    0x00007f9e3e790ca5:   add    %r13,%r15
   0.23%  │ │    0x00007f9e3e790ca8:   or     %r12,%rdi
   0.07%  │ │    0x00007f9e3e790cab:   add    %r14,%r8
   0.05%  │ │    0x00007f9e3e790cae:   add    %r15,%r11
   0.17%  │ │    0x00007f9e3e790cb1:   add    %r15,%r8
   0.19%  │ │    0x00007f9e3e790cb4:   add    %rdi,%r8
   0.08%  │ │    0x00007f9e3e790cb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.05%  │ │    0x00007f9e3e790cbc:   vpsllq $0x38,%ymm1,%ymm1
   0.16%  │ │    0x00007f9e3e790cc1:   vpor   %ymm2,%ymm1,%ymm1
   0.23%  │ │    0x00007f9e3e790cc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.07%  │ │    0x00007f9e3e790cca:   vpxor  %ymm1,%ymm3,%ymm1
   0.03%  │ │    0x00007f9e3e790cce:   vpaddq %ymm1,%ymm0,%ymm0
   0.16%  │ │    0x00007f9e3e790cd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.23%  │ │    0x00007f9e3e790cd8:   vpand  %ymm10,%ymm0,%ymm0
   0.08%  │ │    0x00007f9e3e790cdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.03%  │ │    0x00007f9e3e790ce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.14%  │ │    0x00007f9e3e790ce8:   mov    %r8,%rdi
   0.24%  │ │    0x00007f9e3e790ceb:   rorx   $0x29,%r11,%r13
   0.11%  │ │    0x00007f9e3e790cf1:   rorx   $0x12,%r11,%r14
   0.04%  │ │    0x00007f9e3e790cf7:   add    0x8(%rsp),%rcx
   0.17%  │ │    0x00007f9e3e790cfc:   or     %r9,%rdi
   0.25%  │ │    0x00007f9e3e790cff:   mov    %rax,%r15
   0.08%  │ │    0x00007f9e3e790d02:   xor    %rbx,%r15
   0.05%  │ │    0x00007f9e3e790d05:   rorx   $0x22,%r8,%r12
   0.15%  │ │    0x00007f9e3e790d0b:   xor    %r14,%r13
   0.25%  │ │    0x00007f9e3e790d0e:   rorx   $0xe,%r11,%r14
   0.08%  │ │    0x00007f9e3e790d14:   and    %r11,%r15
   0.04%  │ │    0x00007f9e3e790d17:   add    %rcx,%r10
   0.19%  │ │    0x00007f9e3e790d1a:   and    %rdx,%rdi
   0.26%  │ │    0x00007f9e3e790d1d:   xor    %r14,%r13
   0.08%  │ │    0x00007f9e3e790d20:   rorx   $0x27,%r8,%r14
   0.04%  │ │    0x00007f9e3e790d26:   xor    %r12,%r14
   0.17%  │ │    0x00007f9e3e790d29:   rorx   $0x1c,%r8,%r12
   0.24%  │ │    0x00007f9e3e790d2f:   xor    %rbx,%r15
   0.10%  │ │    0x00007f9e3e790d32:   xor    %r12,%r14
   0.06%  │ │    0x00007f9e3e790d35:   mov    %r8,%r12
   0.14%  │ │    0x00007f9e3e790d38:   and    %r9,%r12
   0.22%  │ │    0x00007f9e3e790d3b:   add    %r13,%r15
   0.10%  │ │    0x00007f9e3e790d3e:   or     %r12,%rdi
   0.05%  │ │    0x00007f9e3e790d41:   add    %r14,%rcx
   0.17%  │ │    0x00007f9e3e790d44:   add    %r15,%r10
   0.23%  │ │    0x00007f9e3e790d47:   add    %r15,%rcx
   0.07%  │ │    0x00007f9e3e790d4a:   add    %rdi,%rcx
   0.03%  │ │    0x00007f9e3e790d4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.17%  │ │    0x00007f9e3e790d52:   vpsllq $0x2d,%ymm2,%ymm1
   0.25%  │ │    0x00007f9e3e790d57:   vpor   %ymm1,%ymm3,%ymm3
   0.08%  │ │    0x00007f9e3e790d5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.06%  │ │    0x00007f9e3e790d5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.14%  │ │    0x00007f9e3e790d64:   vpsllq $0x3,%ymm2,%ymm1
   0.19%  │ │    0x00007f9e3e790d69:   vpor   %ymm1,%ymm3,%ymm3
   0.11%  │ │    0x00007f9e3e790d6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%  │ │    0x00007f9e3e790d71:   vpaddq %ymm8,%ymm5,%ymm5
   0.13%  │ │    0x00007f9e3e790d76:   vpsrlq $0x6,%ymm5,%ymm8
   0.29%  │ │    0x00007f9e3e790d7b:   mov    %rcx,%rdi
   0.11%  │ │    0x00007f9e3e790d7e:   rorx   $0x29,%r10,%r13
   0.05%  │ │    0x00007f9e3e790d84:   rorx   $0x12,%r10,%r14
   0.15%  │ │    0x00007f9e3e790d8a:   add    0x10(%rsp),%rbx
   0.25%  │ │    0x00007f9e3e790d8f:   or     %rdx,%rdi
   0.09%  │ │    0x00007f9e3e790d92:   mov    %r11,%r15
   0.05%  │ │    0x00007f9e3e790d95:   xor    %rax,%r15
   0.19%  │ │    0x00007f9e3e790d98:   rorx   $0x22,%rcx,%r12
   0.24%  │ │    0x00007f9e3e790d9e:   xor    %r14,%r13
   0.09%  │ │    0x00007f9e3e790da1:   rorx   $0xe,%r10,%r14
   0.03%  │ │    0x00007f9e3e790da7:   and    %r10,%r15
   0.16%  │ │    0x00007f9e3e790daa:   add    %rbx,%r9
   0.24%  │ │    0x00007f9e3e790dad:   and    %r8,%rdi
   0.08%  │ │    0x00007f9e3e790db0:   xor    %r14,%r13
   0.03%  │ │    0x00007f9e3e790db3:   rorx   $0x27,%rcx,%r14
   0.16%  │ │    0x00007f9e3e790db9:   xor    %r12,%r14
   0.24%  │ │    0x00007f9e3e790dbc:   rorx   $0x1c,%rcx,%r12
   0.08%  │ │    0x00007f9e3e790dc2:   xor    %rax,%r15
   0.05%  │ │    0x00007f9e3e790dc5:   xor    %r12,%r14
   0.13%  │ │    0x00007f9e3e790dc8:   mov    %rcx,%r12
   0.23%  │ │    0x00007f9e3e790dcb:   and    %rdx,%r12
   0.09%  │ │    0x00007f9e3e790dce:   add    %r13,%r15
   0.04%  │ │    0x00007f9e3e790dd1:   or     %r12,%rdi
   0.17%  │ │    0x00007f9e3e790dd4:   add    %r14,%rbx
   0.22%  │ │    0x00007f9e3e790dd7:   add    %r15,%r9
   0.10%  │ │    0x00007f9e3e790dda:   add    %r15,%rbx
   0.05%  │ │    0x00007f9e3e790ddd:   add    %rdi,%rbx
   0.18%  │ │    0x00007f9e3e790de0:   vpsrlq $0x13,%ymm5,%ymm3
   0.28%  │ │    0x00007f9e3e790de5:   vpsllq $0x2d,%ymm5,%ymm1
   0.10%  │ │    0x00007f9e3e790dea:   vpor   %ymm1,%ymm3,%ymm3
   0.04%  │ │    0x00007f9e3e790dee:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │    0x00007f9e3e790df2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.23%  │ │    0x00007f9e3e790df7:   vpsllq $0x3,%ymm5,%ymm1
   0.10%  │ │    0x00007f9e3e790dfc:   vpor   %ymm1,%ymm3,%ymm3
   0.05%  │ │    0x00007f9e3e790e00:   vpxor  %ymm3,%ymm8,%ymm8
   0.16%  │ │    0x00007f9e3e790e04:   vpaddq %ymm8,%ymm0,%ymm2
   0.26%  │ │    0x00007f9e3e790e09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.12%  │ │    0x00007f9e3e790e0f:   mov    %rbx,%rdi
   0.04%  │ │    0x00007f9e3e790e12:   rorx   $0x29,%r9,%r13
   0.16%  │ │    0x00007f9e3e790e18:   rorx   $0x12,%r9,%r14
   0.21%  │ │    0x00007f9e3e790e1e:   add    0x18(%rsp),%rax
   0.11%  │ │    0x00007f9e3e790e23:   or     %r8,%rdi
   0.03%  │ │    0x00007f9e3e790e26:   mov    %r10,%r15
   0.13%  │ │    0x00007f9e3e790e29:   xor    %r11,%r15
   0.21%  │ │    0x00007f9e3e790e2c:   rorx   $0x22,%rbx,%r12
   0.11%  │ │    0x00007f9e3e790e32:   xor    %r14,%r13
   0.04%  │ │    0x00007f9e3e790e35:   rorx   $0xe,%r9,%r14
   0.10%  │ │    0x00007f9e3e790e3b:   and    %r9,%r15
   0.20%  │ │    0x00007f9e3e790e3e:   add    %rax,%rdx
   0.13%  │ │    0x00007f9e3e790e41:   and    %rcx,%rdi
   0.05%  │ │    0x00007f9e3e790e44:   xor    %r14,%r13
   0.12%  │ │    0x00007f9e3e790e47:   rorx   $0x27,%rbx,%r14
   0.26%  │ │    0x00007f9e3e790e4d:   xor    %r12,%r14
   0.11%  │ │    0x00007f9e3e790e50:   rorx   $0x1c,%rbx,%r12
   0.03%  │ │    0x00007f9e3e790e56:   xor    %r11,%r15
   0.11%  │ │    0x00007f9e3e790e59:   xor    %r12,%r14
   0.23%  │ │    0x00007f9e3e790e5c:   mov    %rbx,%r12
   0.15%  │ │    0x00007f9e3e790e5f:   and    %r8,%r12
   0.03%  │ │    0x00007f9e3e790e62:   add    %r13,%r15
   0.13%  │ │    0x00007f9e3e790e65:   or     %r12,%rdi
   0.22%  │ │    0x00007f9e3e790e68:   add    %r14,%rax
   0.12%  │ │    0x00007f9e3e790e6b:   add    %r15,%rdx
   0.03%  │ │    0x00007f9e3e790e6e:   add    %r15,%rax
   0.14%  │ │    0x00007f9e3e790e71:   add    %rdi,%rax
   0.21%  │ │    0x00007f9e3e790e74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.12%  │ │    0x00007f9e3e790e79:   vmovdqu %ymm0,(%rsp)
   0.03%  │ │    0x00007f9e3e790e7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.14%  │ │    0x00007f9e3e790e84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.23%  │ │    0x00007f9e3e790e8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.20%  │ │    0x00007f9e3e790e8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.04%  │ │    0x00007f9e3e790e94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.11%  │ │    0x00007f9e3e790e9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.21%  │ │    0x00007f9e3e790e9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.12%  │ │    0x00007f9e3e790ea4:   vpor   %ymm2,%ymm3,%ymm3
   0.05%  │ │    0x00007f9e3e790ea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%  │ │    0x00007f9e3e790ead:   mov    %rax,%rdi
   0.20%  │ │    0x00007f9e3e790eb0:   rorx   $0x29,%rdx,%r13
   0.14%  │ │    0x00007f9e3e790eb6:   rorx   $0x12,%rdx,%r14
   0.05%  │ │    0x00007f9e3e790ebc:   add    (%rsp),%r11
   0.14%  │ │    0x00007f9e3e790ec0:   or     %rcx,%rdi
   0.16%  │ │    0x00007f9e3e790ec3:   mov    %r9,%r15
   0.19%  │ │    0x00007f9e3e790ec6:   xor    %r10,%r15
   0.05%  │ │    0x00007f9e3e790ec9:   rorx   $0x22,%rax,%r12
   0.11%  │ │    0x00007f9e3e790ecf:   xor    %r14,%r13
   0.19%  │ │    0x00007f9e3e790ed2:   rorx   $0xe,%rdx,%r14
   0.15%  │ │    0x00007f9e3e790ed8:   and    %rdx,%r15
   0.04%  │ │    0x00007f9e3e790edb:   add    %r11,%r8
   0.10%  │ │    0x00007f9e3e790ede:   and    %rbx,%rdi
   0.17%  │ │    0x00007f9e3e790ee1:   xor    %r14,%r13
   0.18%  │ │    0x00007f9e3e790ee4:   rorx   $0x27,%rax,%r14
   0.04%  │ │    0x00007f9e3e790eea:   xor    %r12,%r14
   0.13%  │ │    0x00007f9e3e790eed:   rorx   $0x1c,%rax,%r12
   0.20%  │ │    0x00007f9e3e790ef3:   xor    %r10,%r15
   0.17%  │ │    0x00007f9e3e790ef6:   xor    %r12,%r14
   0.06%  │ │    0x00007f9e3e790ef9:   mov    %rax,%r12
   0.09%  │ │    0x00007f9e3e790efc:   and    %rcx,%r12
   0.20%  │ │    0x00007f9e3e790eff:   add    %r13,%r15
   0.17%  │ │    0x00007f9e3e790f02:   or     %r12,%rdi
   0.06%  │ │    0x00007f9e3e790f05:   add    %r14,%r11
   0.15%  │ │    0x00007f9e3e790f08:   add    %r15,%r8
   0.19%  │ │    0x00007f9e3e790f0b:   add    %r15,%r11
   0.15%  │ │    0x00007f9e3e790f0e:   add    %rdi,%r11
   0.05%  │ │    0x00007f9e3e790f11:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%  │ │    0x00007f9e3e790f16:   vpsllq $0x38,%ymm1,%ymm1
   0.22%  │ │    0x00007f9e3e790f1b:   vpor   %ymm2,%ymm1,%ymm1
   0.13%  │ │    0x00007f9e3e790f1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.06%  │ │    0x00007f9e3e790f24:   vpxor  %ymm1,%ymm3,%ymm1
   0.11%  │ │    0x00007f9e3e790f28:   vpaddq %ymm1,%ymm0,%ymm0
   0.19%  │ │    0x00007f9e3e790f2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.15%  │ │    0x00007f9e3e790f32:   vpand  %ymm10,%ymm0,%ymm0
   0.04%  │ │    0x00007f9e3e790f37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.13%  │ │    0x00007f9e3e790f3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.19%  │ │    0x00007f9e3e790f42:   mov    %r11,%rdi
   0.12%  │ │    0x00007f9e3e790f45:   rorx   $0x29,%r8,%r13
   0.06%  │ │    0x00007f9e3e790f4b:   rorx   $0x12,%r8,%r14
   0.16%  │ │    0x00007f9e3e790f51:   add    0x8(%rsp),%r10
   0.20%  │ │    0x00007f9e3e790f56:   or     %rbx,%rdi
   0.15%  │ │    0x00007f9e3e790f59:   mov    %rdx,%r15
   0.04%  │ │    0x00007f9e3e790f5c:   xor    %r9,%r15
   0.12%  │ │    0x00007f9e3e790f5f:   rorx   $0x22,%r11,%r12
   0.21%  │ │    0x00007f9e3e790f65:   xor    %r14,%r13
   0.15%  │ │    0x00007f9e3e790f68:   rorx   $0xe,%r8,%r14
   0.03%  │ │    0x00007f9e3e790f6e:   and    %r8,%r15
   0.11%  │ │    0x00007f9e3e790f71:   add    %r10,%rcx
   0.22%  │ │    0x00007f9e3e790f74:   and    %rax,%rdi
   0.18%  │ │    0x00007f9e3e790f77:   xor    %r14,%r13
   0.04%  │ │    0x00007f9e3e790f7a:   rorx   $0x27,%r11,%r14
   0.11%  │ │    0x00007f9e3e790f80:   xor    %r12,%r14
   0.18%  │ │    0x00007f9e3e790f83:   rorx   $0x1c,%r11,%r12
   0.15%  │ │    0x00007f9e3e790f89:   xor    %r9,%r15
   0.05%  │ │    0x00007f9e3e790f8c:   xor    %r12,%r14
   0.12%  │ │    0x00007f9e3e790f8f:   mov    %r11,%r12
   0.20%  │ │    0x00007f9e3e790f92:   and    %rbx,%r12
   0.16%  │ │    0x00007f9e3e790f95:   add    %r13,%r15
   0.06%  │ │    0x00007f9e3e790f98:   or     %r12,%rdi
   0.13%  │ │    0x00007f9e3e790f9b:   add    %r14,%r10
   0.17%  │ │    0x00007f9e3e790f9e:   add    %r15,%rcx
   0.14%  │ │    0x00007f9e3e790fa1:   add    %r15,%r10
   0.05%  │ │    0x00007f9e3e790fa4:   add    %rdi,%r10
   0.12%  │ │    0x00007f9e3e790fa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.19%  │ │    0x00007f9e3e790fac:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%  │ │    0x00007f9e3e790fb1:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │    0x00007f9e3e790fb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │    0x00007f9e3e790fb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.19%  │ │    0x00007f9e3e790fbe:   vpsllq $0x3,%ymm2,%ymm1
   0.14%  │ │    0x00007f9e3e790fc3:   vpor   %ymm1,%ymm3,%ymm3
   0.06%  │ │    0x00007f9e3e790fc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.13%  │ │    0x00007f9e3e790fcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.17%  │ │    0x00007f9e3e790fd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%  │ │    0x00007f9e3e790fd5:   mov    %r10,%rdi
   0.06%  │ │    0x00007f9e3e790fd8:   rorx   $0x29,%rcx,%r13
   0.11%  │ │    0x00007f9e3e790fde:   rorx   $0x12,%rcx,%r14
   0.17%  │ │    0x00007f9e3e790fe4:   add    0x10(%rsp),%r9
   0.19%  │ │    0x00007f9e3e790fe9:   or     %rax,%rdi
   0.06%  │ │    0x00007f9e3e790fec:   mov    %r8,%r15
   0.13%  │ │    0x00007f9e3e790fef:   xor    %rdx,%r15
   0.17%  │ │    0x00007f9e3e790ff2:   rorx   $0x22,%r10,%r12
   0.19%  │ │    0x00007f9e3e790ff8:   xor    %r14,%r13
   0.06%  │ │    0x00007f9e3e790ffb:   rorx   $0xe,%rcx,%r14
   0.11%  │ │    0x00007f9e3e791001:   and    %rcx,%r15
   0.18%  │ │    0x00007f9e3e791004:   add    %r9,%rbx
   0.14%  │ │    0x00007f9e3e791007:   and    %r11,%rdi
   0.04%  │ │    0x00007f9e3e79100a:   xor    %r14,%r13
   0.11%  │ │    0x00007f9e3e79100d:   rorx   $0x27,%r10,%r14
   0.17%  │ │    0x00007f9e3e791013:   xor    %r12,%r14
   0.13%  │ │    0x00007f9e3e791016:   rorx   $0x1c,%r10,%r12
   0.06%  │ │    0x00007f9e3e79101c:   xor    %rdx,%r15
   0.14%  │ │    0x00007f9e3e79101f:   xor    %r12,%r14
   0.17%  │ │    0x00007f9e3e791022:   mov    %r10,%r12
   0.17%  │ │    0x00007f9e3e791025:   and    %rax,%r12
   0.04%  │ │    0x00007f9e3e791028:   add    %r13,%r15
   0.10%  │ │    0x00007f9e3e79102b:   or     %r12,%rdi
   0.20%  │ │    0x00007f9e3e79102e:   add    %r14,%r9
   0.15%  │ │    0x00007f9e3e791031:   add    %r15,%rbx
   0.06%  │ │    0x00007f9e3e791034:   add    %r15,%r9
   0.12%  │ │    0x00007f9e3e791037:   add    %rdi,%r9
   0.18%  │ │    0x00007f9e3e79103a:   vpsrlq $0x13,%ymm6,%ymm3
   0.17%  │ │    0x00007f9e3e79103f:   vpsllq $0x2d,%ymm6,%ymm1
   0.06%  │ │    0x00007f9e3e791044:   vpor   %ymm1,%ymm3,%ymm3
   0.11%  │ │    0x00007f9e3e791048:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%  │ │    0x00007f9e3e79104c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.19%  │ │    0x00007f9e3e791051:   vpsllq $0x3,%ymm6,%ymm1
   0.06%  │ │    0x00007f9e3e791056:   vpor   %ymm1,%ymm3,%ymm3
   0.16%  │ │    0x00007f9e3e79105a:   vpxor  %ymm3,%ymm8,%ymm8
   0.14%  │ │    0x00007f9e3e79105e:   vpaddq %ymm8,%ymm0,%ymm2
   0.19%  │ │    0x00007f9e3e791063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.17%  │ │    0x00007f9e3e791069:   mov    %r9,%rdi
   0.11%  │ │    0x00007f9e3e79106c:   rorx   $0x29,%rbx,%r13
   0.12%  │ │    0x00007f9e3e791072:   rorx   $0x12,%rbx,%r14
   0.11%  │ │    0x00007f9e3e791078:   add    0x18(%rsp),%rdx
   0.10%  │ │    0x00007f9e3e79107d:   or     %r11,%rdi
   0.11%  │ │    0x00007f9e3e791080:   mov    %rcx,%r15
   0.14%  │ │    0x00007f9e3e791083:   xor    %r8,%r15
   0.14%  │ │    0x00007f9e3e791086:   rorx   $0x22,%r9,%r12
   0.10%  │ │    0x00007f9e3e79108c:   xor    %r14,%r13
   0.08%  │ │    0x00007f9e3e79108f:   rorx   $0xe,%rbx,%r14
   0.15%  │ │    0x00007f9e3e791095:   and    %rbx,%r15
   0.16%  │ │    0x00007f9e3e791098:   add    %rdx,%rax
   0.10%  │ │    0x00007f9e3e79109b:   and    %r10,%rdi
   0.12%  │ │    0x00007f9e3e79109e:   xor    %r14,%r13
   0.15%  │ │    0x00007f9e3e7910a1:   rorx   $0x27,%r9,%r14
   0.15%  │ │    0x00007f9e3e7910a7:   xor    %r12,%r14
   0.09%  │ │    0x00007f9e3e7910aa:   rorx   $0x1c,%r9,%r12
   0.13%  │ │    0x00007f9e3e7910b0:   xor    %r8,%r15
   0.13%  │ │    0x00007f9e3e7910b3:   xor    %r12,%r14
   0.15%  │ │    0x00007f9e3e7910b6:   mov    %r9,%r12
   0.13%  │ │    0x00007f9e3e7910b9:   and    %r11,%r12
   0.11%  │ │    0x00007f9e3e7910bc:   add    %r13,%r15
   0.12%  │ │    0x00007f9e3e7910bf:   or     %r12,%rdi
   0.12%  │ │    0x00007f9e3e7910c2:   add    %r14,%rdx
   0.13%  │ │    0x00007f9e3e7910c5:   add    %r15,%rax
   0.11%  │ │    0x00007f9e3e7910c8:   add    %r15,%rdx
   0.13%  │ │    0x00007f9e3e7910cb:   add    %rdi,%rdx
   0.12%  │ │    0x00007f9e3e7910ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.13%  │ │    0x00007f9e3e7910d3:   vmovdqu %ymm0,(%rsp)
   0.11%  │ │    0x00007f9e3e7910d8:   add    $0x80,%rbp
   0.14%  │ │    0x00007f9e3e7910df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.15%  │ │    0x00007f9e3e7910e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.12%  │ │    0x00007f9e3e7910eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.23%  │ │    0x00007f9e3e7910ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.13%  │ │    0x00007f9e3e7910f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.16%  │ │    0x00007f9e3e7910fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.12%  │ │    0x00007f9e3e791100:   vpsllq $0x3f,%ymm1,%ymm3
   0.18%  │ │    0x00007f9e3e791105:   vpor   %ymm2,%ymm3,%ymm3
   0.16%  │ │    0x00007f9e3e791109:   vpsrlq $0x7,%ymm1,%ymm8
   0.11%  │ │    0x00007f9e3e79110e:   mov    %rdx,%rdi
   0.08%  │ │    0x00007f9e3e791111:   rorx   $0x29,%rax,%r13
   0.15%  │ │    0x00007f9e3e791117:   rorx   $0x12,%rax,%r14
   0.13%  │ │    0x00007f9e3e79111d:   add    (%rsp),%r8
   0.11%  │ │    0x00007f9e3e791121:   or     %r10,%rdi
   0.11%  │ │    0x00007f9e3e791124:   mov    %rbx,%r15
   0.15%  │ │    0x00007f9e3e791127:   xor    %rcx,%r15
   0.19%  │ │    0x00007f9e3e79112a:   rorx   $0x22,%rdx,%r12
   0.13%  │ │    0x00007f9e3e791130:   xor    %r14,%r13
   0.13%  │ │    0x00007f9e3e791133:   rorx   $0xe,%rax,%r14
   0.14%  │ │    0x00007f9e3e791139:   and    %rax,%r15
   0.11%  │ │    0x00007f9e3e79113c:   add    %r8,%r11
   0.07%  │ │    0x00007f9e3e79113f:   and    %r9,%rdi
   0.10%  │ │    0x00007f9e3e791142:   xor    %r14,%r13
   0.16%  │ │    0x00007f9e3e791145:   rorx   $0x27,%rdx,%r14
   0.16%  │ │    0x00007f9e3e79114b:   xor    %r12,%r14
   0.11%  │ │    0x00007f9e3e79114e:   rorx   $0x1c,%rdx,%r12
   0.08%  │ │    0x00007f9e3e791154:   xor    %rcx,%r15
   0.13%  │ │    0x00007f9e3e791157:   xor    %r12,%r14
   0.15%  │ │    0x00007f9e3e79115a:   mov    %rdx,%r12
   0.10%  │ │    0x00007f9e3e79115d:   and    %r10,%r12
   0.09%  │ │    0x00007f9e3e791160:   add    %r13,%r15
   0.15%  │ │    0x00007f9e3e791163:   or     %r12,%rdi
   0.19%  │ │    0x00007f9e3e791166:   add    %r14,%r8
   0.12%  │ │    0x00007f9e3e791169:   add    %r15,%r11
   0.08%  │ │    0x00007f9e3e79116c:   add    %r15,%r8
   0.14%  │ │    0x00007f9e3e79116f:   add    %rdi,%r8
   0.12%  │ │    0x00007f9e3e791172:   vpsrlq $0x8,%ymm1,%ymm2
   0.13%  │ │    0x00007f9e3e791177:   vpsllq $0x38,%ymm1,%ymm1
   0.10%  │ │    0x00007f9e3e79117c:   vpor   %ymm2,%ymm1,%ymm1
   0.19%  │ │    0x00007f9e3e791180:   vpxor  %ymm8,%ymm3,%ymm3
   0.15%  │ │    0x00007f9e3e791185:   vpxor  %ymm1,%ymm3,%ymm1
   0.12%  │ │    0x00007f9e3e791189:   vpaddq %ymm1,%ymm0,%ymm0
   0.11%  │ │    0x00007f9e3e79118d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.15%  │ │    0x00007f9e3e791193:   vpand  %ymm10,%ymm0,%ymm0
   0.15%  │ │    0x00007f9e3e791198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.14%  │ │    0x00007f9e3e79119e:   vpsrlq $0x6,%ymm2,%ymm8
   0.09%  │ │    0x00007f9e3e7911a3:   mov    %r8,%rdi
   0.13%  │ │    0x00007f9e3e7911a6:   rorx   $0x29,%r11,%r13
   0.18%  │ │    0x00007f9e3e7911ac:   rorx   $0x12,%r11,%r14
   0.08%  │ │    0x00007f9e3e7911b2:   add    0x8(%rsp),%rcx
   0.11%  │ │    0x00007f9e3e7911b7:   or     %r9,%rdi
   0.13%  │ │    0x00007f9e3e7911ba:   mov    %rax,%r15
   0.14%  │ │    0x00007f9e3e7911bd:   xor    %rbx,%r15
   0.12%  │ │    0x00007f9e3e7911c0:   rorx   $0x22,%r8,%r12
   0.09%  │ │    0x00007f9e3e7911c6:   xor    %r14,%r13
   0.17%  │ │    0x00007f9e3e7911c9:   rorx   $0xe,%r11,%r14
   0.12%  │ │    0x00007f9e3e7911cf:   and    %r11,%r15
   0.10%  │ │    0x00007f9e3e7911d2:   add    %rcx,%r10
   0.11%  │ │    0x00007f9e3e7911d5:   and    %rdx,%rdi
   0.14%  │ │    0x00007f9e3e7911d8:   xor    %r14,%r13
   0.14%  │ │    0x00007f9e3e7911db:   rorx   $0x27,%r8,%r14
   0.11%  │ │    0x00007f9e3e7911e1:   xor    %r12,%r14
   0.09%  │ │    0x00007f9e3e7911e4:   rorx   $0x1c,%r8,%r12
   0.10%  │ │    0x00007f9e3e7911ea:   xor    %rbx,%r15
   0.18%  │ │    0x00007f9e3e7911ed:   xor    %r12,%r14
   0.13%  │ │    0x00007f9e3e7911f0:   mov    %r8,%r12
   0.08%  │ │    0x00007f9e3e7911f3:   and    %r9,%r12
   0.15%  │ │    0x00007f9e3e7911f6:   add    %r13,%r15
   0.15%  │ │    0x00007f9e3e7911f9:   or     %r12,%rdi
   0.11%  │ │    0x00007f9e3e7911fc:   add    %r14,%rcx
   0.10%  │ │    0x00007f9e3e7911ff:   add    %r15,%r10
   0.15%  │ │    0x00007f9e3e791202:   add    %r15,%rcx
   0.14%  │ │    0x00007f9e3e791205:   add    %rdi,%rcx
   0.12%  │ │    0x00007f9e3e791208:   vpsrlq $0x13,%ymm2,%ymm3
   0.07%  │ │    0x00007f9e3e79120d:   vpsllq $0x2d,%ymm2,%ymm1
   0.15%  │ │    0x00007f9e3e791212:   vpor   %ymm1,%ymm3,%ymm3
   0.15%  │ │    0x00007f9e3e791216:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f9e3e79121a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.11%  │ │    0x00007f9e3e79121f:   vpsllq $0x3,%ymm2,%ymm1
   0.14%  │ │    0x00007f9e3e791224:   vpor   %ymm1,%ymm3,%ymm3
   0.20%  │ │    0x00007f9e3e791228:   vpxor  %ymm3,%ymm8,%ymm8
   0.12%  │ │    0x00007f9e3e79122c:   vpaddq %ymm8,%ymm7,%ymm7
   0.08%  │ │    0x00007f9e3e791231:   vpsrlq $0x6,%ymm7,%ymm8
   0.19%  │ │    0x00007f9e3e791236:   mov    %rcx,%rdi
   0.17%  │ │    0x00007f9e3e791239:   rorx   $0x29,%r10,%r13
   0.11%  │ │    0x00007f9e3e79123f:   rorx   $0x12,%r10,%r14
   0.12%  │ │    0x00007f9e3e791245:   add    0x10(%rsp),%rbx
   0.15%  │ │    0x00007f9e3e79124a:   or     %rdx,%rdi
   0.12%  │ │    0x00007f9e3e79124d:   mov    %r11,%r15
   0.12%  │ │    0x00007f9e3e791250:   xor    %rax,%r15
   0.09%  │ │    0x00007f9e3e791253:   rorx   $0x22,%rcx,%r12
   0.19%  │ │    0x00007f9e3e791259:   xor    %r14,%r13
   0.14%  │ │    0x00007f9e3e79125c:   rorx   $0xe,%r10,%r14
   0.10%  │ │    0x00007f9e3e791262:   and    %r10,%r15
   0.09%  │ │    0x00007f9e3e791265:   add    %rbx,%r9
   0.18%  │ │    0x00007f9e3e791268:   and    %r8,%rdi
   0.15%  │ │    0x00007f9e3e79126b:   xor    %r14,%r13
   0.13%  │ │    0x00007f9e3e79126e:   rorx   $0x27,%rcx,%r14
   0.07%  │ │    0x00007f9e3e791274:   xor    %r12,%r14
   0.17%  │ │    0x00007f9e3e791277:   rorx   $0x1c,%rcx,%r12
   0.14%  │ │    0x00007f9e3e79127d:   xor    %rax,%r15
   0.10%  │ │    0x00007f9e3e791280:   xor    %r12,%r14
   0.08%  │ │    0x00007f9e3e791283:   mov    %rcx,%r12
   0.18%  │ │    0x00007f9e3e791286:   and    %rdx,%r12
   0.15%  │ │    0x00007f9e3e791289:   add    %r13,%r15
   0.10%  │ │    0x00007f9e3e79128c:   or     %r12,%rdi
   0.09%  │ │    0x00007f9e3e79128f:   add    %r14,%rbx
   0.21%  │ │    0x00007f9e3e791292:   add    %r15,%r9
   0.13%  │ │    0x00007f9e3e791295:   add    %r15,%rbx
   0.12%  │ │    0x00007f9e3e791298:   add    %rdi,%rbx
   0.12%  │ │    0x00007f9e3e79129b:   vpsrlq $0x13,%ymm7,%ymm3
   0.14%  │ │    0x00007f9e3e7912a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.17%  │ │    0x00007f9e3e7912a5:   vpor   %ymm1,%ymm3,%ymm3
   0.10%  │ │    0x00007f9e3e7912a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%  │ │    0x00007f9e3e7912ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.19%  │ │    0x00007f9e3e7912b2:   vpsllq $0x3,%ymm7,%ymm1
   0.15%  │ │    0x00007f9e3e7912b7:   vpor   %ymm1,%ymm3,%ymm3
   0.13%  │ │    0x00007f9e3e7912bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.09%  │ │    0x00007f9e3e7912bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.17%  │ │    0x00007f9e3e7912c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.26%  │ │    0x00007f9e3e7912ca:   mov    %rbx,%rdi
   0.12%  │ │    0x00007f9e3e7912cd:   rorx   $0x29,%r9,%r13
   0.07%  │ │    0x00007f9e3e7912d3:   rorx   $0x12,%r9,%r14
   0.16%  │ │    0x00007f9e3e7912d9:   add    0x18(%rsp),%rax
   0.21%  │ │    0x00007f9e3e7912de:   or     %r8,%rdi
   0.08%  │ │    0x00007f9e3e7912e1:   mov    %r10,%r15
   0.08%  │ │    0x00007f9e3e7912e4:   xor    %r11,%r15
   0.16%  │ │    0x00007f9e3e7912e7:   rorx   $0x22,%rbx,%r12
   0.23%  │ │    0x00007f9e3e7912ed:   xor    %r14,%r13
   0.12%  │ │    0x00007f9e3e7912f0:   rorx   $0xe,%r9,%r14
   0.06%  │ │    0x00007f9e3e7912f6:   and    %r9,%r15
   0.13%  │ │    0x00007f9e3e7912f9:   add    %rax,%rdx
   0.18%  │ │    0x00007f9e3e7912fc:   and    %rcx,%rdi
   0.09%  │ │    0x00007f9e3e7912ff:   xor    %r14,%r13
   0.09%  │ │    0x00007f9e3e791302:   rorx   $0x27,%rbx,%r14
   0.15%  │ │    0x00007f9e3e791308:   xor    %r12,%r14
   0.18%  │ │    0x00007f9e3e79130b:   rorx   $0x1c,%rbx,%r12
   0.13%  │ │    0x00007f9e3e791311:   xor    %r11,%r15
   0.06%  │ │    0x00007f9e3e791314:   xor    %r12,%r14
   0.12%  │ │    0x00007f9e3e791317:   mov    %rbx,%r12
   0.20%  │ │    0x00007f9e3e79131a:   and    %r8,%r12
   0.11%  │ │    0x00007f9e3e79131d:   add    %r13,%r15
   0.07%  │ │    0x00007f9e3e791320:   or     %r12,%rdi
   0.16%  │ │    0x00007f9e3e791323:   add    %r14,%rax
   0.19%  │ │    0x00007f9e3e791326:   add    %r15,%rdx
   0.09%  │ │    0x00007f9e3e791329:   add    %r15,%rax
   0.08%  │ │    0x00007f9e3e79132c:   add    %rdi,%rax
   0.10%  │ │    0x00007f9e3e79132f:   subq   $0x1,0x20(%rsp)
   0.27%  ╰ │    0x00007f9e3e791335:   jne    0x00007f9e3e7909c0
   0.03%    │    0x00007f9e3e79133b:   movq   $0x2,0x20(%rsp)
   0.06%   ↗│    0x00007f9e3e791344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.06%   ││    0x00007f9e3e791349:   vmovdqu %ymm0,(%rsp)
   0.03%   ││    0x00007f9e3e79134e:   mov    %r9,%r15
   0.09%   ││    0x00007f9e3e791351:   rorx   $0x29,%rdx,%r13
   0.08%   ││    0x00007f9e3e791357:   rorx   $0x12,%rdx,%r14
   0.05%   ││    0x00007f9e3e79135d:   xor    %r10,%r15
   0.07%   ││    0x00007f9e3e791360:   xor    %r14,%r13
   0.06%   ││    0x00007f9e3e791363:   rorx   $0xe,%rdx,%r14
   0.03%   ││    0x00007f9e3e791369:   and    %rdx,%r15
   0.08%   ││    0x00007f9e3e79136c:   xor    %r14,%r13
   0.05%   ││    0x00007f9e3e79136f:   rorx   $0x22,%rax,%r12
   0.08%   ││    0x00007f9e3e791375:   xor    %r10,%r15
   0.06%   ││    0x00007f9e3e791378:   rorx   $0x27,%rax,%r14
   0.06%   ││    0x00007f9e3e79137e:   mov    %rax,%rdi
   0.07%   ││    0x00007f9e3e791381:   xor    %r12,%r14
   0.07%   ││    0x00007f9e3e791384:   rorx   $0x1c,%rax,%r12
   0.04%   ││    0x00007f9e3e79138a:   add    (%rsp),%r11
   0.06%   ││    0x00007f9e3e79138e:   or     %rcx,%rdi
   0.07%   ││    0x00007f9e3e791391:   xor    %r12,%r14
   0.09%   ││    0x00007f9e3e791394:   mov    %rax,%r12
   0.05%   ││    0x00007f9e3e791397:   and    %rbx,%rdi
   0.06%   ││    0x00007f9e3e79139a:   and    %rcx,%r12
   0.06%   ││    0x00007f9e3e79139d:   add    %r13,%r15
   0.08%   ││    0x00007f9e3e7913a0:   add    %r11,%r8
   0.06%   ││    0x00007f9e3e7913a3:   or     %r12,%rdi
   0.07%   ││    0x00007f9e3e7913a6:   add    %r14,%r11
   0.07%   ││    0x00007f9e3e7913a9:   add    %r15,%r8
   0.06%   ││    0x00007f9e3e7913ac:   add    %r15,%r11
   0.06%   ││    0x00007f9e3e7913af:   mov    %rdx,%r15
   0.05%   ││    0x00007f9e3e7913b2:   rorx   $0x29,%r8,%r13
   0.05%   ││    0x00007f9e3e7913b8:   rorx   $0x12,%r8,%r14
   0.09%   ││    0x00007f9e3e7913be:   xor    %r9,%r15
   0.06%   ││    0x00007f9e3e7913c1:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e7913c4:   rorx   $0xe,%r8,%r14
   0.08%   ││    0x00007f9e3e7913ca:   and    %r8,%r15
   0.06%   ││    0x00007f9e3e7913cd:   add    %rdi,%r11
   0.04%   ││    0x00007f9e3e7913d0:   xor    %r14,%r13
   0.06%   ││    0x00007f9e3e7913d3:   rorx   $0x22,%r11,%r12
   0.05%   ││    0x00007f9e3e7913d9:   xor    %r9,%r15
   0.09%   ││    0x00007f9e3e7913dc:   rorx   $0x27,%r11,%r14
   0.05%   ││    0x00007f9e3e7913e2:   mov    %r11,%rdi
   0.08%   ││    0x00007f9e3e7913e5:   xor    %r12,%r14
   0.08%   ││    0x00007f9e3e7913e8:   rorx   $0x1c,%r11,%r12
   0.07%   ││    0x00007f9e3e7913ee:   add    0x8(%rsp),%r10
   0.06%   ││    0x00007f9e3e7913f3:   or     %rbx,%rdi
   0.07%   ││    0x00007f9e3e7913f6:   xor    %r12,%r14
   0.05%   ││    0x00007f9e3e7913f9:   mov    %r11,%r12
   0.07%   ││    0x00007f9e3e7913fc:   and    %rax,%rdi
   0.04%   ││    0x00007f9e3e7913ff:   and    %rbx,%r12
   0.06%   ││    0x00007f9e3e791402:   add    %r13,%r15
   0.06%   ││    0x00007f9e3e791405:   add    %r10,%rcx
   0.05%   ││    0x00007f9e3e791408:   or     %r12,%rdi
   0.04%   ││    0x00007f9e3e79140b:   add    %r14,%r10
   0.07%   ││    0x00007f9e3e79140e:   add    %r15,%rcx
   0.05%   ││    0x00007f9e3e791411:   add    %r15,%r10
   0.05%   ││    0x00007f9e3e791414:   mov    %r8,%r15
   0.06%   ││    0x00007f9e3e791417:   rorx   $0x29,%rcx,%r13
   0.06%   ││    0x00007f9e3e79141d:   rorx   $0x12,%rcx,%r14
   0.08%   ││    0x00007f9e3e791423:   xor    %rdx,%r15
   0.06%   ││    0x00007f9e3e791426:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e791429:   rorx   $0xe,%rcx,%r14
   0.09%   ││    0x00007f9e3e79142f:   and    %rcx,%r15
   0.06%   ││    0x00007f9e3e791432:   add    %rdi,%r10
   0.06%   ││    0x00007f9e3e791435:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e791438:   rorx   $0x22,%r10,%r12
   0.07%   ││    0x00007f9e3e79143e:   xor    %rdx,%r15
   0.08%   ││    0x00007f9e3e791441:   rorx   $0x27,%r10,%r14
   0.07%   ││    0x00007f9e3e791447:   mov    %r10,%rdi
   0.07%   ││    0x00007f9e3e79144a:   xor    %r12,%r14
   0.06%   ││    0x00007f9e3e79144d:   rorx   $0x1c,%r10,%r12
   0.06%   ││    0x00007f9e3e791453:   add    0x10(%rsp),%r9
   0.05%   ││    0x00007f9e3e791458:   or     %rax,%rdi
   0.05%   ││    0x00007f9e3e79145b:   xor    %r12,%r14
   0.06%   ││    0x00007f9e3e79145e:   mov    %r10,%r12
   0.06%   ││    0x00007f9e3e791461:   and    %r11,%rdi
   0.07%   ││    0x00007f9e3e791464:   and    %rax,%r12
   0.06%   ││    0x00007f9e3e791467:   add    %r13,%r15
   0.06%   ││    0x00007f9e3e79146a:   add    %r9,%rbx
   0.07%   ││    0x00007f9e3e79146d:   or     %r12,%rdi
   0.06%   ││    0x00007f9e3e791470:   add    %r14,%r9
   0.06%   ││    0x00007f9e3e791473:   add    %r15,%rbx
   0.09%   ││    0x00007f9e3e791476:   add    %r15,%r9
   0.07%   ││    0x00007f9e3e791479:   mov    %rcx,%r15
   0.06%   ││    0x00007f9e3e79147c:   rorx   $0x29,%rbx,%r13
   0.08%   ││    0x00007f9e3e791482:   rorx   $0x12,%rbx,%r14
   0.08%   ││    0x00007f9e3e791488:   xor    %r8,%r15
   0.03%   ││    0x00007f9e3e79148b:   xor    %r14,%r13
   0.08%   ││    0x00007f9e3e79148e:   rorx   $0xe,%rbx,%r14
   0.04%   ││    0x00007f9e3e791494:   and    %rbx,%r15
   0.08%   ││    0x00007f9e3e791497:   add    %rdi,%r9
   0.04%   ││    0x00007f9e3e79149a:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e79149d:   rorx   $0x22,%r9,%r12
   0.06%   ││    0x00007f9e3e7914a3:   xor    %r8,%r15
   0.08%   ││    0x00007f9e3e7914a6:   rorx   $0x27,%r9,%r14
   0.06%   ││    0x00007f9e3e7914ac:   mov    %r9,%rdi
   0.06%   ││    0x00007f9e3e7914af:   xor    %r12,%r14
   0.05%   ││    0x00007f9e3e7914b2:   rorx   $0x1c,%r9,%r12
   0.08%   ││    0x00007f9e3e7914b8:   add    0x18(%rsp),%rdx
   0.06%   ││    0x00007f9e3e7914bd:   or     %r11,%rdi
   0.05%   ││    0x00007f9e3e7914c0:   xor    %r12,%r14
   0.06%   ││    0x00007f9e3e7914c3:   mov    %r9,%r12
   0.09%   ││    0x00007f9e3e7914c6:   and    %r10,%rdi
   0.05%   ││    0x00007f9e3e7914c9:   and    %r11,%r12
   0.06%   ││    0x00007f9e3e7914cc:   add    %r13,%r15
   0.09%   ││    0x00007f9e3e7914cf:   add    %rdx,%rax
   0.09%   ││    0x00007f9e3e7914d2:   or     %r12,%rdi
   0.05%   ││    0x00007f9e3e7914d5:   add    %r14,%rdx
   0.06%   ││    0x00007f9e3e7914d8:   add    %r15,%rax
   0.06%   ││    0x00007f9e3e7914db:   add    %r15,%rdx
   0.07%   ││    0x00007f9e3e7914de:   add    %rdi,%rdx
   0.09%   ││    0x00007f9e3e7914e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.04%   ││    0x00007f9e3e7914e6:   vmovdqu %ymm0,(%rsp)
   0.06%   ││    0x00007f9e3e7914eb:   add    $0x40,%rbp
   0.05%   ││    0x00007f9e3e7914ef:   mov    %rbx,%r15
   0.07%   ││    0x00007f9e3e7914f2:   rorx   $0x29,%rax,%r13
   0.06%   ││    0x00007f9e3e7914f8:   rorx   $0x12,%rax,%r14
   0.04%   ││    0x00007f9e3e7914fe:   xor    %rcx,%r15
   0.07%   ││    0x00007f9e3e791501:   xor    %r14,%r13
   0.12%   ││    0x00007f9e3e791504:   rorx   $0xe,%rax,%r14
   0.08%   ││    0x00007f9e3e79150a:   and    %rax,%r15
   0.04%   ││    0x00007f9e3e79150d:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e791510:   rorx   $0x22,%rdx,%r12
   0.11%   ││    0x00007f9e3e791516:   xor    %rcx,%r15
   0.06%   ││    0x00007f9e3e791519:   rorx   $0x27,%rdx,%r14
   0.05%   ││    0x00007f9e3e79151f:   mov    %rdx,%rdi
   0.08%   ││    0x00007f9e3e791522:   xor    %r12,%r14
   0.08%   ││    0x00007f9e3e791525:   rorx   $0x1c,%rdx,%r12
   0.06%   ││    0x00007f9e3e79152b:   add    (%rsp),%r8
   0.04%   ││    0x00007f9e3e79152f:   or     %r10,%rdi
   0.06%   ││    0x00007f9e3e791532:   xor    %r12,%r14
   0.11%   ││    0x00007f9e3e791535:   mov    %rdx,%r12
   0.04%   ││    0x00007f9e3e791538:   and    %r9,%rdi
   0.05%   ││    0x00007f9e3e79153b:   and    %r10,%r12
   0.06%   ││    0x00007f9e3e79153e:   add    %r13,%r15
   0.09%   ││    0x00007f9e3e791541:   add    %r8,%r11
   0.06%   ││    0x00007f9e3e791544:   or     %r12,%rdi
   0.05%   ││    0x00007f9e3e791547:   add    %r14,%r8
   0.06%   ││    0x00007f9e3e79154a:   add    %r15,%r11
   0.10%   ││    0x00007f9e3e79154d:   add    %r15,%r8
   0.06%   ││    0x00007f9e3e791550:   mov    %rax,%r15
   0.05%   ││    0x00007f9e3e791553:   rorx   $0x29,%r11,%r13
   0.09%   ││    0x00007f9e3e791559:   rorx   $0x12,%r11,%r14
   0.08%   ││    0x00007f9e3e79155f:   xor    %rbx,%r15
   0.05%   ││    0x00007f9e3e791562:   xor    %r14,%r13
   0.05%   ││    0x00007f9e3e791565:   rorx   $0xe,%r11,%r14
   0.09%   ││    0x00007f9e3e79156b:   and    %r11,%r15
   0.09%   ││    0x00007f9e3e79156e:   add    %rdi,%r8
   0.05%   ││    0x00007f9e3e791571:   xor    %r14,%r13
   0.05%   ││    0x00007f9e3e791574:   rorx   $0x22,%r8,%r12
   0.06%   ││    0x00007f9e3e79157a:   xor    %rbx,%r15
   0.11%   ││    0x00007f9e3e79157d:   rorx   $0x27,%r8,%r14
   0.06%   ││    0x00007f9e3e791583:   mov    %r8,%rdi
   0.05%   ││    0x00007f9e3e791586:   xor    %r12,%r14
   0.07%   ││    0x00007f9e3e791589:   rorx   $0x1c,%r8,%r12
   0.08%   ││    0x00007f9e3e79158f:   add    0x8(%rsp),%rcx
   0.06%   ││    0x00007f9e3e791594:   or     %r9,%rdi
   0.06%   ││    0x00007f9e3e791597:   xor    %r12,%r14
   0.07%   ││    0x00007f9e3e79159a:   mov    %r8,%r12
   0.07%   ││    0x00007f9e3e79159d:   and    %rdx,%rdi
   0.05%   ││    0x00007f9e3e7915a0:   and    %r9,%r12
   0.04%   ││    0x00007f9e3e7915a3:   add    %r13,%r15
   0.09%   ││    0x00007f9e3e7915a6:   add    %rcx,%r10
   0.07%   ││    0x00007f9e3e7915a9:   or     %r12,%rdi
   0.07%   ││    0x00007f9e3e7915ac:   add    %r14,%rcx
   0.05%   ││    0x00007f9e3e7915af:   add    %r15,%r10
   0.11%   ││    0x00007f9e3e7915b2:   add    %r15,%rcx
   0.08%   ││    0x00007f9e3e7915b5:   mov    %r11,%r15
   0.05%   ││    0x00007f9e3e7915b8:   rorx   $0x29,%r10,%r13
   0.06%   ││    0x00007f9e3e7915be:   rorx   $0x12,%r10,%r14
   0.07%   ││    0x00007f9e3e7915c4:   xor    %rax,%r15
   0.06%   ││    0x00007f9e3e7915c7:   xor    %r14,%r13
   0.06%   ││    0x00007f9e3e7915ca:   rorx   $0xe,%r10,%r14
   0.07%   ││    0x00007f9e3e7915d0:   and    %r10,%r15
   0.06%   ││    0x00007f9e3e7915d3:   add    %rdi,%rcx
   0.05%   ││    0x00007f9e3e7915d6:   xor    %r14,%r13
   0.08%   ││    0x00007f9e3e7915d9:   rorx   $0x22,%rcx,%r12
   0.07%   ││    0x00007f9e3e7915df:   xor    %rax,%r15
   0.09%   ││    0x00007f9e3e7915e2:   rorx   $0x27,%rcx,%r14
   0.06%   ││    0x00007f9e3e7915e8:   mov    %rcx,%rdi
   0.05%   ││    0x00007f9e3e7915eb:   xor    %r12,%r14
   0.06%   ││    0x00007f9e3e7915ee:   rorx   $0x1c,%rcx,%r12
   0.08%   ││    0x00007f9e3e7915f4:   add    0x10(%rsp),%rbx
   0.06%   ││    0x00007f9e3e7915f9:   or     %rdx,%rdi
   0.07%   ││    0x00007f9e3e7915fc:   xor    %r12,%r14
   0.08%   ││    0x00007f9e3e7915ff:   mov    %rcx,%r12
   0.07%   ││    0x00007f9e3e791602:   and    %r8,%rdi
   0.06%   ││    0x00007f9e3e791605:   and    %rdx,%r12
   0.04%   ││    0x00007f9e3e791608:   add    %r13,%r15
   0.06%   ││    0x00007f9e3e79160b:   add    %rbx,%r9
   0.10%   ││    0x00007f9e3e79160e:   or     %r12,%rdi
   0.06%   ││    0x00007f9e3e791611:   add    %r14,%rbx
   0.04%   ││    0x00007f9e3e791614:   add    %r15,%r9
   0.07%   ││    0x00007f9e3e791617:   add    %r15,%rbx
   0.09%   ││    0x00007f9e3e79161a:   mov    %r10,%r15
   0.06%   ││    0x00007f9e3e79161d:   rorx   $0x29,%r9,%r13
   0.05%   ││    0x00007f9e3e791623:   rorx   $0x12,%r9,%r14
   0.07%   ││    0x00007f9e3e791629:   xor    %r11,%r15
   0.08%   ││    0x00007f9e3e79162c:   xor    %r14,%r13
   0.07%   ││    0x00007f9e3e79162f:   rorx   $0xe,%r9,%r14
   0.04%   ││    0x00007f9e3e791635:   and    %r9,%r15
   0.08%   ││    0x00007f9e3e791638:   add    %rdi,%rbx
   0.08%   ││    0x00007f9e3e79163b:   xor    %r14,%r13
   0.11%   ││    0x00007f9e3e79163e:   rorx   $0x22,%rbx,%r12
   0.05%   ││    0x00007f9e3e791644:   xor    %r11,%r15
   0.09%   ││    0x00007f9e3e791647:   rorx   $0x27,%rbx,%r14
   0.08%   ││    0x00007f9e3e79164d:   mov    %rbx,%rdi
   0.06%   ││    0x00007f9e3e791650:   xor    %r12,%r14
   0.08%   ││    0x00007f9e3e791653:   rorx   $0x1c,%rbx,%r12
   0.04%   ││    0x00007f9e3e791659:   add    0x18(%rsp),%rax
   0.06%   ││    0x00007f9e3e79165e:   or     %r8,%rdi
   0.06%   ││    0x00007f9e3e791661:   xor    %r12,%r14
   0.07%   ││    0x00007f9e3e791664:   mov    %rbx,%r12
   0.07%   ││    0x00007f9e3e791667:   and    %rcx,%rdi
   0.06%   ││    0x00007f9e3e79166a:   and    %r8,%r12
   0.05%   ││    0x00007f9e3e79166d:   add    %r13,%r15
   0.08%   ││    0x00007f9e3e791670:   add    %rax,%rdx
   0.06%   ││    0x00007f9e3e791673:   or     %r12,%rdi
   0.07%   ││    0x00007f9e3e791676:   add    %r14,%rax
   0.08%   ││    0x00007f9e3e791679:   add    %r15,%rdx
   0.06%   ││    0x00007f9e3e79167c:   add    %r15,%rax
   0.06%   ││    0x00007f9e3e79167f:   add    %rdi,%rax
   0.09%   ││    0x00007f9e3e791682:   vmovdqu %ymm6,%ymm4
   0.06%   ││    0x00007f9e3e791686:   vmovdqu %ymm7,%ymm5
   0.03%   ││    0x00007f9e3e79168a:   subq   $0x1,0x20(%rsp)
   0.21%   ╰│    0x00007f9e3e791690:   jne    0x00007f9e3e791344
   0.04%    │    0x00007f9e3e791696:   add    (%rsi),%rax
   0.01%    │    0x00007f9e3e791699:   mov    %rax,(%rsi)
   0.27%    │    0x00007f9e3e79169c:   add    0x8(%rsi),%rbx
            │    0x00007f9e3e7916a0:   mov    %rbx,0x8(%rsi)
   0.01%    │    0x00007f9e3e7916a4:   add    0x10(%rsi),%rcx
            │    0x00007f9e3e7916a8:   mov    %rcx,0x10(%rsi)
   0.12%    │    0x00007f9e3e7916ac:   add    0x18(%rsi),%r8
            │    0x00007f9e3e7916b0:   mov    %r8,0x18(%rsi)
   0.01%    │    0x00007f9e3e7916b4:   add    0x20(%rsi),%rdx
   0.00%    │    0x00007f9e3e7916b8:   mov    %rdx,0x20(%rsi)
   0.12%    │    0x00007f9e3e7916bc:   add    0x28(%rsi),%r9
            │    0x00007f9e3e7916c0:   mov    %r9,0x28(%rsi)
   0.02%    │    0x00007f9e3e7916c4:   add    0x30(%rsi),%r10
   0.00%    │    0x00007f9e3e7916c8:   mov    %r10,0x30(%rsi)
   0.09%    │    0x00007f9e3e7916cc:   add    0x38(%rsi),%r11
            │    0x00007f9e3e7916d0:   mov    %r11,0x38(%rsi)
   0.03%    │    0x00007f9e3e7916d4:   mov    0x28(%rsp),%rdi
            │    0x00007f9e3e7916d9:   add    $0x80,%rdi
   0.12%    │    0x00007f9e3e7916e0:   cmp    0x30(%rsp),%rdi
            ╰    0x00007f9e3e7916e5:   jne    0x00007f9e3e79097b
   0.01%         0x00007f9e3e7916eb:   mov    0x40(%rsp),%rbp
   0.01%         0x00007f9e3e7916f0:   mov    0x48(%rsp),%rbx
                 0x00007f9e3e7916f5:   mov    0x50(%rsp),%r12
                 0x00007f9e3e7916fa:   mov    0x58(%rsp),%r13
   0.00%         0x00007f9e3e7916ff:   mov    0x60(%rsp),%r14
   0.00%         0x00007f9e3e791704:   mov    0x68(%rsp),%r15
                 0x00007f9e3e791709:   mov    0x38(%rsp),%rsp
                 0x00007f9e3e79170e:   pop    %rcx
                 0x00007f9e3e79170f:   pop    %rdx
                 0x00007f9e3e791710:   mov    %rdx,%rax
   0.24%      ↗  0x00007f9e3e791713:   cmp    %rcx,%rax
             ╭│  0x00007f9e3e791716:   jae    0x00007f9e3e791720
   0.01%     ││  0x00007f9e3e791718:   add    $0x80,%rax
   0.00%     │╰  0x00007f9e3e79171e:   jmp    0x00007f9e3e791713
   0.02%     ↘   0x00007f9e3e791720:   vzeroupper 
                 0x00007f9e3e791723:   leave  
   0.02%         0x00007f9e3e791724:   ret    
               --------------------------------------------------------------------------------
               - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
               <nmethod compile_id='4' compiler='c1' level='3' entry='0x00007f9e37224200' size='3400' address='0x00007f9e37224010' relocation_offset='344' insts_offset='496' stub_offset='2440' scopes_data_offset='2536' scopes_pcs_offset='2800' dependencies_offset='3344' nul_chk_table_offset='3352' metadata_offset='2520' method='java.util.ImmutableCollections$SetN probe (Ljava/lang/Object;)I' bytes='56' count='930' backedge_count='374' iicount='930' stamp='1.716'/>
               <print_nmethod compile_id='4' compiler='c1' level='3' stamp='1.716'>
               ============================= C1-compiled nmethod ==============================
               ----------------------------------- Assembly -----------------------------------
               Compiled method (c1)    1715    4       3       java.util.ImmutableCollections$SetN::probe (56 bytes)
                total in heap  [0x00007f9e37224010,0x00007f9e37224d58] = 3400
                relocation     [0x00007f9e37224168,0x00007f9e372241f0] = 136
                main code      [0x00007f9e37224200,0x00007f9e37224998] = 1944
....................................................................................................
  95.47%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.47%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.66%                      <unknown> 
   0.89%              kernel  [unknown] 
   0.19%        runtime stub  StubRoutines::sha512_implCompressMB 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   0.02%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   1.13%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.66%        runtime stub  StubRoutines::sha512_implCompressMB 
   2.00%              kernel  [unknown] 
   1.79%                      <unknown> 
   0.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1060 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.66%        runtime stub
   2.00%              kernel
   1.79%                    
   0.33%      jvmci, level 4
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA-512/256, length = 16384)

# Run progress: 54.55% complete, ETA 00:09:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 42.629 us/op
# Warmup Iteration   2: 37.850 us/op
# Warmup Iteration   3: 37.836 us/op
# Warmup Iteration   4: 37.846 us/op
# Warmup Iteration   5: 37.845 us/op
Iteration   1: 37.849 us/op
Iteration   2: 37.837 us/op
Iteration   3: 37.849 us/op
Iteration   4: 37.835 us/op
Iteration   5: 37.842 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  37.843 ±(99.9%) 0.025 us/op [Average]
  (min, avg, max) = (37.835, 37.843, 37.849), stdev = 0.007
  CI (99.9%): [37.817, 37.868] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 250085 total address lines.
Perf output processed (skipped 60.766 seconds):
 Column 1: cycles (50737 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
runtime stub, StubRoutines::sha512_implCompressMB 

                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::sha512_implCompressMB [0x00007f9b227908e0, 0x00007f9b22791725] (3653 bytes)
                  --------------------------------------------------------------------------------
                    0x00007f9b227908e0:   push   %rbp
                    0x00007f9b227908e1:   mov    %rsp,%rbp
                    0x00007f9b227908e4:   push   %rdx
   0.00%            0x00007f9b227908e5:   push   %rcx
                    0x00007f9b227908e6:   mov    %rsp,%rax
                    0x00007f9b227908e9:   sub    $0x70,%rsp
                    0x00007f9b227908ed:   and    $0xffffffffffffffe0,%rsp
                    0x00007f9b227908f1:   mov    %rax,0x38(%rsp)
                    0x00007f9b227908f6:   mov    %rbp,0x40(%rsp)
                    0x00007f9b227908fb:   mov    %rbx,0x48(%rsp)
                    0x00007f9b22790900:   mov    %r12,0x50(%rsp)
   0.00%            0x00007f9b22790905:   mov    %r13,0x58(%rsp)
                    0x00007f9b2279090a:   mov    %r14,0x60(%rsp)
                    0x00007f9b2279090f:   mov    %r15,0x68(%rsp)
   0.00%            0x00007f9b22790914:   vpblendd $0xf0,%xmm1,%xmm0,%xmm0
                    0x00007f9b2279091a:   vpblendd $0xf0,%ymm1,%ymm0,%ymm0
                    0x00007f9b22790920:   xor    %rax,%rax
   0.01%   ↗        0x00007f9b22790923:   cmp    %rcx,%rdx
          ╭│        0x00007f9b22790926:   jae    0x00007f9b22790937
   0.03%  ││        0x00007f9b22790928:   add    $0x80,%rdx
   0.12%  ││        0x00007f9b2279092f:   add    $0x80,%rax
          │╰        0x00007f9b22790935:   jmp    0x00007f9b22790923
   0.01%  ↘         0x00007f9b22790937:   mov    %rax,%rdx
                    0x00007f9b2279093a:   cmp    $0x0,%rdx
            ╭       0x00007f9b2279093e:   je     0x00007f9b227916eb
   0.01%    │       0x00007f9b22790944:   add    %rdi,%rdx
   0.00%    │       0x00007f9b22790947:   mov    %rdx,0x30(%rsp)
   0.00%    │       0x00007f9b2279094c:   mov    (%rsi),%rax
            │       0x00007f9b2279094f:   mov    0x8(%rsi),%rbx
            │       0x00007f9b22790953:   mov    0x10(%rsi),%rcx
   0.00%    │       0x00007f9b22790957:   mov    0x18(%rsi),%r8
            │       0x00007f9b2279095b:   mov    0x20(%rsi),%rdx
            │       0x00007f9b2279095f:   mov    0x28(%rsi),%r9
            │       0x00007f9b22790963:   mov    0x38(%rsi),%r11
            │       0x00007f9b22790967:   vmovdqu -0xeef(%rip),%ymm9        # 0x00007f9b2278fa80
   0.00%    │       0x00007f9b2279096f:   vmovdqu -0xed7(%rip),%ymm10        # 0x00007f9b2278faa0
   0.00%    │       0x00007f9b22790977:   mov    0x30(%rsi),%r10
            │  ↗    0x00007f9b2279097b:   movabs $0x7f9b3d006180,%rbp
   0.03%    │  │    0x00007f9b22790985:   vmovdqu (%rdi),%ymm4
   0.02%    │  │    0x00007f9b22790989:   vpshufb %ymm9,%ymm4,%ymm4
   0.14%    │  │    0x00007f9b2279098e:   vmovdqu 0x20(%rdi),%ymm5
   0.16%    │  │    0x00007f9b22790993:   vpshufb %ymm9,%ymm5,%ymm5
   0.33%    │  │    0x00007f9b22790998:   vmovdqu 0x40(%rdi),%ymm6
   0.03%    │  │    0x00007f9b2279099d:   vpshufb %ymm9,%ymm6,%ymm6
   0.02%    │  │    0x00007f9b227909a2:   vmovdqu 0x60(%rdi),%ymm7
   0.14%    │  │    0x00007f9b227909a7:   vpshufb %ymm9,%ymm7,%ymm7
   0.32%    │  │    0x00007f9b227909ac:   mov    %rdi,0x28(%rsp)
            │  │    0x00007f9b227909b1:   movq   $0x4,0x20(%rsp)
            │  │    0x00007f9b227909ba:   nopw   0x0(%rax,%rax,1)
   0.04%    │↗ │    0x00007f9b227909c0:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.33%    ││ │    0x00007f9b227909c5:   vmovdqu %ymm0,(%rsp)
   0.11%    ││ │    0x00007f9b227909ca:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm0
   0.25%    ││ │    0x00007f9b227909d0:   vpalignr $0x8,%ymm6,%ymm0,%ymm0
   0.27%    ││ │    0x00007f9b227909d6:   vpaddq %ymm4,%ymm0,%ymm0
   0.75%    ││ │    0x00007f9b227909da:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm1
   0.08%    ││ │    0x00007f9b227909e0:   vpalignr $0x8,%ymm4,%ymm1,%ymm1
   0.04%    ││ │    0x00007f9b227909e6:   vpsrlq $0x1,%ymm1,%ymm2
   0.06%    ││ │    0x00007f9b227909eb:   vpsllq $0x3f,%ymm1,%ymm3
   0.33%    ││ │    0x00007f9b227909f0:   vpor   %ymm2,%ymm3,%ymm3
   0.12%    ││ │    0x00007f9b227909f4:   vpsrlq $0x7,%ymm1,%ymm8
   0.04%    ││ │    0x00007f9b227909f9:   mov    %rax,%rdi
   0.05%    ││ │    0x00007f9b227909fc:   rorx   $0x29,%rdx,%r13
   0.30%    ││ │    0x00007f9b22790a02:   rorx   $0x12,%rdx,%r14
   0.11%    ││ │    0x00007f9b22790a08:   add    (%rsp),%r11
   0.05%    ││ │    0x00007f9b22790a0c:   or     %rcx,%rdi
   0.05%    ││ │    0x00007f9b22790a0f:   mov    %r9,%r15
   0.31%    ││ │    0x00007f9b22790a12:   xor    %r10,%r15
   0.11%    ││ │    0x00007f9b22790a15:   rorx   $0x22,%rax,%r12
   0.05%    ││ │    0x00007f9b22790a1b:   xor    %r14,%r13
   0.03%    ││ │    0x00007f9b22790a1e:   rorx   $0xe,%rdx,%r14
   0.32%    ││ │    0x00007f9b22790a24:   and    %rdx,%r15
   0.09%    ││ │    0x00007f9b22790a27:   add    %r11,%r8
   0.07%    ││ │    0x00007f9b22790a2a:   and    %rbx,%rdi
   0.04%    ││ │    0x00007f9b22790a2d:   xor    %r14,%r13
   0.30%    ││ │    0x00007f9b22790a30:   rorx   $0x27,%rax,%r14
   0.12%    ││ │    0x00007f9b22790a36:   xor    %r12,%r14
   0.06%    ││ │    0x00007f9b22790a39:   rorx   $0x1c,%rax,%r12
   0.04%    ││ │    0x00007f9b22790a3f:   xor    %r10,%r15
   0.28%    ││ │    0x00007f9b22790a42:   xor    %r12,%r14
   0.12%    ││ │    0x00007f9b22790a45:   mov    %rax,%r12
   0.06%    ││ │    0x00007f9b22790a48:   and    %rcx,%r12
   0.04%    ││ │    0x00007f9b22790a4b:   add    %r13,%r15
   0.29%    ││ │    0x00007f9b22790a4e:   or     %r12,%rdi
   0.14%    ││ │    0x00007f9b22790a51:   add    %r14,%r11
   0.05%    ││ │    0x00007f9b22790a54:   add    %r15,%r8
   0.05%    ││ │    0x00007f9b22790a57:   add    %r15,%r11
   0.32%    ││ │    0x00007f9b22790a5a:   add    %rdi,%r11
   0.13%    ││ │    0x00007f9b22790a5d:   vpsrlq $0x8,%ymm1,%ymm2
   0.06%    ││ │    0x00007f9b22790a62:   vpsllq $0x38,%ymm1,%ymm1
   0.03%    ││ │    0x00007f9b22790a67:   vpor   %ymm2,%ymm1,%ymm1
   0.29%    ││ │    0x00007f9b22790a6b:   vpxor  %ymm8,%ymm3,%ymm3
   0.11%    ││ │    0x00007f9b22790a70:   vpxor  %ymm1,%ymm3,%ymm1
   0.06%    ││ │    0x00007f9b22790a74:   vpaddq %ymm1,%ymm0,%ymm0
   0.03%    ││ │    0x00007f9b22790a78:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm4
   0.34%    ││ │    0x00007f9b22790a7e:   vpand  %ymm10,%ymm0,%ymm0
   0.11%    ││ │    0x00007f9b22790a83:   vperm2f128 $0x11,%ymm7,%ymm7,%ymm2
   0.06%    ││ │    0x00007f9b22790a89:   vpsrlq $0x6,%ymm2,%ymm8
   0.05%    ││ │    0x00007f9b22790a8e:   mov    %r11,%rdi
   0.30%    ││ │    0x00007f9b22790a91:   rorx   $0x29,%r8,%r13
   0.11%    ││ │    0x00007f9b22790a97:   rorx   $0x12,%r8,%r14
   0.05%    ││ │    0x00007f9b22790a9d:   add    0x8(%rsp),%r10
   0.05%    ││ │    0x00007f9b22790aa2:   or     %rbx,%rdi
   0.27%    ││ │    0x00007f9b22790aa5:   mov    %rdx,%r15
   0.12%    ││ │    0x00007f9b22790aa8:   xor    %r9,%r15
   0.04%    ││ │    0x00007f9b22790aab:   rorx   $0x22,%r11,%r12
   0.02%    ││ │    0x00007f9b22790ab1:   xor    %r14,%r13
   0.31%    ││ │    0x00007f9b22790ab4:   rorx   $0xe,%r8,%r14
   0.12%    ││ │    0x00007f9b22790aba:   and    %r8,%r15
   0.05%    ││ │    0x00007f9b22790abd:   add    %r10,%rcx
   0.04%    ││ │    0x00007f9b22790ac0:   and    %rax,%rdi
   0.30%    ││ │    0x00007f9b22790ac3:   xor    %r14,%r13
   0.13%    ││ │    0x00007f9b22790ac6:   rorx   $0x27,%r11,%r14
   0.05%    ││ │    0x00007f9b22790acc:   xor    %r12,%r14
   0.03%    ││ │    0x00007f9b22790acf:   rorx   $0x1c,%r11,%r12
   0.30%    ││ │    0x00007f9b22790ad5:   xor    %r9,%r15
   0.11%    ││ │    0x00007f9b22790ad8:   xor    %r12,%r14
   0.07%    ││ │    0x00007f9b22790adb:   mov    %r11,%r12
   0.03%    ││ │    0x00007f9b22790ade:   and    %rbx,%r12
   0.30%    ││ │    0x00007f9b22790ae1:   add    %r13,%r15
   0.12%    ││ │    0x00007f9b22790ae4:   or     %r12,%rdi
   0.04%    ││ │    0x00007f9b22790ae7:   add    %r14,%r10
   0.04%    ││ │    0x00007f9b22790aea:   add    %r15,%rcx
   0.28%    ││ │    0x00007f9b22790aed:   add    %r15,%r10
   0.10%    ││ │    0x00007f9b22790af0:   add    %rdi,%r10
   0.07%    ││ │    0x00007f9b22790af3:   vpsrlq $0x13,%ymm2,%ymm3
   0.05%    ││ │    0x00007f9b22790af8:   vpsllq $0x2d,%ymm2,%ymm1
   0.32%    ││ │    0x00007f9b22790afd:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f9b22790b01:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f9b22790b05:   vpsrlq $0x3d,%ymm2,%ymm3
   0.05%    ││ │    0x00007f9b22790b0a:   vpsllq $0x3,%ymm2,%ymm1
   0.29%    ││ │    0x00007f9b22790b0f:   vpor   %ymm1,%ymm3,%ymm3
   0.12%    ││ │    0x00007f9b22790b13:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f9b22790b17:   vpaddq %ymm8,%ymm4,%ymm4
   0.05%    ││ │    0x00007f9b22790b1c:   vpsrlq $0x6,%ymm4,%ymm8
   0.30%    ││ │    0x00007f9b22790b21:   mov    %r10,%rdi
   0.12%    ││ │    0x00007f9b22790b24:   rorx   $0x29,%rcx,%r13
   0.08%    ││ │    0x00007f9b22790b2a:   rorx   $0x12,%rcx,%r14
   0.04%    ││ │    0x00007f9b22790b30:   add    0x10(%rsp),%r9
   0.32%    ││ │    0x00007f9b22790b35:   or     %rax,%rdi
   0.10%    ││ │    0x00007f9b22790b38:   mov    %r8,%r15
   0.07%    ││ │    0x00007f9b22790b3b:   xor    %rdx,%r15
   0.05%    ││ │    0x00007f9b22790b3e:   rorx   $0x22,%r10,%r12
   0.29%    ││ │    0x00007f9b22790b44:   xor    %r14,%r13
   0.14%    ││ │    0x00007f9b22790b47:   rorx   $0xe,%rcx,%r14
   0.06%    ││ │    0x00007f9b22790b4d:   and    %rcx,%r15
   0.04%    ││ │    0x00007f9b22790b50:   add    %r9,%rbx
   0.34%    ││ │    0x00007f9b22790b53:   and    %r11,%rdi
   0.09%    ││ │    0x00007f9b22790b56:   xor    %r14,%r13
   0.06%    ││ │    0x00007f9b22790b59:   rorx   $0x27,%r10,%r14
   0.05%    ││ │    0x00007f9b22790b5f:   xor    %r12,%r14
   0.28%    ││ │    0x00007f9b22790b62:   rorx   $0x1c,%r10,%r12
   0.11%    ││ │    0x00007f9b22790b68:   xor    %rdx,%r15
   0.04%    ││ │    0x00007f9b22790b6b:   xor    %r12,%r14
   0.06%    ││ │    0x00007f9b22790b6e:   mov    %r10,%r12
   0.28%    ││ │    0x00007f9b22790b71:   and    %rax,%r12
   0.11%    ││ │    0x00007f9b22790b74:   add    %r13,%r15
   0.04%    ││ │    0x00007f9b22790b77:   or     %r12,%rdi
   0.03%    ││ │    0x00007f9b22790b7a:   add    %r14,%r9
   0.27%    ││ │    0x00007f9b22790b7d:   add    %r15,%rbx
   0.11%    ││ │    0x00007f9b22790b80:   add    %r15,%r9
   0.04%    ││ │    0x00007f9b22790b83:   add    %rdi,%r9
   0.04%    ││ │    0x00007f9b22790b86:   vpsrlq $0x13,%ymm4,%ymm3
   0.32%    ││ │    0x00007f9b22790b8b:   vpsllq $0x2d,%ymm4,%ymm1
   0.14%    ││ │    0x00007f9b22790b90:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f9b22790b94:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f9b22790b98:   vpsrlq $0x3d,%ymm4,%ymm3
   0.38%    ││ │    0x00007f9b22790b9d:   vpsllq $0x3,%ymm4,%ymm1
   0.13%    ││ │    0x00007f9b22790ba2:   vpor   %ymm1,%ymm3,%ymm3
   0.06%    ││ │    0x00007f9b22790ba6:   vpxor  %ymm3,%ymm8,%ymm8
   0.04%    ││ │    0x00007f9b22790baa:   vpaddq %ymm8,%ymm0,%ymm2
   0.34%    ││ │    0x00007f9b22790baf:   vpblendd $0xf0,%ymm2,%ymm4,%ymm4
   0.18%    ││ │    0x00007f9b22790bb5:   mov    %r9,%rdi
   0.05%    ││ │    0x00007f9b22790bb8:   rorx   $0x29,%rbx,%r13
   0.04%    ││ │    0x00007f9b22790bbe:   rorx   $0x12,%rbx,%r14
   0.33%    ││ │    0x00007f9b22790bc4:   add    0x18(%rsp),%rdx
   0.15%    ││ │    0x00007f9b22790bc9:   or     %r11,%rdi
   0.04%    ││ │    0x00007f9b22790bcc:   mov    %rcx,%r15
   0.04%    ││ │    0x00007f9b22790bcf:   xor    %r8,%r15
   0.28%    ││ │    0x00007f9b22790bd2:   rorx   $0x22,%r9,%r12
   0.16%    ││ │    0x00007f9b22790bd8:   xor    %r14,%r13
   0.04%    ││ │    0x00007f9b22790bdb:   rorx   $0xe,%rbx,%r14
   0.03%    ││ │    0x00007f9b22790be1:   and    %rbx,%r15
   0.28%    ││ │    0x00007f9b22790be4:   add    %rdx,%rax
   0.15%    ││ │    0x00007f9b22790be7:   and    %r10,%rdi
   0.04%    ││ │    0x00007f9b22790bea:   xor    %r14,%r13
   0.02%    ││ │    0x00007f9b22790bed:   rorx   $0x27,%r9,%r14
   0.28%    ││ │    0x00007f9b22790bf3:   xor    %r12,%r14
   0.16%    ││ │    0x00007f9b22790bf6:   rorx   $0x1c,%r9,%r12
   0.05%    ││ │    0x00007f9b22790bfc:   xor    %r8,%r15
   0.04%    ││ │    0x00007f9b22790bff:   xor    %r12,%r14
   0.25%    ││ │    0x00007f9b22790c02:   mov    %r9,%r12
   0.13%    ││ │    0x00007f9b22790c05:   and    %r11,%r12
   0.05%    ││ │    0x00007f9b22790c08:   add    %r13,%r15
   0.02%    ││ │    0x00007f9b22790c0b:   or     %r12,%rdi
   0.31%    ││ │    0x00007f9b22790c0e:   add    %r14,%rdx
   0.15%    ││ │    0x00007f9b22790c11:   add    %r15,%rax
   0.07%    ││ │    0x00007f9b22790c14:   add    %r15,%rdx
   0.04%    ││ │    0x00007f9b22790c17:   add    %rdi,%rdx
   0.29%    ││ │    0x00007f9b22790c1a:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.14%    ││ │    0x00007f9b22790c1f:   vmovdqu %ymm0,(%rsp)
   0.06%    ││ │    0x00007f9b22790c24:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm0
   0.03%    ││ │    0x00007f9b22790c2a:   vpalignr $0x8,%ymm7,%ymm0,%ymm0
   0.32%    ││ │    0x00007f9b22790c30:   vpaddq %ymm5,%ymm0,%ymm0
   0.20%    ││ │    0x00007f9b22790c34:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm1
   0.03%    ││ │    0x00007f9b22790c3a:   vpalignr $0x8,%ymm5,%ymm1,%ymm1
   0.03%    ││ │    0x00007f9b22790c40:   vpsrlq $0x1,%ymm1,%ymm2
   0.31%    ││ │    0x00007f9b22790c45:   vpsllq $0x3f,%ymm1,%ymm3
   0.14%    ││ │    0x00007f9b22790c4a:   vpor   %ymm2,%ymm3,%ymm3
   0.08%    ││ │    0x00007f9b22790c4e:   vpsrlq $0x7,%ymm1,%ymm8
   0.03%    ││ │    0x00007f9b22790c53:   mov    %rdx,%rdi
   0.24%    ││ │    0x00007f9b22790c56:   rorx   $0x29,%rax,%r13
   0.15%    ││ │    0x00007f9b22790c5c:   rorx   $0x12,%rax,%r14
   0.05%    ││ │    0x00007f9b22790c62:   add    (%rsp),%r8
   0.03%    ││ │    0x00007f9b22790c66:   or     %r10,%rdi
   0.28%    ││ │    0x00007f9b22790c69:   mov    %rbx,%r15
   0.20%    ││ │    0x00007f9b22790c6c:   xor    %rcx,%r15
   0.07%    ││ │    0x00007f9b22790c6f:   rorx   $0x22,%rdx,%r12
   0.03%    ││ │    0x00007f9b22790c75:   xor    %r14,%r13
   0.25%    ││ │    0x00007f9b22790c78:   rorx   $0xe,%rax,%r14
   0.14%    ││ │    0x00007f9b22790c7e:   and    %rax,%r15
   0.07%    ││ │    0x00007f9b22790c81:   add    %r8,%r11
   0.03%    ││ │    0x00007f9b22790c84:   and    %r9,%rdi
   0.28%    ││ │    0x00007f9b22790c87:   xor    %r14,%r13
   0.15%    ││ │    0x00007f9b22790c8a:   rorx   $0x27,%rdx,%r14
   0.04%    ││ │    0x00007f9b22790c90:   xor    %r12,%r14
   0.03%    ││ │    0x00007f9b22790c93:   rorx   $0x1c,%rdx,%r12
   0.29%    ││ │    0x00007f9b22790c99:   xor    %rcx,%r15
   0.18%    ││ │    0x00007f9b22790c9c:   xor    %r12,%r14
   0.07%    ││ │    0x00007f9b22790c9f:   mov    %rdx,%r12
   0.02%    ││ │    0x00007f9b22790ca2:   and    %r10,%r12
   0.27%    ││ │    0x00007f9b22790ca5:   add    %r13,%r15
   0.15%    ││ │    0x00007f9b22790ca8:   or     %r12,%rdi
   0.05%    ││ │    0x00007f9b22790cab:   add    %r14,%r8
   0.03%    ││ │    0x00007f9b22790cae:   add    %r15,%r11
   0.30%    ││ │    0x00007f9b22790cb1:   add    %r15,%r8
   0.16%    ││ │    0x00007f9b22790cb4:   add    %rdi,%r8
   0.05%    ││ │    0x00007f9b22790cb7:   vpsrlq $0x8,%ymm1,%ymm2
   0.03%    ││ │    0x00007f9b22790cbc:   vpsllq $0x38,%ymm1,%ymm1
   0.32%    ││ │    0x00007f9b22790cc1:   vpor   %ymm2,%ymm1,%ymm1
   0.16%    ││ │    0x00007f9b22790cc5:   vpxor  %ymm8,%ymm3,%ymm3
   0.07%    ││ │    0x00007f9b22790cca:   vpxor  %ymm1,%ymm3,%ymm1
   0.02%    ││ │    0x00007f9b22790cce:   vpaddq %ymm1,%ymm0,%ymm0
   0.25%    ││ │    0x00007f9b22790cd2:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm5
   0.17%    ││ │    0x00007f9b22790cd8:   vpand  %ymm10,%ymm0,%ymm0
   0.09%    ││ │    0x00007f9b22790cdd:   vperm2f128 $0x11,%ymm4,%ymm4,%ymm2
   0.03%    ││ │    0x00007f9b22790ce3:   vpsrlq $0x6,%ymm2,%ymm8
   0.20%    ││ │    0x00007f9b22790ce8:   mov    %r8,%rdi
   0.14%    ││ │    0x00007f9b22790ceb:   rorx   $0x29,%r11,%r13
   0.06%    ││ │    0x00007f9b22790cf1:   rorx   $0x12,%r11,%r14
   0.03%    ││ │    0x00007f9b22790cf7:   add    0x8(%rsp),%rcx
   0.26%    ││ │    0x00007f9b22790cfc:   or     %r9,%rdi
   0.17%    ││ │    0x00007f9b22790cff:   mov    %rax,%r15
   0.06%    ││ │    0x00007f9b22790d02:   xor    %rbx,%r15
   0.02%    ││ │    0x00007f9b22790d05:   rorx   $0x22,%r8,%r12
   0.27%    ││ │    0x00007f9b22790d0b:   xor    %r14,%r13
   0.15%    ││ │    0x00007f9b22790d0e:   rorx   $0xe,%r11,%r14
   0.05%    ││ │    0x00007f9b22790d14:   and    %r11,%r15
   0.04%    ││ │    0x00007f9b22790d17:   add    %rcx,%r10
   0.27%    ││ │    0x00007f9b22790d1a:   and    %rdx,%rdi
   0.16%    ││ │    0x00007f9b22790d1d:   xor    %r14,%r13
   0.06%    ││ │    0x00007f9b22790d20:   rorx   $0x27,%r8,%r14
   0.02%    ││ │    0x00007f9b22790d26:   xor    %r12,%r14
   0.30%    ││ │    0x00007f9b22790d29:   rorx   $0x1c,%r8,%r12
   0.17%    ││ │    0x00007f9b22790d2f:   xor    %rbx,%r15
   0.06%    ││ │    0x00007f9b22790d32:   xor    %r12,%r14
   0.03%    ││ │    0x00007f9b22790d35:   mov    %r8,%r12
   0.31%    ││ │    0x00007f9b22790d38:   and    %r9,%r12
   0.14%    ││ │    0x00007f9b22790d3b:   add    %r13,%r15
   0.06%    ││ │    0x00007f9b22790d3e:   or     %r12,%rdi
   0.04%    ││ │    0x00007f9b22790d41:   add    %r14,%rcx
   0.30%    ││ │    0x00007f9b22790d44:   add    %r15,%r10
   0.16%    ││ │    0x00007f9b22790d47:   add    %r15,%rcx
   0.06%    ││ │    0x00007f9b22790d4a:   add    %rdi,%rcx
   0.02%    ││ │    0x00007f9b22790d4d:   vpsrlq $0x13,%ymm2,%ymm3
   0.27%    ││ │    0x00007f9b22790d52:   vpsllq $0x2d,%ymm2,%ymm1
   0.14%    ││ │    0x00007f9b22790d57:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f9b22790d5b:   vpxor  %ymm3,%ymm8,%ymm8
   0.03%    ││ │    0x00007f9b22790d5f:   vpsrlq $0x3d,%ymm2,%ymm3
   0.26%    ││ │    0x00007f9b22790d64:   vpsllq $0x3,%ymm2,%ymm1
   0.15%    ││ │    0x00007f9b22790d69:   vpor   %ymm1,%ymm3,%ymm3
   0.07%    ││ │    0x00007f9b22790d6d:   vpxor  %ymm3,%ymm8,%ymm8
   0.05%    ││ │    0x00007f9b22790d71:   vpaddq %ymm8,%ymm5,%ymm5
   0.25%    ││ │    0x00007f9b22790d76:   vpsrlq $0x6,%ymm5,%ymm8
   0.17%    ││ │    0x00007f9b22790d7b:   mov    %rcx,%rdi
   0.05%    ││ │    0x00007f9b22790d7e:   rorx   $0x29,%r10,%r13
   0.02%    ││ │    0x00007f9b22790d84:   rorx   $0x12,%r10,%r14
   0.25%    ││ │    0x00007f9b22790d8a:   add    0x10(%rsp),%rbx
   0.12%    ││ │    0x00007f9b22790d8f:   or     %rdx,%rdi
   0.07%    ││ │    0x00007f9b22790d92:   mov    %r11,%r15
   0.02%    ││ │    0x00007f9b22790d95:   xor    %rax,%r15
   0.26%    ││ │    0x00007f9b22790d98:   rorx   $0x22,%rcx,%r12
   0.17%    ││ │    0x00007f9b22790d9e:   xor    %r14,%r13
   0.09%    ││ │    0x00007f9b22790da1:   rorx   $0xe,%r10,%r14
   0.04%    ││ │    0x00007f9b22790da7:   and    %r10,%r15
   0.29%    ││ │    0x00007f9b22790daa:   add    %rbx,%r9
   0.16%    ││ │    0x00007f9b22790dad:   and    %r8,%rdi
   0.06%    ││ │    0x00007f9b22790db0:   xor    %r14,%r13
   0.03%    ││ │    0x00007f9b22790db3:   rorx   $0x27,%rcx,%r14
   0.28%    ││ │    0x00007f9b22790db9:   xor    %r12,%r14
   0.15%    ││ │    0x00007f9b22790dbc:   rorx   $0x1c,%rcx,%r12
   0.07%    ││ │    0x00007f9b22790dc2:   xor    %rax,%r15
   0.03%    ││ │    0x00007f9b22790dc5:   xor    %r12,%r14
   0.24%    ││ │    0x00007f9b22790dc8:   mov    %rcx,%r12
   0.15%    ││ │    0x00007f9b22790dcb:   and    %rdx,%r12
   0.08%    ││ │    0x00007f9b22790dce:   add    %r13,%r15
   0.03%    ││ │    0x00007f9b22790dd1:   or     %r12,%rdi
   0.32%    ││ │    0x00007f9b22790dd4:   add    %r14,%rbx
   0.17%    ││ │    0x00007f9b22790dd7:   add    %r15,%r9
   0.07%    ││ │    0x00007f9b22790dda:   add    %r15,%rbx
   0.03%    ││ │    0x00007f9b22790ddd:   add    %rdi,%rbx
   0.28%    ││ │    0x00007f9b22790de0:   vpsrlq $0x13,%ymm5,%ymm3
   0.16%    ││ │    0x00007f9b22790de5:   vpsllq $0x2d,%ymm5,%ymm1
   0.06%    ││ │    0x00007f9b22790dea:   vpor   %ymm1,%ymm3,%ymm3
   0.02%    ││ │    0x00007f9b22790dee:   vpxor  %ymm3,%ymm8,%ymm8
   0.27%    ││ │    0x00007f9b22790df2:   vpsrlq $0x3d,%ymm5,%ymm3
   0.15%    ││ │    0x00007f9b22790df7:   vpsllq $0x3,%ymm5,%ymm1
   0.07%    ││ │    0x00007f9b22790dfc:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f9b22790e00:   vpxor  %ymm3,%ymm8,%ymm8
   0.22%    ││ │    0x00007f9b22790e04:   vpaddq %ymm8,%ymm0,%ymm2
   0.18%    ││ │    0x00007f9b22790e09:   vpblendd $0xf0,%ymm2,%ymm5,%ymm5
   0.11%    ││ │    0x00007f9b22790e0f:   mov    %rbx,%rdi
   0.03%    ││ │    0x00007f9b22790e12:   rorx   $0x29,%r9,%r13
   0.27%    ││ │    0x00007f9b22790e18:   rorx   $0x12,%r9,%r14
   0.15%    ││ │    0x00007f9b22790e1e:   add    0x18(%rsp),%rax
   0.09%    ││ │    0x00007f9b22790e23:   or     %r8,%rdi
   0.02%    ││ │    0x00007f9b22790e26:   mov    %r10,%r15
   0.26%    ││ │    0x00007f9b22790e29:   xor    %r11,%r15
   0.14%    ││ │    0x00007f9b22790e2c:   rorx   $0x22,%rbx,%r12
   0.08%    ││ │    0x00007f9b22790e32:   xor    %r14,%r13
   0.03%    ││ │    0x00007f9b22790e35:   rorx   $0xe,%r9,%r14
   0.24%    ││ │    0x00007f9b22790e3b:   and    %r9,%r15
   0.13%    ││ │    0x00007f9b22790e3e:   add    %rax,%rdx
   0.07%    ││ │    0x00007f9b22790e41:   and    %rcx,%rdi
   0.03%    ││ │    0x00007f9b22790e44:   xor    %r14,%r13
   0.24%    ││ │    0x00007f9b22790e47:   rorx   $0x27,%rbx,%r14
   0.14%    ││ │    0x00007f9b22790e4d:   xor    %r12,%r14
   0.09%    ││ │    0x00007f9b22790e50:   rorx   $0x1c,%rbx,%r12
   0.05%    ││ │    0x00007f9b22790e56:   xor    %r11,%r15
   0.23%    ││ │    0x00007f9b22790e59:   xor    %r12,%r14
   0.13%    ││ │    0x00007f9b22790e5c:   mov    %rbx,%r12
   0.10%    ││ │    0x00007f9b22790e5f:   and    %r8,%r12
   0.03%    ││ │    0x00007f9b22790e62:   add    %r13,%r15
   0.22%    ││ │    0x00007f9b22790e65:   or     %r12,%rdi
   0.21%    ││ │    0x00007f9b22790e68:   add    %r14,%rax
   0.08%    ││ │    0x00007f9b22790e6b:   add    %r15,%rdx
   0.03%    ││ │    0x00007f9b22790e6e:   add    %r15,%rax
   0.24%    ││ │    0x00007f9b22790e71:   add    %rdi,%rax
   0.15%    ││ │    0x00007f9b22790e74:   vpaddq 0x40(%rbp),%ymm6,%ymm0
   0.08%    ││ │    0x00007f9b22790e79:   vmovdqu %ymm0,(%rsp)
   0.02%    ││ │    0x00007f9b22790e7e:   vperm2f128 $0x3,%ymm4,%ymm5,%ymm0
   0.24%    ││ │    0x00007f9b22790e84:   vpalignr $0x8,%ymm4,%ymm0,%ymm0
   0.14%    ││ │    0x00007f9b22790e8a:   vpaddq %ymm6,%ymm0,%ymm0
   0.15%    ││ │    0x00007f9b22790e8e:   vperm2f128 $0x3,%ymm6,%ymm7,%ymm1
   0.02%    ││ │    0x00007f9b22790e94:   vpalignr $0x8,%ymm6,%ymm1,%ymm1
   0.25%    ││ │    0x00007f9b22790e9a:   vpsrlq $0x1,%ymm1,%ymm2
   0.13%    ││ │    0x00007f9b22790e9f:   vpsllq $0x3f,%ymm1,%ymm3
   0.11%    ││ │    0x00007f9b22790ea4:   vpor   %ymm2,%ymm3,%ymm3
   0.02%    ││ │    0x00007f9b22790ea8:   vpsrlq $0x7,%ymm1,%ymm8
   0.21%    ││ │    0x00007f9b22790ead:   mov    %rax,%rdi
   0.12%    ││ │    0x00007f9b22790eb0:   rorx   $0x29,%rdx,%r13
   0.11%    ││ │    0x00007f9b22790eb6:   rorx   $0x12,%rdx,%r14
   0.04%    ││ │    0x00007f9b22790ebc:   add    (%rsp),%r11
   0.23%    ││ │    0x00007f9b22790ec0:   or     %rcx,%rdi
   0.12%    ││ │    0x00007f9b22790ec3:   mov    %r9,%r15
   0.14%    ││ │    0x00007f9b22790ec6:   xor    %r10,%r15
   0.04%    ││ │    0x00007f9b22790ec9:   rorx   $0x22,%rax,%r12
   0.20%    ││ │    0x00007f9b22790ecf:   xor    %r14,%r13
   0.12%    ││ │    0x00007f9b22790ed2:   rorx   $0xe,%rdx,%r14
   0.11%    ││ │    0x00007f9b22790ed8:   and    %rdx,%r15
   0.03%    ││ │    0x00007f9b22790edb:   add    %r11,%r8
   0.21%    ││ │    0x00007f9b22790ede:   and    %rbx,%rdi
   0.12%    ││ │    0x00007f9b22790ee1:   xor    %r14,%r13
   0.15%    ││ │    0x00007f9b22790ee4:   rorx   $0x27,%rax,%r14
   0.03%    ││ │    0x00007f9b22790eea:   xor    %r12,%r14
   0.23%    ││ │    0x00007f9b22790eed:   rorx   $0x1c,%rax,%r12
   0.13%    ││ │    0x00007f9b22790ef3:   xor    %r10,%r15
   0.13%    ││ │    0x00007f9b22790ef6:   xor    %r12,%r14
   0.03%    ││ │    0x00007f9b22790ef9:   mov    %rax,%r12
   0.22%    ││ │    0x00007f9b22790efc:   and    %rcx,%r12
   0.12%    ││ │    0x00007f9b22790eff:   add    %r13,%r15
   0.10%    ││ │    0x00007f9b22790f02:   or     %r12,%rdi
   0.03%    ││ │    0x00007f9b22790f05:   add    %r14,%r11
   0.25%    ││ │    0x00007f9b22790f08:   add    %r15,%r8
   0.14%    ││ │    0x00007f9b22790f0b:   add    %r15,%r11
   0.10%    ││ │    0x00007f9b22790f0e:   add    %rdi,%r11
   0.03%    ││ │    0x00007f9b22790f11:   vpsrlq $0x8,%ymm1,%ymm2
   0.22%    ││ │    0x00007f9b22790f16:   vpsllq $0x38,%ymm1,%ymm1
   0.14%    ││ │    0x00007f9b22790f1b:   vpor   %ymm2,%ymm1,%ymm1
   0.14%    ││ │    0x00007f9b22790f1f:   vpxor  %ymm8,%ymm3,%ymm3
   0.03%    ││ │    0x00007f9b22790f24:   vpxor  %ymm1,%ymm3,%ymm1
   0.20%    ││ │    0x00007f9b22790f28:   vpaddq %ymm1,%ymm0,%ymm0
   0.13%    ││ │    0x00007f9b22790f2c:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm6
   0.12%    ││ │    0x00007f9b22790f32:   vpand  %ymm10,%ymm0,%ymm0
   0.03%    ││ │    0x00007f9b22790f37:   vperm2f128 $0x11,%ymm5,%ymm5,%ymm2
   0.21%    ││ │    0x00007f9b22790f3d:   vpsrlq $0x6,%ymm2,%ymm8
   0.12%    ││ │    0x00007f9b22790f42:   mov    %r11,%rdi
   0.10%    ││ │    0x00007f9b22790f45:   rorx   $0x29,%r8,%r13
   0.03%    ││ │    0x00007f9b22790f4b:   rorx   $0x12,%r8,%r14
   0.22%    ││ │    0x00007f9b22790f51:   add    0x8(%rsp),%r10
   0.15%    ││ │    0x00007f9b22790f56:   or     %rbx,%rdi
   0.11%    ││ │    0x00007f9b22790f59:   mov    %rdx,%r15
   0.04%    ││ │    0x00007f9b22790f5c:   xor    %r9,%r15
   0.24%    ││ │    0x00007f9b22790f5f:   rorx   $0x22,%r11,%r12
   0.14%    ││ │    0x00007f9b22790f65:   xor    %r14,%r13
   0.11%    ││ │    0x00007f9b22790f68:   rorx   $0xe,%r8,%r14
   0.05%    ││ │    0x00007f9b22790f6e:   and    %r8,%r15
   0.21%    ││ │    0x00007f9b22790f71:   add    %r10,%rcx
   0.14%    ││ │    0x00007f9b22790f74:   and    %rax,%rdi
   0.13%    ││ │    0x00007f9b22790f77:   xor    %r14,%r13
   0.03%    ││ │    0x00007f9b22790f7a:   rorx   $0x27,%r11,%r14
   0.20%    ││ │    0x00007f9b22790f80:   xor    %r12,%r14
   0.10%    ││ │    0x00007f9b22790f83:   rorx   $0x1c,%r11,%r12
   0.13%    ││ │    0x00007f9b22790f89:   xor    %r9,%r15
   0.02%    ││ │    0x00007f9b22790f8c:   xor    %r12,%r14
   0.21%    ││ │    0x00007f9b22790f8f:   mov    %r11,%r12
   0.16%    ││ │    0x00007f9b22790f92:   and    %rbx,%r12
   0.12%    ││ │    0x00007f9b22790f95:   add    %r13,%r15
   0.03%    ││ │    0x00007f9b22790f98:   or     %r12,%rdi
   0.27%    ││ │    0x00007f9b22790f9b:   add    %r14,%r10
   0.12%    ││ │    0x00007f9b22790f9e:   add    %r15,%rcx
   0.11%    ││ │    0x00007f9b22790fa1:   add    %r15,%r10
   0.04%    ││ │    0x00007f9b22790fa4:   add    %rdi,%r10
   0.24%    ││ │    0x00007f9b22790fa7:   vpsrlq $0x13,%ymm2,%ymm3
   0.13%    ││ │    0x00007f9b22790fac:   vpsllq $0x2d,%ymm2,%ymm1
   0.10%    ││ │    0x00007f9b22790fb1:   vpor   %ymm1,%ymm3,%ymm3
   0.03%    ││ │    0x00007f9b22790fb5:   vpxor  %ymm3,%ymm8,%ymm8
   0.19%    ││ │    0x00007f9b22790fb9:   vpsrlq $0x3d,%ymm2,%ymm3
   0.12%    ││ │    0x00007f9b22790fbe:   vpsllq $0x3,%ymm2,%ymm1
   0.11%    ││ │    0x00007f9b22790fc3:   vpor   %ymm1,%ymm3,%ymm3
   0.04%    ││ │    0x00007f9b22790fc7:   vpxor  %ymm3,%ymm8,%ymm8
   0.24%    ││ │    0x00007f9b22790fcb:   vpaddq %ymm8,%ymm6,%ymm6
   0.11%    ││ │    0x00007f9b22790fd0:   vpsrlq $0x6,%ymm6,%ymm8
   0.18%    ││ │    0x00007f9b22790fd5:   mov    %r10,%rdi
   0.03%    ││ │    0x00007f9b22790fd8:   rorx   $0x29,%rcx,%r13
   0.23%    ││ │    0x00007f9b22790fde:   rorx   $0x12,%rcx,%r14
   0.12%    ││ │    0x00007f9b22790fe4:   add    0x10(%rsp),%r9
   0.12%    ││ │    0x00007f9b22790fe9:   or     %rax,%rdi
   0.05%    ││ │    0x00007f9b22790fec:   mov    %r8,%r15
   0.22%    ││ │    0x00007f9b22790fef:   xor    %rdx,%r15
   0.15%    ││ │    0x00007f9b22790ff2:   rorx   $0x22,%r10,%r12
   0.10%    ││ │    0x00007f9b22790ff8:   xor    %r14,%r13
   0.06%    ││ │    0x00007f9b22790ffb:   rorx   $0xe,%rcx,%r14
   0.22%    ││ │    0x00007f9b22791001:   and    %rcx,%r15
   0.11%    ││ │    0x00007f9b22791004:   add    %r9,%rbx
   0.12%    ││ │    0x00007f9b22791007:   and    %r11,%rdi
   0.07%    ││ │    0x00007f9b2279100a:   xor    %r14,%r13
   0.24%    ││ │    0x00007f9b2279100d:   rorx   $0x27,%r10,%r14
   0.13%    ││ │    0x00007f9b22791013:   xor    %r12,%r14
   0.13%    ││ │    0x00007f9b22791016:   rorx   $0x1c,%r10,%r12
   0.06%    ││ │    0x00007f9b2279101c:   xor    %rdx,%r15
   0.20%    ││ │    0x00007f9b2279101f:   xor    %r12,%r14
   0.13%    ││ │    0x00007f9b22791022:   mov    %r10,%r12
   0.14%    ││ │    0x00007f9b22791025:   and    %rax,%r12
   0.04%    ││ │    0x00007f9b22791028:   add    %r13,%r15
   0.24%    ││ │    0x00007f9b2279102b:   or     %r12,%rdi
   0.14%    ││ │    0x00007f9b2279102e:   add    %r14,%r9
   0.13%    ││ │    0x00007f9b22791031:   add    %r15,%rbx
   0.06%    ││ │    0x00007f9b22791034:   add    %r15,%r9
   0.22%    ││ │    0x00007f9b22791037:   add    %rdi,%r9
   0.14%    ││ │    0x00007f9b2279103a:   vpsrlq $0x13,%ymm6,%ymm3
   0.13%    ││ │    0x00007f9b2279103f:   vpsllq $0x2d,%ymm6,%ymm1
   0.04%    ││ │    0x00007f9b22791044:   vpor   %ymm1,%ymm3,%ymm3
   0.20%    ││ │    0x00007f9b22791048:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f9b2279104c:   vpsrlq $0x3d,%ymm6,%ymm3
   0.15%    ││ │    0x00007f9b22791051:   vpsllq $0x3,%ymm6,%ymm1
   0.04%    ││ │    0x00007f9b22791056:   vpor   %ymm1,%ymm3,%ymm3
   0.24%    ││ │    0x00007f9b2279105a:   vpxor  %ymm3,%ymm8,%ymm8
   0.11%    ││ │    0x00007f9b2279105e:   vpaddq %ymm8,%ymm0,%ymm2
   0.14%    ││ │    0x00007f9b22791063:   vpblendd $0xf0,%ymm2,%ymm6,%ymm6
   0.11%    ││ │    0x00007f9b22791069:   mov    %r9,%rdi
   0.26%    ││ │    0x00007f9b2279106c:   rorx   $0x29,%rbx,%r13
   0.08%    ││ │    0x00007f9b22791072:   rorx   $0x12,%rbx,%r14
   0.10%    ││ │    0x00007f9b22791078:   add    0x18(%rsp),%rdx
   0.05%    ││ │    0x00007f9b2279107d:   or     %r11,%rdi
   0.21%    ││ │    0x00007f9b22791080:   mov    %rcx,%r15
   0.10%    ││ │    0x00007f9b22791083:   xor    %r8,%r15
   0.11%    ││ │    0x00007f9b22791086:   rorx   $0x22,%r9,%r12
   0.07%    ││ │    0x00007f9b2279108c:   xor    %r14,%r13
   0.22%    ││ │    0x00007f9b2279108f:   rorx   $0xe,%rbx,%r14
   0.10%    ││ │    0x00007f9b22791095:   and    %rbx,%r15
   0.09%    ││ │    0x00007f9b22791098:   add    %rdx,%rax
   0.11%    ││ │    0x00007f9b2279109b:   and    %r10,%rdi
   0.20%    ││ │    0x00007f9b2279109e:   xor    %r14,%r13
   0.09%    ││ │    0x00007f9b227910a1:   rorx   $0x27,%r9,%r14
   0.09%    ││ │    0x00007f9b227910a7:   xor    %r12,%r14
   0.08%    ││ │    0x00007f9b227910aa:   rorx   $0x1c,%r9,%r12
   0.21%    ││ │    0x00007f9b227910b0:   xor    %r8,%r15
   0.10%    ││ │    0x00007f9b227910b3:   xor    %r12,%r14
   0.12%    ││ │    0x00007f9b227910b6:   mov    %r9,%r12
   0.10%    ││ │    0x00007f9b227910b9:   and    %r11,%r12
   0.20%    ││ │    0x00007f9b227910bc:   add    %r13,%r15
   0.09%    ││ │    0x00007f9b227910bf:   or     %r12,%rdi
   0.11%    ││ │    0x00007f9b227910c2:   add    %r14,%rdx
   0.08%    ││ │    0x00007f9b227910c5:   add    %r15,%rax
   0.23%    ││ │    0x00007f9b227910c8:   add    %r15,%rdx
   0.09%    ││ │    0x00007f9b227910cb:   add    %rdi,%rdx
   0.12%    ││ │    0x00007f9b227910ce:   vpaddq 0x60(%rbp),%ymm7,%ymm0
   0.09%    ││ │    0x00007f9b227910d3:   vmovdqu %ymm0,(%rsp)
   0.23%    ││ │    0x00007f9b227910d8:   add    $0x80,%rbp
   0.08%    ││ │    0x00007f9b227910df:   vperm2f128 $0x3,%ymm5,%ymm6,%ymm0
   0.09%    ││ │    0x00007f9b227910e5:   vpalignr $0x8,%ymm5,%ymm0,%ymm0
   0.08%    ││ │    0x00007f9b227910eb:   vpaddq %ymm7,%ymm0,%ymm0
   0.32%    ││ │    0x00007f9b227910ef:   vperm2f128 $0x3,%ymm7,%ymm4,%ymm1
   0.07%    ││ │    0x00007f9b227910f5:   vpalignr $0x8,%ymm7,%ymm1,%ymm1
   0.11%    ││ │    0x00007f9b227910fb:   vpsrlq $0x1,%ymm1,%ymm2
   0.10%    ││ │    0x00007f9b22791100:   vpsllq $0x3f,%ymm1,%ymm3
   0.25%    ││ │    0x00007f9b22791105:   vpor   %ymm2,%ymm3,%ymm3
   0.09%    ││ │    0x00007f9b22791109:   vpsrlq $0x7,%ymm1,%ymm8
   0.08%    ││ │    0x00007f9b2279110e:   mov    %rdx,%rdi
   0.08%    ││ │    0x00007f9b22791111:   rorx   $0x29,%rax,%r13
   0.22%    ││ │    0x00007f9b22791117:   rorx   $0x12,%rax,%r14
   0.11%    ││ │    0x00007f9b2279111d:   add    (%rsp),%r8
   0.10%    ││ │    0x00007f9b22791121:   or     %r10,%rdi
   0.09%    ││ │    0x00007f9b22791124:   mov    %rbx,%r15
   0.24%    ││ │    0x00007f9b22791127:   xor    %rcx,%r15
   0.09%    ││ │    0x00007f9b2279112a:   rorx   $0x22,%rdx,%r12
   0.10%    ││ │    0x00007f9b22791130:   xor    %r14,%r13
   0.09%    ││ │    0x00007f9b22791133:   rorx   $0xe,%rax,%r14
   0.25%    ││ │    0x00007f9b22791139:   and    %rax,%r15
   0.12%    ││ │    0x00007f9b2279113c:   add    %r8,%r11
   0.08%    ││ │    0x00007f9b2279113f:   and    %r9,%rdi
   0.08%    ││ │    0x00007f9b22791142:   xor    %r14,%r13
   0.21%    ││ │    0x00007f9b22791145:   rorx   $0x27,%rdx,%r14
   0.06%    ││ │    0x00007f9b2279114b:   xor    %r12,%r14
   0.09%    ││ │    0x00007f9b2279114e:   rorx   $0x1c,%rdx,%r12
   0.09%    ││ │    0x00007f9b22791154:   xor    %rcx,%r15
   0.21%    ││ │    0x00007f9b22791157:   xor    %r12,%r14
   0.08%    ││ │    0x00007f9b2279115a:   mov    %rdx,%r12
   0.09%    ││ │    0x00007f9b2279115d:   and    %r10,%r12
   0.07%    ││ │    0x00007f9b22791160:   add    %r13,%r15
   0.24%    ││ │    0x00007f9b22791163:   or     %r12,%rdi
   0.09%    ││ │    0x00007f9b22791166:   add    %r14,%r8
   0.10%    ││ │    0x00007f9b22791169:   add    %r15,%r11
   0.07%    ││ │    0x00007f9b2279116c:   add    %r15,%r8
   0.28%    ││ │    0x00007f9b2279116f:   add    %rdi,%r8
   0.11%    ││ │    0x00007f9b22791172:   vpsrlq $0x8,%ymm1,%ymm2
   0.10%    ││ │    0x00007f9b22791177:   vpsllq $0x38,%ymm1,%ymm1
   0.09%    ││ │    0x00007f9b2279117c:   vpor   %ymm2,%ymm1,%ymm1
   0.23%    ││ │    0x00007f9b22791180:   vpxor  %ymm8,%ymm3,%ymm3
   0.09%    ││ │    0x00007f9b22791185:   vpxor  %ymm1,%ymm3,%ymm1
   0.11%    ││ │    0x00007f9b22791189:   vpaddq %ymm1,%ymm0,%ymm0
   0.07%    ││ │    0x00007f9b2279118d:   vperm2f128 $0x0,%ymm0,%ymm0,%ymm7
   0.22%    ││ │    0x00007f9b22791193:   vpand  %ymm10,%ymm0,%ymm0
   0.10%    ││ │    0x00007f9b22791198:   vperm2f128 $0x11,%ymm6,%ymm6,%ymm2
   0.08%    ││ │    0x00007f9b2279119e:   vpsrlq $0x6,%ymm2,%ymm8
   0.07%    ││ │    0x00007f9b227911a3:   mov    %r8,%rdi
   0.25%    ││ │    0x00007f9b227911a6:   rorx   $0x29,%r11,%r13
   0.12%    ││ │    0x00007f9b227911ac:   rorx   $0x12,%r11,%r14
   0.09%    ││ │    0x00007f9b227911b2:   add    0x8(%rsp),%rcx
   0.07%    ││ │    0x00007f9b227911b7:   or     %r9,%rdi
   0.25%    ││ │    0x00007f9b227911ba:   mov    %rax,%r15
   0.11%    ││ │    0x00007f9b227911bd:   xor    %rbx,%r15
   0.10%    ││ │    0x00007f9b227911c0:   rorx   $0x22,%r8,%r12
   0.09%    ││ │    0x00007f9b227911c6:   xor    %r14,%r13
   0.23%    ││ │    0x00007f9b227911c9:   rorx   $0xe,%r11,%r14
   0.09%    ││ │    0x00007f9b227911cf:   and    %r11,%r15
   0.08%    ││ │    0x00007f9b227911d2:   add    %rcx,%r10
   0.06%    ││ │    0x00007f9b227911d5:   and    %rdx,%rdi
   0.25%    ││ │    0x00007f9b227911d8:   xor    %r14,%r13
   0.11%    ││ │    0x00007f9b227911db:   rorx   $0x27,%r8,%r14
   0.09%    ││ │    0x00007f9b227911e1:   xor    %r12,%r14
   0.06%    ││ │    0x00007f9b227911e4:   rorx   $0x1c,%r8,%r12
   0.23%    ││ │    0x00007f9b227911ea:   xor    %rbx,%r15
   0.11%    ││ │    0x00007f9b227911ed:   xor    %r12,%r14
   0.09%    ││ │    0x00007f9b227911f0:   mov    %r8,%r12
   0.07%    ││ │    0x00007f9b227911f3:   and    %r9,%r12
   0.23%    ││ │    0x00007f9b227911f6:   add    %r13,%r15
   0.11%    ││ │    0x00007f9b227911f9:   or     %r12,%rdi
   0.07%    ││ │    0x00007f9b227911fc:   add    %r14,%rcx
   0.06%    ││ │    0x00007f9b227911ff:   add    %r15,%r10
   0.24%    ││ │    0x00007f9b22791202:   add    %r15,%rcx
   0.11%    ││ │    0x00007f9b22791205:   add    %rdi,%rcx
   0.09%    ││ │    0x00007f9b22791208:   vpsrlq $0x13,%ymm2,%ymm3
   0.07%    ││ │    0x00007f9b2279120d:   vpsllq $0x2d,%ymm2,%ymm1
   0.22%    ││ │    0x00007f9b22791212:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f9b22791216:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f9b2279121a:   vpsrlq $0x3d,%ymm2,%ymm3
   0.06%    ││ │    0x00007f9b2279121f:   vpsllq $0x3,%ymm2,%ymm1
   0.23%    ││ │    0x00007f9b22791224:   vpor   %ymm1,%ymm3,%ymm3
   0.09%    ││ │    0x00007f9b22791228:   vpxor  %ymm3,%ymm8,%ymm8
   0.10%    ││ │    0x00007f9b2279122c:   vpaddq %ymm8,%ymm7,%ymm7
   0.10%    ││ │    0x00007f9b22791231:   vpsrlq $0x6,%ymm7,%ymm8
   0.26%    ││ │    0x00007f9b22791236:   mov    %rcx,%rdi
   0.12%    ││ │    0x00007f9b22791239:   rorx   $0x29,%r10,%r13
   0.08%    ││ │    0x00007f9b2279123f:   rorx   $0x12,%r10,%r14
   0.06%    ││ │    0x00007f9b22791245:   add    0x10(%rsp),%rbx
   0.26%    ││ │    0x00007f9b2279124a:   or     %rdx,%rdi
   0.10%    ││ │    0x00007f9b2279124d:   mov    %r11,%r15
   0.07%    ││ │    0x00007f9b22791250:   xor    %rax,%r15
   0.08%    ││ │    0x00007f9b22791253:   rorx   $0x22,%rcx,%r12
   0.24%    ││ │    0x00007f9b22791259:   xor    %r14,%r13
   0.10%    ││ │    0x00007f9b2279125c:   rorx   $0xe,%r10,%r14
   0.11%    ││ │    0x00007f9b22791262:   and    %r10,%r15
   0.07%    ││ │    0x00007f9b22791265:   add    %rbx,%r9
   0.25%    ││ │    0x00007f9b22791268:   and    %r8,%rdi
   0.12%    ││ │    0x00007f9b2279126b:   xor    %r14,%r13
   0.10%    ││ │    0x00007f9b2279126e:   rorx   $0x27,%rcx,%r14
   0.08%    ││ │    0x00007f9b22791274:   xor    %r12,%r14
   0.28%    ││ │    0x00007f9b22791277:   rorx   $0x1c,%rcx,%r12
   0.10%    ││ │    0x00007f9b2279127d:   xor    %rax,%r15
   0.08%    ││ │    0x00007f9b22791280:   xor    %r12,%r14
   0.07%    ││ │    0x00007f9b22791283:   mov    %rcx,%r12
   0.24%    ││ │    0x00007f9b22791286:   and    %rdx,%r12
   0.12%    ││ │    0x00007f9b22791289:   add    %r13,%r15
   0.09%    ││ │    0x00007f9b2279128c:   or     %r12,%rdi
   0.10%    ││ │    0x00007f9b2279128f:   add    %r14,%rbx
   0.26%    ││ │    0x00007f9b22791292:   add    %r15,%r9
   0.11%    ││ │    0x00007f9b22791295:   add    %r15,%rbx
   0.08%    ││ │    0x00007f9b22791298:   add    %rdi,%rbx
   0.10%    ││ │    0x00007f9b2279129b:   vpsrlq $0x13,%ymm7,%ymm3
   0.22%    ││ │    0x00007f9b227912a0:   vpsllq $0x2d,%ymm7,%ymm1
   0.07%    ││ │    0x00007f9b227912a5:   vpor   %ymm1,%ymm3,%ymm3
   0.08%    ││ │    0x00007f9b227912a9:   vpxor  %ymm3,%ymm8,%ymm8
   0.07%    ││ │    0x00007f9b227912ad:   vpsrlq $0x3d,%ymm7,%ymm3
   0.25%    ││ │    0x00007f9b227912b2:   vpsllq $0x3,%ymm7,%ymm1
   0.13%    ││ │    0x00007f9b227912b7:   vpor   %ymm1,%ymm3,%ymm3
   0.11%    ││ │    0x00007f9b227912bb:   vpxor  %ymm3,%ymm8,%ymm8
   0.08%    ││ │    0x00007f9b227912bf:   vpaddq %ymm8,%ymm0,%ymm2
   0.25%    ││ │    0x00007f9b227912c4:   vpblendd $0xf0,%ymm2,%ymm7,%ymm7
   0.19%    ││ │    0x00007f9b227912ca:   mov    %rbx,%rdi
   0.06%    ││ │    0x00007f9b227912cd:   rorx   $0x29,%r9,%r13
   0.07%    ││ │    0x00007f9b227912d3:   rorx   $0x12,%r9,%r14
   0.20%    ││ │    0x00007f9b227912d9:   add    0x18(%rsp),%rax
   0.15%    ││ │    0x00007f9b227912de:   or     %r8,%rdi
   0.08%    ││ │    0x00007f9b227912e1:   mov    %r10,%r15
   0.04%    ││ │    0x00007f9b227912e4:   xor    %r11,%r15
   0.24%    ││ │    0x00007f9b227912e7:   rorx   $0x22,%rbx,%r12
   0.16%    ││ │    0x00007f9b227912ed:   xor    %r14,%r13
   0.07%    ││ │    0x00007f9b227912f0:   rorx   $0xe,%r9,%r14
   0.04%    ││ │    0x00007f9b227912f6:   and    %r9,%r15
   0.25%    ││ │    0x00007f9b227912f9:   add    %rax,%rdx
   0.17%    ││ │    0x00007f9b227912fc:   and    %rcx,%rdi
   0.10%    ││ │    0x00007f9b227912ff:   xor    %r14,%r13
   0.07%    ││ │    0x00007f9b22791302:   rorx   $0x27,%rbx,%r14
   0.20%    ││ │    0x00007f9b22791308:   xor    %r12,%r14
   0.15%    ││ │    0x00007f9b2279130b:   rorx   $0x1c,%rbx,%r12
   0.09%    ││ │    0x00007f9b22791311:   xor    %r11,%r15
   0.06%    ││ │    0x00007f9b22791314:   xor    %r12,%r14
   0.25%    ││ │    0x00007f9b22791317:   mov    %rbx,%r12
   0.20%    ││ │    0x00007f9b2279131a:   and    %r8,%r12
   0.07%    ││ │    0x00007f9b2279131d:   add    %r13,%r15
   0.05%    ││ │    0x00007f9b22791320:   or     %r12,%rdi
   0.16%    ││ │    0x00007f9b22791323:   add    %r14,%rax
   0.19%    ││ │    0x00007f9b22791326:   add    %r15,%rdx
   0.07%    ││ │    0x00007f9b22791329:   add    %r15,%rax
   0.07%    ││ │    0x00007f9b2279132c:   add    %rdi,%rax
   0.20%    ││ │    0x00007f9b2279132f:   subq   $0x1,0x20(%rsp)
   0.23%    │╰ │    0x00007f9b22791335:   jne    0x00007f9b227909c0
   0.02%    │  │    0x00007f9b2279133b:   movq   $0x2,0x20(%rsp)
   0.05%    │ ↗│    0x00007f9b22791344:   vpaddq 0x0(%rbp),%ymm4,%ymm0
   0.05%    │ ││    0x00007f9b22791349:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f9b2279134e:   mov    %r9,%r15
   0.07%    │ ││    0x00007f9b22791351:   rorx   $0x29,%rdx,%r13
   0.06%    │ ││    0x00007f9b22791357:   rorx   $0x12,%rdx,%r14
   0.07%    │ ││    0x00007f9b2279135d:   xor    %r10,%r15
   0.06%    │ ││    0x00007f9b22791360:   xor    %r14,%r13
   0.07%    │ ││    0x00007f9b22791363:   rorx   $0xe,%rdx,%r14
   0.07%    │ ││    0x00007f9b22791369:   and    %rdx,%r15
   0.07%    │ ││    0x00007f9b2279136c:   xor    %r14,%r13
   0.08%    │ ││    0x00007f9b2279136f:   rorx   $0x22,%rax,%r12
   0.07%    │ ││    0x00007f9b22791375:   xor    %r10,%r15
   0.05%    │ ││    0x00007f9b22791378:   rorx   $0x27,%rax,%r14
   0.04%    │ ││    0x00007f9b2279137e:   mov    %rax,%rdi
   0.06%    │ ││    0x00007f9b22791381:   xor    %r12,%r14
   0.06%    │ ││    0x00007f9b22791384:   rorx   $0x1c,%rax,%r12
   0.07%    │ ││    0x00007f9b2279138a:   add    (%rsp),%r11
   0.05%    │ ││    0x00007f9b2279138e:   or     %rcx,%rdi
   0.08%    │ ││    0x00007f9b22791391:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b22791394:   mov    %rax,%r12
   0.06%    │ ││    0x00007f9b22791397:   and    %rbx,%rdi
   0.06%    │ ││    0x00007f9b2279139a:   and    %rcx,%r12
   0.07%    │ ││    0x00007f9b2279139d:   add    %r13,%r15
   0.09%    │ ││    0x00007f9b227913a0:   add    %r11,%r8
   0.06%    │ ││    0x00007f9b227913a3:   or     %r12,%rdi
   0.06%    │ ││    0x00007f9b227913a6:   add    %r14,%r11
   0.04%    │ ││    0x00007f9b227913a9:   add    %r15,%r8
   0.08%    │ ││    0x00007f9b227913ac:   add    %r15,%r11
   0.06%    │ ││    0x00007f9b227913af:   mov    %rdx,%r15
   0.07%    │ ││    0x00007f9b227913b2:   rorx   $0x29,%r8,%r13
   0.05%    │ ││    0x00007f9b227913b8:   rorx   $0x12,%r8,%r14
   0.09%    │ ││    0x00007f9b227913be:   xor    %r9,%r15
   0.06%    │ ││    0x00007f9b227913c1:   xor    %r14,%r13
   0.07%    │ ││    0x00007f9b227913c4:   rorx   $0xe,%r8,%r14
   0.06%    │ ││    0x00007f9b227913ca:   and    %r8,%r15
   0.07%    │ ││    0x00007f9b227913cd:   add    %rdi,%r11
   0.04%    │ ││    0x00007f9b227913d0:   xor    %r14,%r13
   0.07%    │ ││    0x00007f9b227913d3:   rorx   $0x22,%r11,%r12
   0.05%    │ ││    0x00007f9b227913d9:   xor    %r9,%r15
   0.06%    │ ││    0x00007f9b227913dc:   rorx   $0x27,%r11,%r14
   0.06%    │ ││    0x00007f9b227913e2:   mov    %r11,%rdi
   0.05%    │ ││    0x00007f9b227913e5:   xor    %r12,%r14
   0.05%    │ ││    0x00007f9b227913e8:   rorx   $0x1c,%r11,%r12
   0.06%    │ ││    0x00007f9b227913ee:   add    0x8(%rsp),%r10
   0.06%    │ ││    0x00007f9b227913f3:   or     %rbx,%rdi
   0.06%    │ ││    0x00007f9b227913f6:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b227913f9:   mov    %r11,%r12
   0.05%    │ ││    0x00007f9b227913fc:   and    %rax,%rdi
   0.07%    │ ││    0x00007f9b227913ff:   and    %rbx,%r12
   0.07%    │ ││    0x00007f9b22791402:   add    %r13,%r15
   0.08%    │ ││    0x00007f9b22791405:   add    %r10,%rcx
   0.06%    │ ││    0x00007f9b22791408:   or     %r12,%rdi
   0.07%    │ ││    0x00007f9b2279140b:   add    %r14,%r10
   0.07%    │ ││    0x00007f9b2279140e:   add    %r15,%rcx
   0.06%    │ ││    0x00007f9b22791411:   add    %r15,%r10
   0.05%    │ ││    0x00007f9b22791414:   mov    %r8,%r15
   0.06%    │ ││    0x00007f9b22791417:   rorx   $0x29,%rcx,%r13
   0.08%    │ ││    0x00007f9b2279141d:   rorx   $0x12,%rcx,%r14
   0.08%    │ ││    0x00007f9b22791423:   xor    %rdx,%r15
   0.06%    │ ││    0x00007f9b22791426:   xor    %r14,%r13
   0.07%    │ ││    0x00007f9b22791429:   rorx   $0xe,%rcx,%r14
   0.08%    │ ││    0x00007f9b2279142f:   and    %rcx,%r15
   0.07%    │ ││    0x00007f9b22791432:   add    %rdi,%r10
   0.08%    │ ││    0x00007f9b22791435:   xor    %r14,%r13
   0.06%    │ ││    0x00007f9b22791438:   rorx   $0x22,%r10,%r12
   0.07%    │ ││    0x00007f9b2279143e:   xor    %rdx,%r15
   0.08%    │ ││    0x00007f9b22791441:   rorx   $0x27,%r10,%r14
   0.06%    │ ││    0x00007f9b22791447:   mov    %r10,%rdi
   0.07%    │ ││    0x00007f9b2279144a:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b2279144d:   rorx   $0x1c,%r10,%r12
   0.08%    │ ││    0x00007f9b22791453:   add    0x10(%rsp),%r9
   0.05%    │ ││    0x00007f9b22791458:   or     %rax,%rdi
   0.06%    │ ││    0x00007f9b2279145b:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b2279145e:   mov    %r10,%r12
   0.07%    │ ││    0x00007f9b22791461:   and    %r11,%rdi
   0.04%    │ ││    0x00007f9b22791464:   and    %rax,%r12
   0.08%    │ ││    0x00007f9b22791467:   add    %r13,%r15
   0.07%    │ ││    0x00007f9b2279146a:   add    %r9,%rbx
   0.06%    │ ││    0x00007f9b2279146d:   or     %r12,%rdi
   0.06%    │ ││    0x00007f9b22791470:   add    %r14,%r9
   0.06%    │ ││    0x00007f9b22791473:   add    %r15,%rbx
   0.08%    │ ││    0x00007f9b22791476:   add    %r15,%r9
   0.08%    │ ││    0x00007f9b22791479:   mov    %rcx,%r15
   0.05%    │ ││    0x00007f9b2279147c:   rorx   $0x29,%rbx,%r13
   0.09%    │ ││    0x00007f9b22791482:   rorx   $0x12,%rbx,%r14
   0.07%    │ ││    0x00007f9b22791488:   xor    %r8,%r15
   0.10%    │ ││    0x00007f9b2279148b:   xor    %r14,%r13
   0.07%    │ ││    0x00007f9b2279148e:   rorx   $0xe,%rbx,%r14
   0.06%    │ ││    0x00007f9b22791494:   and    %rbx,%r15
   0.08%    │ ││    0x00007f9b22791497:   add    %rdi,%r9
   0.07%    │ ││    0x00007f9b2279149a:   xor    %r14,%r13
   0.06%    │ ││    0x00007f9b2279149d:   rorx   $0x22,%r9,%r12
   0.05%    │ ││    0x00007f9b227914a3:   xor    %r8,%r15
   0.12%    │ ││    0x00007f9b227914a6:   rorx   $0x27,%r9,%r14
   0.06%    │ ││    0x00007f9b227914ac:   mov    %r9,%rdi
   0.04%    │ ││    0x00007f9b227914af:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b227914b2:   rorx   $0x1c,%r9,%r12
   0.07%    │ ││    0x00007f9b227914b8:   add    0x18(%rsp),%rdx
   0.04%    │ ││    0x00007f9b227914bd:   or     %r11,%rdi
   0.06%    │ ││    0x00007f9b227914c0:   xor    %r12,%r14
   0.05%    │ ││    0x00007f9b227914c3:   mov    %r9,%r12
   0.05%    │ ││    0x00007f9b227914c6:   and    %r10,%rdi
   0.08%    │ ││    0x00007f9b227914c9:   and    %r11,%r12
   0.05%    │ ││    0x00007f9b227914cc:   add    %r13,%r15
   0.07%    │ ││    0x00007f9b227914cf:   add    %rdx,%rax
   0.07%    │ ││    0x00007f9b227914d2:   or     %r12,%rdi
   0.07%    │ ││    0x00007f9b227914d5:   add    %r14,%rdx
   0.08%    │ ││    0x00007f9b227914d8:   add    %r15,%rax
   0.09%    │ ││    0x00007f9b227914db:   add    %r15,%rdx
   0.07%    │ ││    0x00007f9b227914de:   add    %rdi,%rdx
   0.08%    │ ││    0x00007f9b227914e1:   vpaddq 0x20(%rbp),%ymm5,%ymm0
   0.06%    │ ││    0x00007f9b227914e6:   vmovdqu %ymm0,(%rsp)
   0.05%    │ ││    0x00007f9b227914eb:   add    $0x40,%rbp
   0.08%    │ ││    0x00007f9b227914ef:   mov    %rbx,%r15
   0.08%    │ ││    0x00007f9b227914f2:   rorx   $0x29,%rax,%r13
   0.06%    │ ││    0x00007f9b227914f8:   rorx   $0x12,%rax,%r14
   0.06%    │ ││    0x00007f9b227914fe:   xor    %rcx,%r15
   0.09%    │ ││    0x00007f9b22791501:   xor    %r14,%r13
   0.10%    │ ││    0x00007f9b22791504:   rorx   $0xe,%rax,%r14
   0.05%    │ ││    0x00007f9b2279150a:   and    %rax,%r15
   0.05%    │ ││    0x00007f9b2279150d:   xor    %r14,%r13
   0.08%    │ ││    0x00007f9b22791510:   rorx   $0x22,%rdx,%r12
   0.09%    │ ││    0x00007f9b22791516:   xor    %rcx,%r15
   0.07%    │ ││    0x00007f9b22791519:   rorx   $0x27,%rdx,%r14
   0.05%    │ ││    0x00007f9b2279151f:   mov    %rdx,%rdi
   0.09%    │ ││    0x00007f9b22791522:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b22791525:   rorx   $0x1c,%rdx,%r12
   0.07%    │ ││    0x00007f9b2279152b:   add    (%rsp),%r8
   0.04%    │ ││    0x00007f9b2279152f:   or     %r10,%rdi
   0.05%    │ ││    0x00007f9b22791532:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b22791535:   mov    %rdx,%r12
   0.07%    │ ││    0x00007f9b22791538:   and    %r9,%rdi
   0.05%    │ ││    0x00007f9b2279153b:   and    %r10,%r12
   0.04%    │ ││    0x00007f9b2279153e:   add    %r13,%r15
   0.10%    │ ││    0x00007f9b22791541:   add    %r8,%r11
   0.07%    │ ││    0x00007f9b22791544:   or     %r12,%rdi
   0.06%    │ ││    0x00007f9b22791547:   add    %r14,%r8
   0.05%    │ ││    0x00007f9b2279154a:   add    %r15,%r11
   0.09%    │ ││    0x00007f9b2279154d:   add    %r15,%r8
   0.05%    │ ││    0x00007f9b22791550:   mov    %rax,%r15
   0.06%    │ ││    0x00007f9b22791553:   rorx   $0x29,%r11,%r13
   0.06%    │ ││    0x00007f9b22791559:   rorx   $0x12,%r11,%r14
   0.08%    │ ││    0x00007f9b2279155f:   xor    %rbx,%r15
   0.06%    │ ││    0x00007f9b22791562:   xor    %r14,%r13
   0.05%    │ ││    0x00007f9b22791565:   rorx   $0xe,%r11,%r14
   0.09%    │ ││    0x00007f9b2279156b:   and    %r11,%r15
   0.09%    │ ││    0x00007f9b2279156e:   add    %rdi,%r8
   0.07%    │ ││    0x00007f9b22791571:   xor    %r14,%r13
   0.08%    │ ││    0x00007f9b22791574:   rorx   $0x22,%r8,%r12
   0.05%    │ ││    0x00007f9b2279157a:   xor    %rbx,%r15
   0.10%    │ ││    0x00007f9b2279157d:   rorx   $0x27,%r8,%r14
   0.07%    │ ││    0x00007f9b22791583:   mov    %r8,%rdi
   0.07%    │ ││    0x00007f9b22791586:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b22791589:   rorx   $0x1c,%r8,%r12
   0.08%    │ ││    0x00007f9b2279158f:   add    0x8(%rsp),%rcx
   0.06%    │ ││    0x00007f9b22791594:   or     %r9,%rdi
   0.05%    │ ││    0x00007f9b22791597:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b2279159a:   mov    %r8,%r12
   0.06%    │ ││    0x00007f9b2279159d:   and    %rdx,%rdi
   0.06%    │ ││    0x00007f9b227915a0:   and    %r9,%r12
   0.05%    │ ││    0x00007f9b227915a3:   add    %r13,%r15
   0.06%    │ ││    0x00007f9b227915a6:   add    %rcx,%r10
   0.07%    │ ││    0x00007f9b227915a9:   or     %r12,%rdi
   0.06%    │ ││    0x00007f9b227915ac:   add    %r14,%rcx
   0.04%    │ ││    0x00007f9b227915af:   add    %r15,%r10
   0.15%    │ ││    0x00007f9b227915b2:   add    %r15,%rcx
   0.07%    │ ││    0x00007f9b227915b5:   mov    %r11,%r15
   0.06%    │ ││    0x00007f9b227915b8:   rorx   $0x29,%r10,%r13
   0.06%    │ ││    0x00007f9b227915be:   rorx   $0x12,%r10,%r14
   0.07%    │ ││    0x00007f9b227915c4:   xor    %rax,%r15
   0.10%    │ ││    0x00007f9b227915c7:   xor    %r14,%r13
   0.06%    │ ││    0x00007f9b227915ca:   rorx   $0xe,%r10,%r14
   0.08%    │ ││    0x00007f9b227915d0:   and    %r10,%r15
   0.09%    │ ││    0x00007f9b227915d3:   add    %rdi,%rcx
   0.06%    │ ││    0x00007f9b227915d6:   xor    %r14,%r13
   0.05%    │ ││    0x00007f9b227915d9:   rorx   $0x22,%rcx,%r12
   0.07%    │ ││    0x00007f9b227915df:   xor    %rax,%r15
   0.09%    │ ││    0x00007f9b227915e2:   rorx   $0x27,%rcx,%r14
   0.07%    │ ││    0x00007f9b227915e8:   mov    %rcx,%rdi
   0.06%    │ ││    0x00007f9b227915eb:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b227915ee:   rorx   $0x1c,%rcx,%r12
   0.07%    │ ││    0x00007f9b227915f4:   add    0x10(%rsp),%rbx
   0.05%    │ ││    0x00007f9b227915f9:   or     %rdx,%rdi
   0.05%    │ ││    0x00007f9b227915fc:   xor    %r12,%r14
   0.06%    │ ││    0x00007f9b227915ff:   mov    %rcx,%r12
   0.07%    │ ││    0x00007f9b22791602:   and    %r8,%rdi
   0.06%    │ ││    0x00007f9b22791605:   and    %rdx,%r12
   0.06%    │ ││    0x00007f9b22791608:   add    %r13,%r15
   0.08%    │ ││    0x00007f9b2279160b:   add    %rbx,%r9
   0.07%    │ ││    0x00007f9b2279160e:   or     %r12,%rdi
   0.07%    │ ││    0x00007f9b22791611:   add    %r14,%rbx
   0.06%    │ ││    0x00007f9b22791614:   add    %r15,%r9
   0.06%    │ ││    0x00007f9b22791617:   add    %r15,%rbx
   0.08%    │ ││    0x00007f9b2279161a:   mov    %r10,%r15
   0.07%    │ ││    0x00007f9b2279161d:   rorx   $0x29,%r9,%r13
   0.07%    │ ││    0x00007f9b22791623:   rorx   $0x12,%r9,%r14
   0.08%    │ ││    0x00007f9b22791629:   xor    %r11,%r15
   0.06%    │ ││    0x00007f9b2279162c:   xor    %r14,%r13
   0.08%    │ ││    0x00007f9b2279162f:   rorx   $0xe,%r9,%r14
   0.06%    │ ││    0x00007f9b22791635:   and    %r9,%r15
   0.08%    │ ││    0x00007f9b22791638:   add    %rdi,%rbx
   0.07%    │ ││    0x00007f9b2279163b:   xor    %r14,%r13
   0.10%    │ ││    0x00007f9b2279163e:   rorx   $0x22,%rbx,%r12
   0.06%    │ ││    0x00007f9b22791644:   xor    %r11,%r15
   0.09%    │ ││    0x00007f9b22791647:   rorx   $0x27,%rbx,%r14
   0.07%    │ ││    0x00007f9b2279164d:   mov    %rbx,%rdi
   0.07%    │ ││    0x00007f9b22791650:   xor    %r12,%r14
   0.07%    │ ││    0x00007f9b22791653:   rorx   $0x1c,%rbx,%r12
   0.08%    │ ││    0x00007f9b22791659:   add    0x18(%rsp),%rax
   0.04%    │ ││    0x00007f9b2279165e:   or     %r8,%rdi
   0.07%    │ ││    0x00007f9b22791661:   xor    %r12,%r14
   0.08%    │ ││    0x00007f9b22791664:   mov    %rbx,%r12
   0.08%    │ ││    0x00007f9b22791667:   and    %rcx,%rdi
   0.05%    │ ││    0x00007f9b2279166a:   and    %r8,%r12
   0.04%    │ ││    0x00007f9b2279166d:   add    %r13,%r15
   0.07%    │ ││    0x00007f9b22791670:   add    %rax,%rdx
   0.07%    │ ││    0x00007f9b22791673:   or     %r12,%rdi
   0.06%    │ ││    0x00007f9b22791676:   add    %r14,%rax
   0.10%    │ ││    0x00007f9b22791679:   add    %r15,%rdx
   0.10%    │ ││    0x00007f9b2279167c:   add    %r15,%rax
   0.07%    │ ││    0x00007f9b2279167f:   add    %rdi,%rax
   0.10%    │ ││    0x00007f9b22791682:   vmovdqu %ymm6,%ymm4
   0.06%    │ ││    0x00007f9b22791686:   vmovdqu %ymm7,%ymm5
   0.02%    │ ││    0x00007f9b2279168a:   subq   $0x1,0x20(%rsp)
   0.19%    │ ╰│    0x00007f9b22791690:   jne    0x00007f9b22791344
   0.03%    │  │    0x00007f9b22791696:   add    (%rsi),%rax
   0.01%    │  │    0x00007f9b22791699:   mov    %rax,(%rsi)
   0.24%    │  │    0x00007f9b2279169c:   add    0x8(%rsi),%rbx
            │  │    0x00007f9b227916a0:   mov    %rbx,0x8(%rsi)
   0.01%    │  │    0x00007f9b227916a4:   add    0x10(%rsi),%rcx
            │  │    0x00007f9b227916a8:   mov    %rcx,0x10(%rsi)
   0.09%    │  │    0x00007f9b227916ac:   add    0x18(%rsi),%r8
            │  │    0x00007f9b227916b0:   mov    %r8,0x18(%rsi)
   0.01%    │  │    0x00007f9b227916b4:   add    0x20(%rsi),%rdx
            │  │    0x00007f9b227916b8:   mov    %rdx,0x20(%rsi)
   0.11%    │  │    0x00007f9b227916bc:   add    0x28(%rsi),%r9
            │  │    0x00007f9b227916c0:   mov    %r9,0x28(%rsi)
   0.02%    │  │    0x00007f9b227916c4:   add    0x30(%rsi),%r10
            │  │    0x00007f9b227916c8:   mov    %r10,0x30(%rsi)
   0.09%    │  │    0x00007f9b227916cc:   add    0x38(%rsi),%r11
            │  │    0x00007f9b227916d0:   mov    %r11,0x38(%rsi)
   0.03%    │  │    0x00007f9b227916d4:   mov    0x28(%rsp),%rdi
            │  │    0x00007f9b227916d9:   add    $0x80,%rdi
   0.10%    │  │    0x00007f9b227916e0:   cmp    0x30(%rsp),%rdi
            │  ╰    0x00007f9b227916e5:   jne    0x00007f9b2279097b
   0.01%    ↘       0x00007f9b227916eb:   mov    0x40(%rsp),%rbp
   0.01%            0x00007f9b227916f0:   mov    0x48(%rsp),%rbx
                    0x00007f9b227916f5:   mov    0x50(%rsp),%r12
                    0x00007f9b227916fa:   mov    0x58(%rsp),%r13
   0.00%            0x00007f9b227916ff:   mov    0x60(%rsp),%r14
                    0x00007f9b22791704:   mov    0x68(%rsp),%r15
                    0x00007f9b22791709:   mov    0x38(%rsp),%rsp
                    0x00007f9b2279170e:   pop    %rcx
                    0x00007f9b2279170f:   pop    %rdx
                    0x00007f9b22791710:   mov    %rdx,%rax
   0.24%         ↗  0x00007f9b22791713:   cmp    %rcx,%rax
                ╭│  0x00007f9b22791716:   jae    0x00007f9b22791720
   0.00%        ││  0x00007f9b22791718:   add    $0x80,%rax
                │╰  0x00007f9b2279171e:   jmp    0x00007f9b22791713
   0.02%        ↘   0x00007f9b22791720:   vzeroupper 
   0.00%            0x00007f9b22791723:   leave  
   0.01%            0x00007f9b22791724:   ret    
                  --------------------------------------------------------------------------------
                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                  StubRoutines::avx2_shuffle_base64 [0x00007f9b22791740, 0x00007f9b22791760] (32 bytes)
                  --------------------------------------------------------------------------------
....................................................................................................
  96.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.04%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.12%                      <unknown> 
   0.56%              kernel  [unknown] 
   0.46%                      <unknown> 
   0.10%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.03%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1081 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.02%              kernel  [unknown] 
   1.20%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.04%        runtime stub  StubRoutines::sha512_implCompressMB 
   1.68%                      <unknown> 
   1.66%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1056 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 5, compile id 1081 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  os::vsnprintf 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.16%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.04%        runtime stub
   1.68%                    
   1.66%              kernel
   0.33%      jvmci, level 4
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-224, length = 16384)

# Run progress: 63.64% complete, ETA 00:07:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 111.529 us/op
# Warmup Iteration   2: 99.384 us/op
# Warmup Iteration   3: 99.379 us/op
# Warmup Iteration   4: 99.393 us/op
# Warmup Iteration   5: 99.379 us/op
Iteration   1: 99.376 us/op
Iteration   2: 99.388 us/op
Iteration   3: 99.382 us/op
Iteration   4: 99.373 us/op
Iteration   5: 99.403 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  99.385 ±(99.9%) 0.046 us/op [Average]
  (min, avg, max) = (99.373, 99.385, 99.403), stdev = 0.012
  CI (99.9%): [99.339, 99.430] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 247264 total address lines.
Perf output processed (skipped 60.812 seconds):
 Column 1: cycles (50619 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1044 

 <region is too big to display, has 1618 lines, but threshold is 1000>
....................................................................................................
  97.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.18%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1044 
   0.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1054 
   0.55%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1044 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1044 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1054 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1054 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              kernel  [unknown] 
   0.91%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.29%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1044 
   1.48%              kernel  [unknown] 
   0.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1054 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 1075 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.12%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.21%      jvmci, level 4
   1.48%              kernel
   0.11%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-256, length = 16384)

# Run progress: 72.73% complete, ETA 00:05:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 118.323 us/op
# Warmup Iteration   2: 105.498 us/op
# Warmup Iteration   3: 105.479 us/op
# Warmup Iteration   4: 105.474 us/op
# Warmup Iteration   5: 105.482 us/op
Iteration   1: 105.468 us/op
Iteration   2: 105.466 us/op
Iteration   3: 105.466 us/op
Iteration   4: 105.479 us/op
Iteration   5: 105.494 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  105.475 ±(99.9%) 0.046 us/op [Average]
  (min, avg, max) = (105.466, 105.475, 105.494), stdev = 0.012
  CI (99.9%): [105.429, 105.520] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 247284 total address lines.
Perf output processed (skipped 60.609 seconds):
 Column 1: cycles (50675 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1045 

 <region is too big to display, has 1604 lines, but threshold is 1000>
....................................................................................................
  97.04%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.04%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1045 
   0.81%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1053 
   0.35%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1045 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1053 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1053 
   1.08%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.13%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1045 
   1.53%              kernel  [unknown] 
   0.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1053 
   0.06%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 1075 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.17%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%      jvmci, level 4
   1.53%              kernel
   0.14%           libjvm.so
   0.12%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-384, length = 16384)

# Run progress: 81.82% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 153.101 us/op
# Warmup Iteration   2: 137.550 us/op
# Warmup Iteration   3: 137.580 us/op
# Warmup Iteration   4: 137.575 us/op
# Warmup Iteration   5: 137.575 us/op
Iteration   1: 137.566 us/op
Iteration   2: 137.587 us/op
Iteration   3: 137.576 us/op
Iteration   4: 137.555 us/op
Iteration   5: 137.550 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  137.567 ±(99.9%) 0.058 us/op [Average]
  (min, avg, max) = (137.550, 137.567, 137.587), stdev = 0.015
  CI (99.9%): [137.509, 137.625] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 247001 total address lines.
Perf output processed (skipped 60.665 seconds):
 Column 1: cycles (50972 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 

 <region is too big to display, has 1604 lines, but threshold is 1000>
....................................................................................................
  96.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.65%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   1.05%              kernel  [unknown] 
   0.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1027 
   0.25%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1027 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.99%  <...other 325 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.74%      jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1018 
   2.10%              kernel  [unknown] 
   0.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1027 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  __strchr_avx2 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.jmh_generated.MessageDigestBenchmark_digest_jmhTest::digest_avgt_jmhStub, version 4, compile id 1048 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_setb 
   0.15%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.52%      jvmci, level 4
   2.10%              kernel
   0.15%           libjvm.so
   0.13%        libc-2.31.so
   0.06%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    perf-2137404.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest
# Parameters: (algorithm = SHA3-512, length = 16384)

# Run progress: 90.91% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 226.726 us/op
# Warmup Iteration   2: 198.558 us/op
# Warmup Iteration   3: 198.467 us/op
# Warmup Iteration   4: 198.448 us/op
# Warmup Iteration   5: 198.448 us/op
Iteration   1: 198.438 us/op
Iteration   2: 198.463 us/op
Iteration   3: 198.428 us/op
Iteration   4: 198.455 us/op
Iteration   5: 198.487 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest":
  198.454 ±(99.9%) 0.089 us/op [Average]
  (min, avg, max) = (198.428, 198.454, 198.487), stdev = 0.023
  CI (99.9%): [198.366, 198.543] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark.digest:asm":
PrintAssembly processed: 246383 total address lines.
Perf output processed (skipped 60.707 seconds):
 Column 1: cycles (50733 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1034 

 <region is too big to display, has 1606 lines, but threshold is 1000>
....................................................................................................
  97.40%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.40%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1034 
   0.32%               kernel  [unknown] 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1041 
   0.19%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1041 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1034 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1041 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.01%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.50%       jvmci, level 4  sun.security.provider.DigestBase::implCompressMultiBlock0, version 3, compile id 1034 
   1.58%               kernel  [unknown] 
   0.48%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest.MessageDigestBenchmark::digest, version 2, compile id 1041 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  syscall 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  _itoa_word 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.24%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.99%       jvmci, level 4
   1.58%               kernel
   0.18%            libjvm.so
   0.10%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:20:54

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
MessageDigestBenchmark.digest              MD5     16384  avgt    5   30.431 ± 0.002  us/op
MessageDigestBenchmark.digest:asm          MD5     16384  avgt           NaN            ---
MessageDigestBenchmark.digest            SHA-1     16384  avgt    5   66.464 ± 0.051  us/op
MessageDigestBenchmark.digest:asm        SHA-1     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-224     16384  avgt    5   54.216 ± 0.048  us/op
MessageDigestBenchmark.digest:asm      SHA-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-256     16384  avgt    5   54.241 ± 0.044  us/op
MessageDigestBenchmark.digest:asm      SHA-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest          SHA-384     16384  avgt    5   37.838 ± 0.027  us/op
MessageDigestBenchmark.digest:asm      SHA-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/224     16384  avgt    5   37.790 ± 0.042  us/op
MessageDigestBenchmark.digest:asm  SHA-512/224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest      SHA-512/256     16384  avgt    5   37.843 ± 0.025  us/op
MessageDigestBenchmark.digest:asm  SHA-512/256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-224     16384  avgt    5   99.385 ± 0.046  us/op
MessageDigestBenchmark.digest:asm     SHA3-224     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-256     16384  avgt    5  105.475 ± 0.046  us/op
MessageDigestBenchmark.digest:asm     SHA3-256     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-384     16384  avgt    5  137.567 ± 0.058  us/op
MessageDigestBenchmark.digest:asm     SHA3-384     16384  avgt           NaN            ---
MessageDigestBenchmark.digest         SHA3-512     16384  avgt    5  198.454 ± 0.089  us/op
MessageDigestBenchmark.digest:asm     SHA3-512     16384  avgt           NaN            ---
