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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.853 ns/op
# Warmup Iteration   2: 12.572 ns/op
# Warmup Iteration   3: 12.833 ns/op
# Warmup Iteration   4: 12.614 ns/op
# Warmup Iteration   5: 12.531 ns/op
Iteration   1: 12.662 ns/op
Iteration   2: 12.549 ns/op
Iteration   3: 12.738 ns/op
Iteration   4: 12.626 ns/op
Iteration   5: 12.638 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill":
  12.643 ±(99.9%) 0.262 ns/op [Average]
  (min, avg, max) = (12.549, 12.643, 12.738), stdev = 0.068
  CI (99.9%): [12.381, 12.905] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_no_spill:asm":
PrintAssembly processed: 211453 total address lines.
Perf output processed (skipped 60.142 seconds):
 Column 1: cycles (50589 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 945 

                # {method} {0x00007fb61b47c398} &apos;load_store_no_spill&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fb69f23a980:   mov    0x8(%rsi),%r10d
                0x00007fb69f23a984:   movabs $0x7fb61f000000,%r12
                0x00007fb69f23a98e:   add    %r12,%r10
                0x00007fb69f23a991:   xor    %r12,%r12
                0x00007fb69f23a994:   cmp    %r10,%rax
                0x00007fb69f23a997:   jne    0x00007fb69ec2f080           ;   {runtime_call ic_miss_stub}
                0x00007fb69f23a99d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.73%        0x00007fb69f23a9a0:   mov    %eax,-0x14000(%rsp)
   2.56%        0x00007fb69f23a9a7:   sub    $0x18,%rsp
   0.76%        0x00007fb69f23a9ab:   nop
                0x00007fb69f23a9ac:   cmpl   $0x1,0x20(%r15)
   1.93%  ╭     0x00007fb69f23a9b4:   jne    0x00007fb69f23aae1
   1.27%  │ ↗   0x00007fb69f23a9ba:   mov    0xd4(%rsi),%r10d             ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@2 (line 82)
   0.16%  │ │   0x00007fb69f23a9c1:   mov    %r10d,0xd8(%rsi)             ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@5 (line 82)
   3.68%  │ │   0x00007fb69f23a9c8:   mov    0xc(%rsi),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@9 (line 84)
   0.48%  │ │   0x00007fb69f23a9cc:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@157 (line 110)
   3.22%  │ │   0x00007fb69f23a9d0:   mov    0x10(%rsi),%r10d             ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@14 (line 85)
   0.12%  │ │   0x00007fb69f23a9d4:   mov    %r10d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@162 (line 111)
   7.07%  │ │   0x00007fb69f23a9d8:   mov    0x14(%rsi),%r10d             ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@19 (line 86)
   0.41%  │ │   0x00007fb69f23a9dc:   mov    %r10d,0x78(%rsi)             ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@167 (line 112)
   1.99%  │ │   0x00007fb69f23a9e0:   mov    0x18(%rsi),%r10d             ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@24 (line 87)
   0.12%  │ │   0x00007fb69f23a9e4:   mov    %r10d,0x7c(%rsi)             ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@173 (line 113)
   2.89%  │ │   0x00007fb69f23a9e8:   mov    0x1c(%rsi),%r10d             ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@30 (line 88)
          │ │   0x00007fb69f23a9ec:   mov    %r10d,0x80(%rsi)             ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@179 (line 114)
   1.42%  │ │   0x00007fb69f23a9f3:   mov    0x20(%rsi),%r10d             ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@36 (line 89)
          │ │   0x00007fb69f23a9f7:   mov    %r10d,0x84(%rsi)             ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@185 (line 115)
   2.63%  │ │   0x00007fb69f23a9fe:   mov    0x24(%rsi),%r10d             ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@42 (line 90)
          │ │   0x00007fb69f23aa02:   mov    %r10d,0x88(%rsi)             ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@191 (line 116)
   1.68%  │ │   0x00007fb69f23aa09:   mov    0x28(%rsi),%r10d             ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@48 (line 91)
          │ │   0x00007fb69f23aa0d:   mov    %r10d,0x8c(%rsi)             ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@197 (line 117)
   3.08%  │ │   0x00007fb69f23aa14:   mov    0x2c(%rsi),%r10d             ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@54 (line 92)
          │ │   0x00007fb69f23aa18:   mov    %r10d,0x90(%rsi)             ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@203 (line 118)
   1.17%  │ │   0x00007fb69f23aa1f:   mov    0x30(%rsi),%r10d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@60 (line 93)
          │ │   0x00007fb69f23aa23:   mov    %r10d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@209 (line 119)
   2.90%  │ │   0x00007fb69f23aa2a:   mov    0x34(%rsi),%r10d             ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@66 (line 94)
          │ │   0x00007fb69f23aa2e:   mov    %r10d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@215 (line 120)
   2.87%  │ │   0x00007fb69f23aa35:   mov    0x38(%rsi),%r10d             ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@72 (line 95)
          │ │   0x00007fb69f23aa39:   mov    %r10d,0x9c(%rsi)             ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@221 (line 121)
   2.18%  │ │   0x00007fb69f23aa40:   mov    0x3c(%rsi),%r10d             ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@78 (line 96)
          │ │   0x00007fb69f23aa44:   mov    %r10d,0xa0(%rsi)             ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@227 (line 122)
   1.69%  │ │   0x00007fb69f23aa4b:   mov    0x40(%rsi),%r10d             ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@84 (line 97)
          │ │   0x00007fb69f23aa4f:   mov    %r10d,0xa4(%rsi)             ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@233 (line 123)
   3.27%  │ │   0x00007fb69f23aa56:   mov    0x44(%rsi),%r10d             ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@90 (line 98)
          │ │   0x00007fb69f23aa5a:   mov    %r10d,0xa8(%rsi)             ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@239 (line 124)
   2.30%  │ │   0x00007fb69f23aa61:   mov    0x48(%rsi),%r10d             ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@96 (line 99)
          │ │   0x00007fb69f23aa65:   mov    %r10d,0xac(%rsi)             ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@245 (line 125)
   2.83%  │ │   0x00007fb69f23aa6c:   mov    0x4c(%rsi),%r10d             ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@102 (line 100)
          │ │   0x00007fb69f23aa70:   mov    %r10d,0xb0(%rsi)             ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@251 (line 126)
   2.90%  │ │   0x00007fb69f23aa77:   mov    0x50(%rsi),%r10d             ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@108 (line 101)
          │ │   0x00007fb69f23aa7b:   mov    %r10d,0xb4(%rsi)             ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@257 (line 127)
   2.90%  │ │   0x00007fb69f23aa82:   mov    0x54(%rsi),%r10d             ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@114 (line 102)
          │ │   0x00007fb69f23aa86:   mov    %r10d,0xb8(%rsi)             ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@263 (line 128)
   2.89%  │ │   0x00007fb69f23aa8d:   mov    0x58(%rsi),%r10d             ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@120 (line 103)
          │ │   0x00007fb69f23aa91:   mov    %r10d,0xbc(%rsi)             ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@269 (line 129)
          │ │                                                             ;   {no_reloc}
   3.31%  │ │   0x00007fb69f23aa98:   mov    0x5c(%rsi),%r10d             ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@126 (line 104)
          │ │   0x00007fb69f23aa9c:   mov    %r10d,0xc0(%rsi)             ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@275 (line 130)
   3.40%  │ │   0x00007fb69f23aaa3:   mov    0x60(%rsi),%r10d             ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@132 (line 105)
          │ │   0x00007fb69f23aaa7:   mov    %r10d,0xc4(%rsi)             ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@281 (line 131)
   2.48%  │ │   0x00007fb69f23aaae:   mov    0x64(%rsi),%r10d             ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@138 (line 106)
   0.00%  │ │   0x00007fb69f23aab2:   mov    %r10d,0xc8(%rsi)             ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@287 (line 132)
   2.70%  │ │   0x00007fb69f23aab9:   mov    0x68(%rsi),%r10d             ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@144 (line 107)
          │ │   0x00007fb69f23aabd:   mov    %r10d,0xcc(%rsi)             ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@293 (line 133)
   3.31%  │ │   0x00007fb69f23aac4:   mov    0x6c(%rsi),%r10d             ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@150 (line 108)
          │ │   0x00007fb69f23aac8:   mov    %r10d,0xd0(%rsi)             ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill@299 (line 134)
   2.83%  │ │   0x00007fb69f23aacf:   add    $0x18,%rsp
          │ │↗  0x00007fb69f23aad3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fb69f23aada:   ja     0x00007fb69f23aaf1
   0.30%  ││││  0x00007fb69f23aae0:   ret    
          ↘│││  0x00007fb69f23aae1:   mov    %rbp,0x10(%rsp)
           │││  0x00007fb69f23aae6:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fb69f23aaeb:   jmp    0x00007fb69f23a9ba
           │ │  0x00007fb69f23aaf0:   hlt    
           ↘ ╰  0x00007fb69f23aaf1:   lea    -0x25(%rip),%rcx        # 0x00007fb69f23aad3
                0x00007fb69f23aaf8:   mov    %rcx,0x468(%r15)
                0x00007fb69f23aaff:   nop
                0x00007fb69f23ab00:   jmp    0x00007fb69ec36000           ;   {runtime_call SafepointBlob}
                0x00007fb69f23ab05:   hlt    
              [Exception Handler]
....................................................................................................
  82.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 

              0x00007fb69f240f90:   mov    0x18(%rsp),%rsi
              0x00007fb69f240f95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fb69f240fa0:   cmpb   $0x0,0x94(%rsi)
              0x00007fb69f240fa7:   jne    0x00007fb69f24103a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
              0x00007fb69f240fad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007fb69f240fb6:   jmp    0x00007fb69f240fcf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          │   0x00007fb69f240fbb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
   2.75%  │↗  0x00007fb69f240fc0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
          ││  0x00007fb69f240fc7:   test   %eax,(%r11)                  ;   {poll}
   0.74%  ││  0x00007fb69f240fca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@13 (line 194)
          ↘│  0x00007fb69f240fcf:   mov    0x8(%rsp),%r10
   2.30%   │  0x00007fb69f240fd4:   mov    %r10,%rsi
           │  0x00007fb69f240fd7:   call   0x00007fb69ec2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual load_store_no_spill {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
           │  0x00007fb69f240fdc:   nopl   0x400024c(%rax,%rax,1)       ;   {other}
   2.68%   │  0x00007fb69f240fe4:   mov    0x20(%rsp),%r10
   0.30%   │  0x00007fb69f240fe9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@21 (line 195)
           │  0x00007fb69f240fec:   mov    0x18(%rsp),%rsi
   2.60%   │  0x00007fb69f240ff1:   cmpb   $0x0,0x94(%rsi)
   4.09%   ╰  0x00007fb69f240ff8:   je     0x00007fb69f240fc0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@28 (line 196)
              0x00007fb69f240ffa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@31 (line 197)
              0x00007fb69f240fff:   nop
              0x00007fb69f241000:   call   0x00007fb6b65cadf0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fb69f241005:   nop
              0x00007fb69f241006:   mov    0x10(%rsp),%rdx
              0x00007fb69f24100b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub@35 (line 197)
              0x00007fb69f24100f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.46%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 945 
  15.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 
   0.31%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.11%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_no_spill, version 2, compile id 945 
  15.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_no_spill_jmhTest::load_store_no_spill_avgt_jmhStub, version 6, compile id 975 
   1.74%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%            libjvm.so  printf_to_env 
   0.00%   libpthread-2.31.so  _pthread_cleanup_push 
   0.00%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __strchr_avx2 
   0.00%            libjvm.so  MethodMatcher::matches 
   0.17%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.90%       jvmci, level 4
   1.74%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.122 ns/op
# Warmup Iteration   2: 17.184 ns/op
# Warmup Iteration   3: 17.017 ns/op
# Warmup Iteration   4: 17.016 ns/op
# Warmup Iteration   5: 17.017 ns/op
Iteration   1: 17.016 ns/op
Iteration   2: 17.017 ns/op
Iteration   3: 17.017 ns/op
Iteration   4: 17.017 ns/op
Iteration   5: 17.017 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu":
  17.017 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (17.016, 17.017, 17.017), stdev = 0.001
  CI (99.9%): [17.015, 17.018] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_no_fpu:asm":
PrintAssembly processed: 216250 total address lines.
Perf output processed (skipped 60.230 seconds):
 Column 1: cycles (50586 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 930 

                # {method} {0x00007f0fcc47c550} &apos;load_store_spill_no_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x60]  (sp of caller)
                0x00007f105323b580:   mov    0x8(%rsi),%r10d
                0x00007f105323b584:   movabs $0x7f0fd7000000,%r12
                0x00007f105323b58e:   add    %r12,%r10
                0x00007f105323b591:   xor    %r12,%r12
                0x00007f105323b594:   cmp    %r10,%rax
                0x00007f105323b597:   jne    0x00007f1052c2f080           ;   {runtime_call ic_miss_stub}
                0x00007f105323b59d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.20%        0x00007f105323b5a0:   mov    %eax,-0x14000(%rsp)
   2.11%        0x00007f105323b5a7:   sub    $0x58,%rsp
                0x00007f105323b5ab:   nop
   0.21%        0x00007f105323b5ac:   cmpl   $0x1,0x20(%r15)
   0.06%  ╭     0x00007f105323b5b4:   jne    0x00007f105323b733
   2.00%  │ ↗   0x00007f105323b5ba:   mov    0xc(%rsi),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 164)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b5be:   mov    0x10(%rsi),%r11d             ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 165)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.21%  │ │   0x00007f105323b5c2:   mov    0x14(%rsi),%r8d              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 166)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.04%  │ │   0x00007f105323b5c6:   mov    0x18(%rsi),%r9d              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 167)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.00%  │ │   0x00007f105323b5ca:   mov    0x1c(%rsi),%ecx              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 168)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b5cd:   mov    0x20(%rsi),%ebx              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 169)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.23%  │ │   0x00007f105323b5d0:   mov    0x24(%rsi),%edi              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 170)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.06%  │ │   0x00007f105323b5d3:   mov    0x28(%rsi),%edx              ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 171)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.04%  │ │   0x00007f105323b5d6:   mov    0x2c(%rsi),%eax              ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 172)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b5d9:   mov    0x30(%rsi),%r13d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 173)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.19%  │ │   0x00007f105323b5dd:   mov    0x34(%rsi),%r14d             ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 174)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.06%  │ │   0x00007f105323b5e1:   mov    %rbp,0x40(%rsp)
   2.00%  │ │   0x00007f105323b5e6:   mov    0x38(%rsi),%ebp              ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 175)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b5e9:   mov    %ebp,0x3c(%rsp)
   0.22%  │ │   0x00007f105323b5ed:   mov    0x3c(%rsi),%ebp              ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 176)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.08%  │ │   0x00007f105323b5f0:   mov    %ebp,0x38(%rsp)
   1.99%  │ │   0x00007f105323b5f4:   mov    0x40(%rsi),%ebp              ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 177)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b5f7:   mov    %ebp,0x34(%rsp)
   0.24%  │ │   0x00007f105323b5fb:   mov    0x44(%rsi),%ebp              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 178)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.06%  │ │   0x00007f105323b5fe:   mov    %ebp,0x30(%rsp)
   2.11%  │ │   0x00007f105323b602:   mov    0x48(%rsi),%ebp              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 179)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b605:   mov    %ebp,0x2c(%rsp)
   0.15%  │ │   0x00007f105323b609:   mov    0x4c(%rsi),%ebp              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 180)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.06%  │ │   0x00007f105323b60c:   mov    %ebp,0x28(%rsp)
   1.94%  │ │   0x00007f105323b610:   mov    0x50(%rsi),%ebp              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 181)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b613:   mov    %ebp,0x24(%rsp)
   0.23%  │ │   0x00007f105323b617:   mov    0x54(%rsi),%ebp              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 182)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.06%  │ │   0x00007f105323b61a:   mov    %ebp,0x20(%rsp)
   2.15%  │ │   0x00007f105323b61e:   mov    0x58(%rsi),%ebp              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 183)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b621:   mov    %ebp,0x1c(%rsp)
   0.28%  │ │   0x00007f105323b625:   mov    0x5c(%rsi),%ebp              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 184)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.04%  │ │   0x00007f105323b628:   mov    %ebp,0x18(%rsp)
   1.90%  │ │   0x00007f105323b62c:   mov    0x60(%rsi),%ebp              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 185)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b62f:   mov    %ebp,0x14(%rsp)
   2.25%  │ │   0x00007f105323b633:   mov    0x64(%rsi),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 186)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   0.01%  │ │   0x00007f105323b636:   mov    %ebp,0x10(%rsp)
   2.25%  │ │   0x00007f105323b63a:   mov    0x68(%rsi),%ebp              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 187)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b63d:   mov    %ebp,0xc(%rsp)
   2.28%  │ │   0x00007f105323b641:   mov    0x6c(%rsi),%ebp              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 188)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b644:   mov    %ebp,0x8(%rsp)
   2.18%  │ │   0x00007f105323b648:   mov    0xd4(%rsi),%ebp              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │   0x00007f105323b64e:   mov    %ebp,0xd8(%rsi)              ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   3.38%  │ │   0x00007f105323b654:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 192)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.95%  │ │   0x00007f105323b658:   mov    %r11d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 193)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.54%  │ │   0x00007f105323b65c:   mov    %r8d,0x78(%rsi)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 194)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.30%  │ │   0x00007f105323b660:   mov    %r9d,0x7c(%rsi)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 195)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.33%  │ │   0x00007f105323b664:   mov    %ecx,0x80(%rsi)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 196)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.39%  │ │   0x00007f105323b66a:   mov    %ebx,0x84(%rsi)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 197)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.54%  │ │   0x00007f105323b670:   mov    %edi,0x88(%rsi)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 198)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.29%  │ │   0x00007f105323b676:   mov    %edx,0x8c(%rsi)              ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 199)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.41%  │ │   0x00007f105323b67c:   mov    %eax,0x90(%rsi)              ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 200)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.03%  │ │   0x00007f105323b682:   mov    %r13d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 201)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.71%  │ │   0x00007f105323b689:   mov    %r14d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 202)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.83%  │ │   0x00007f105323b690:   mov    0x3c(%rsp),%ebp
   0.13%  │ │   0x00007f105323b694:   mov    %ebp,0x9c(%rsi)              ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 203)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
          │ │                                                             ;   {no_reloc}
   2.25%  │ │   0x00007f105323b69a:   mov    0x38(%rsp),%ebp
          │ │   0x00007f105323b69e:   mov    %ebp,0xa0(%rsi)              ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 204)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.04%  │ │   0x00007f105323b6a4:   mov    0x34(%rsp),%ebp
          │ │   0x00007f105323b6a8:   mov    %ebp,0xa4(%rsi)              ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 205)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.47%  │ │   0x00007f105323b6ae:   mov    0x30(%rsp),%ebp
          │ │   0x00007f105323b6b2:   mov    %ebp,0xa8(%rsi)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 206)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.06%  │ │   0x00007f105323b6b8:   mov    0x2c(%rsp),%ebp
          │ │   0x00007f105323b6bc:   mov    %ebp,0xac(%rsi)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 207)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.35%  │ │   0x00007f105323b6c2:   mov    0x28(%rsp),%ebp
          │ │   0x00007f105323b6c6:   mov    %ebp,0xb0(%rsi)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 208)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.19%  │ │   0x00007f105323b6cc:   mov    0x24(%rsp),%ebp
          │ │   0x00007f105323b6d0:   mov    %ebp,0xb4(%rsi)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 209)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.20%  │ │   0x00007f105323b6d6:   mov    0x20(%rsp),%ebp
          │ │   0x00007f105323b6da:   mov    %ebp,0xb8(%rsi)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 210)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.04%  │ │   0x00007f105323b6e0:   mov    0x1c(%rsp),%ebp
          │ │   0x00007f105323b6e4:   mov    %ebp,0xbc(%rsi)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 211)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.33%  │ │   0x00007f105323b6ea:   mov    0x18(%rsp),%ebp
          │ │   0x00007f105323b6ee:   mov    %ebp,0xc0(%rsi)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 212)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.18%  │ │   0x00007f105323b6f4:   mov    0x14(%rsp),%ebp
          │ │   0x00007f105323b6f8:   mov    %ebp,0xc4(%rsi)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 213)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.37%  │ │   0x00007f105323b6fe:   mov    0x10(%rsp),%ebp
          │ │   0x00007f105323b702:   mov    %ebp,0xc8(%rsi)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 214)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.95%  │ │   0x00007f105323b708:   mov    0xc(%rsp),%ebp
          │ │   0x00007f105323b70c:   mov    %ebp,0xcc(%rsi)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 215)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   2.40%  │ │   0x00007f105323b712:   mov    0x8(%rsp),%ebp
          │ │   0x00007f105323b716:   mov    %ebp,0xd0(%rsi)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu@1 (line 147)
   1.89%  │ │   0x00007f105323b71c:   mov    0x40(%rsp),%rbp
          │ │   0x00007f105323b721:   add    $0x58,%rsp
   0.18%  │ │↗  0x00007f105323b725:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f105323b72c:   ja     0x00007f105323b746
          ││││  0x00007f105323b732:   ret    
          ↘│││  0x00007f105323b733:   mov    %rbp,0x50(%rsp)
           │││  0x00007f105323b738:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │││  0x00007f105323b73d:   data16 xchg %ax,%ax
           │╰│  0x00007f105323b740:   jmp    0x00007f105323b5ba
           │ │  0x00007f105323b745:   hlt    
           ↘ ╰  0x00007f105323b746:   lea    -0x28(%rip),%rcx        # 0x00007f105323b725
                0x00007f105323b74d:   mov    %rcx,0x468(%r15)
                0x00007f105323b754:   jmp    0x00007f1052c36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  89.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 930 
   8.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 5, compile id 961 
   0.27%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.88%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_no_fpu, version 2, compile id 930 
   8.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_no_fpu_jmhTest::load_store_spill_no_fpu_avgt_jmhStub, version 5, compile id 961 
   1.39%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.00%      hsdis-amd64.so  putop 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  _IO_setb 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%      jvmci, level 4
   1.39%              kernel
   0.15%           libjvm.so
   0.08%        libc-2.31.so
   0.06%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
   0.00%    perf-2130149.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.122 ns/op
# Warmup Iteration   2: 17.017 ns/op
# Warmup Iteration   3: 17.063 ns/op
# Warmup Iteration   4: 17.018 ns/op
# Warmup Iteration   5: 17.017 ns/op
Iteration   1: 17.017 ns/op
Iteration   2: 17.017 ns/op
Iteration   3: 17.017 ns/op
Iteration   4: 17.017 ns/op
Iteration   5: 17.019 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu":
  17.017 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (17.017, 17.017, 17.019), stdev = 0.001
  CI (99.9%): [17.014, 17.021] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark.load_store_spill_use_fpu:asm":
PrintAssembly processed: 214127 total address lines.
Perf output processed (skipped 60.170 seconds):
 Column 1: cycles (50689 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 942 

                # {method} {0x00007fc65847f3c0} &apos;load_store_spill_use_fpu&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StackSpillingBenchmark&apos;
                #           [sp+0x60]  (sp of caller)
                0x00007fc6df239300:   mov    0x8(%rsi),%r10d
                0x00007fc6df239304:   movabs $0x7fc663000000,%r12
                0x00007fc6df23930e:   add    %r12,%r10
                0x00007fc6df239311:   xor    %r12,%r12
                0x00007fc6df239314:   cmp    %r10,%rax
                0x00007fc6df239317:   jne    0x00007fc6dec2f080           ;   {runtime_call ic_miss_stub}
                0x00007fc6df23931d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.17%        0x00007fc6df239320:   mov    %eax,-0x14000(%rsp)
   2.01%        0x00007fc6df239327:   sub    $0x58,%rsp
                0x00007fc6df23932b:   nop
   0.18%        0x00007fc6df23932c:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007fc6df239334:   jne    0x00007fc6df2394b3
   1.90%  │ ↗   0x00007fc6df23933a:   mov    0xc(%rsi),%r10d              ;*getfield load0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@1 (line 164)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df23933e:   mov    0x10(%rsi),%r11d             ;*getfield load1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@6 (line 165)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.18%  │ │   0x00007fc6df239342:   mov    0x14(%rsi),%r8d              ;*getfield load2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@11 (line 166)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239346:   mov    0x18(%rsi),%r9d              ;*getfield load3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@16 (line 167)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.10%  │ │   0x00007fc6df23934a:   mov    0x1c(%rsi),%ecx              ;*getfield load4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@22 (line 168)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df23934d:   mov    0x20(%rsi),%ebx              ;*getfield load5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@28 (line 169)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.16%  │ │   0x00007fc6df239350:   mov    0x24(%rsi),%edi              ;*getfield load6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@34 (line 170)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239353:   mov    0x28(%rsi),%edx              ;*getfield load7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@40 (line 171)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.01%  │ │   0x00007fc6df239356:   mov    0x2c(%rsi),%eax              ;*getfield load8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@46 (line 172)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239359:   mov    0x30(%rsi),%r13d             ;*getfield load9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@52 (line 173)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   0.20%  │ │   0x00007fc6df23935d:   mov    0x34(%rsi),%r14d             ;*getfield load10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@58 (line 174)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239361:   mov    %rbp,0x40(%rsp)
   1.96%  │ │   0x00007fc6df239366:   mov    0x38(%rsi),%ebp              ;*getfield load11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@64 (line 175)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239369:   mov    %ebp,0x3c(%rsp)
   0.16%  │ │   0x00007fc6df23936d:   mov    0x3c(%rsi),%ebp              ;*getfield load12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@70 (line 176)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239370:   mov    %ebp,0x38(%rsp)
   1.99%  │ │   0x00007fc6df239374:   mov    0x40(%rsi),%ebp              ;*getfield load13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@76 (line 177)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239377:   mov    %ebp,0x34(%rsp)
   0.18%  │ │   0x00007fc6df23937b:   mov    0x44(%rsi),%ebp              ;*getfield load14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@82 (line 178)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df23937e:   mov    %ebp,0x30(%rsp)
   2.03%  │ │   0x00007fc6df239382:   mov    0x48(%rsi),%ebp              ;*getfield load15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@88 (line 179)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239385:   mov    %ebp,0x2c(%rsp)
   0.19%  │ │   0x00007fc6df239389:   mov    0x4c(%rsi),%ebp              ;*getfield load16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@94 (line 180)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df23938c:   mov    %ebp,0x28(%rsp)
   1.94%  │ │   0x00007fc6df239390:   mov    0x50(%rsi),%ebp              ;*getfield load17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@100 (line 181)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df239393:   mov    %ebp,0x24(%rsp)
   0.30%  │ │   0x00007fc6df239397:   mov    0x54(%rsi),%ebp              ;*getfield load18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@106 (line 182)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df23939a:   mov    %ebp,0x20(%rsp)
   2.59%  │ │   0x00007fc6df23939e:   mov    0x58(%rsi),%ebp              ;*getfield load19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@112 (line 183)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393a1:   mov    %ebp,0x1c(%rsp)
   0.30%  │ │   0x00007fc6df2393a5:   mov    0x5c(%rsi),%ebp              ;*getfield load20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@118 (line 184)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393a8:   mov    %ebp,0x18(%rsp)
   2.04%  │ │   0x00007fc6df2393ac:   mov    0x60(%rsi),%ebp              ;*getfield load21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@124 (line 185)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393af:   mov    %ebp,0x14(%rsp)
   2.00%  │ │   0x00007fc6df2393b3:   mov    0x64(%rsi),%ebp              ;*getfield load22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@130 (line 186)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393b6:   mov    %ebp,0x10(%rsp)
   2.16%  │ │   0x00007fc6df2393ba:   mov    0x68(%rsi),%ebp              ;*getfield load23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@136 (line 187)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393bd:   mov    %ebp,0xc(%rsp)
   2.00%  │ │   0x00007fc6df2393c1:   mov    0x6c(%rsi),%ebp              ;*getfield load24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@142 (line 188)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393c4:   mov    %ebp,0x8(%rsp)
   2.18%  │ │   0x00007fc6df2393c8:   mov    0xd4(%rsi),%ebp              ;*getfield volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@149 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │   0x00007fc6df2393ce:   mov    %ebp,0xd8(%rsi)              ;*putfield non_volatile_value {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@152 (line 190)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   3.86%  │ │   0x00007fc6df2393d4:   mov    %r10d,0x70(%rsi)             ;*putfield store0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@157 (line 192)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.76%  │ │   0x00007fc6df2393d8:   mov    %r11d,0x74(%rsi)             ;*putfield store1 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@162 (line 193)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.12%  │ │   0x00007fc6df2393dc:   mov    %r8d,0x78(%rsi)              ;*putfield store2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@167 (line 194)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.01%  │ │   0x00007fc6df2393e0:   mov    %r9d,0x7c(%rsi)              ;*putfield store3 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@173 (line 195)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.14%  │ │   0x00007fc6df2393e4:   mov    %ecx,0x80(%rsi)              ;*putfield store4 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@179 (line 196)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.33%  │ │   0x00007fc6df2393ea:   mov    %ebx,0x84(%rsi)              ;*putfield store5 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@185 (line 197)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.58%  │ │   0x00007fc6df2393f0:   mov    %edi,0x88(%rsi)              ;*putfield store6 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@191 (line 198)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.39%  │ │   0x00007fc6df2393f6:   mov    %edx,0x8c(%rsi)              ;*putfield store7 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@197 (line 199)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.35%  │ │   0x00007fc6df2393fc:   mov    %eax,0x90(%rsi)              ;*putfield store8 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@203 (line 200)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.35%  │ │   0x00007fc6df239402:   mov    %r13d,0x94(%rsi)             ;*putfield store9 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@209 (line 201)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.96%  │ │   0x00007fc6df239409:   mov    %r14d,0x98(%rsi)             ;*putfield store10 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@215 (line 202)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.60%  │ │   0x00007fc6df239410:   mov    0x3c(%rsp),%ebp
   0.03%  │ │   0x00007fc6df239414:   mov    %ebp,0x9c(%rsi)              ;*putfield store11 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@221 (line 203)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
          │ │                                                             ;   {no_reloc}
   2.41%  │ │   0x00007fc6df23941a:   mov    0x38(%rsp),%ebp
          │ │   0x00007fc6df23941e:   mov    %ebp,0xa0(%rsi)              ;*putfield store12 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@227 (line 204)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.23%  │ │   0x00007fc6df239424:   mov    0x34(%rsp),%ebp
          │ │   0x00007fc6df239428:   mov    %ebp,0xa4(%rsi)              ;*putfield store13 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@233 (line 205)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.69%  │ │   0x00007fc6df23942e:   mov    0x30(%rsp),%ebp
          │ │   0x00007fc6df239432:   mov    %ebp,0xa8(%rsi)              ;*putfield store14 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@239 (line 206)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.78%  │ │   0x00007fc6df239438:   mov    0x2c(%rsp),%ebp
          │ │   0x00007fc6df23943c:   mov    %ebp,0xac(%rsi)              ;*putfield store15 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@245 (line 207)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.22%  │ │   0x00007fc6df239442:   mov    0x28(%rsp),%ebp
          │ │   0x00007fc6df239446:   mov    %ebp,0xb0(%rsi)              ;*putfield store16 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@251 (line 208)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.50%  │ │   0x00007fc6df23944c:   mov    0x24(%rsp),%ebp
          │ │   0x00007fc6df239450:   mov    %ebp,0xb4(%rsi)              ;*putfield store17 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@257 (line 209)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.10%  │ │   0x00007fc6df239456:   mov    0x20(%rsp),%ebp
          │ │   0x00007fc6df23945a:   mov    %ebp,0xb8(%rsi)              ;*putfield store18 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@263 (line 210)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.18%  │ │   0x00007fc6df239460:   mov    0x1c(%rsp),%ebp
          │ │   0x00007fc6df239464:   mov    %ebp,0xbc(%rsi)              ;*putfield store19 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@269 (line 211)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.45%  │ │   0x00007fc6df23946a:   mov    0x18(%rsp),%ebp
          │ │   0x00007fc6df23946e:   mov    %ebp,0xc0(%rsi)              ;*putfield store20 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@275 (line 212)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.17%  │ │   0x00007fc6df239474:   mov    0x14(%rsp),%ebp
          │ │   0x00007fc6df239478:   mov    %ebp,0xc4(%rsi)              ;*putfield store21 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@281 (line 213)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.51%  │ │   0x00007fc6df23947e:   mov    0x10(%rsp),%ebp
          │ │   0x00007fc6df239482:   mov    %ebp,0xc8(%rsi)              ;*putfield store22 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@287 (line 214)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   1.99%  │ │   0x00007fc6df239488:   mov    0xc(%rsp),%ebp
          │ │   0x00007fc6df23948c:   mov    %ebp,0xcc(%rsi)              ;*putfield store23 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@293 (line 215)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.40%  │ │   0x00007fc6df239492:   mov    0x8(%rsp),%ebp
          │ │   0x00007fc6df239496:   mov    %ebp,0xd0(%rsi)              ;*putfield store24 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill@299 (line 216)
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu@1 (line 140)
   2.06%  │ │   0x00007fc6df23949c:   mov    0x40(%rsp),%rbp
          │ │   0x00007fc6df2394a1:   add    $0x58,%rsp
   0.22%  │ │↗  0x00007fc6df2394a5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fc6df2394ac:   ja     0x00007fc6df2394c6
          ││││  0x00007fc6df2394b2:   ret    
          ↘│││  0x00007fc6df2394b3:   mov    %rbp,0x50(%rsp)
           │││  0x00007fc6df2394b8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │││  0x00007fc6df2394bd:   data16 xchg %ax,%ax
           │╰│  0x00007fc6df2394c0:   jmp    0x00007fc6df23933a
           │ │  0x00007fc6df2394c5:   hlt    
           ↘ ╰  0x00007fc6df2394c6:   lea    -0x28(%rip),%rcx        # 0x00007fc6df2394a5
                0x00007fc6df2394cd:   mov    %rcx,0x468(%r15)
                0x00007fc6df2394d4:   jmp    0x00007fc6dec36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  89.32%  <total for region 1>

....[Hottest Regions]...............................................................................
  89.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 942 
   8.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 976 
   0.43%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.86%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.32%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StackSpillingBenchmark::load_store_spill_use_fpu, version 2, compile id 942 
   8.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StackSpillingBenchmark_load_store_spill_use_fpu_jmhTest::load_store_spill_use_fpu_avgt_jmhStub, version 6, compile id 976 
   1.58%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.00%         libc-2.31.so  __vsnprintf_internal 
   0.00%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.18%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.58%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2130215.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:40

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

Benchmark                                            Mode  Cnt   Score   Error  Units
StackSpillingBenchmark.load_store_no_spill           avgt    5  12.643 ± 0.262  ns/op
StackSpillingBenchmark.load_store_no_spill:asm       avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_no_fpu       avgt    5  17.017 ± 0.002  ns/op
StackSpillingBenchmark.load_store_spill_no_fpu:asm   avgt          NaN            ---
StackSpillingBenchmark.load_store_spill_use_fpu      avgt    5  17.017 ± 0.004  ns/op
StackSpillingBenchmark.load_store_spill_use_fpu:asm  avgt          NaN            ---
