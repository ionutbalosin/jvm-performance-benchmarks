# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls

# Run progress: 0.00% complete, ETA 00:03:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.519 ns/op
# Warmup Iteration   2: 7.478 ns/op
# Warmup Iteration   3: 7.362 ns/op
Iteration   1: 7.111 ns/op
Iteration   2: 7.089 ns/op
Iteration   3: 7.085 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls":
  7.095 ±(99.9%) 0.252 ns/op [Average]
  (min, avg, max) = (7.085, 7.095, 7.111), stdev = 0.014
  CI (99.9%): [6.843, 7.347] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls:asm":
PrintAssembly processed: 217015 total address lines.
Perf output processed (skipped 64.959 seconds):
 Column 1: cycles (30322 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1079 

              0x00007f6072da4ff3:   mov    0x10(%rsp),%rdx
              0x00007f6072da4ff8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@10 (line 188)
              0x00007f6072da4ffc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f6072da5005:   jmp    0x00007f6072da502f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007f6072da500a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f6072da5015:   data16 data16 xchg %ax,%ax
          │   0x00007f6072da5019:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
   2.84%  │↗  0x00007f6072da5020:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
   8.74%  ││  0x00007f6072da5027:   test   %eax,(%r11)                  ;   {poll}
   0.61%  ││  0x00007f6072da502a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@13 (line 190)
   3.59%  ↘│  0x00007f6072da502f:   mov    0x8(%rsp),%r10
   2.77%   │  0x00007f6072da5034:   mov    %r10,%rsi
   8.58%   │  0x00007f6072da5037:   call   0x00007f60726f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  10.48%   │  0x00007f6072da503c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.51%   │  0x00007f6072da5044:   mov    0x20(%rsp),%r10
   6.50%   │  0x00007f6072da5049:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@26 (line 191)
   9.19%   │  0x00007f6072da504c:   mov    0x18(%rsp),%rsi
   0.46%   │  0x00007f6072da5051:   cmpb   $0x0,0x94(%rsi)
   3.94%   ╰  0x00007f6072da5058:   je     0x00007f6072da5020           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 192)
              0x00007f6072da505a:   mov    %r10,0x20(%rsp)
              0x00007f6072da505f:   nop
              0x00007f6072da5060:   call   0x00007f608a2d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f6072da5065:   nop
              0x00007f6072da5066:   mov    0x10(%rsp),%rdx
              0x00007f6072da506b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 193)
              0x00007f6072da506f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 194)
....................................................................................................
  58.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1050 

                # {method} {0x00007f5fe4479750} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f6072d9f000:   mov    0x8(%rsi),%r10d
                0x00007f6072d9f004:   movabs $0x7f5fef000000,%r12
                0x00007f6072d9f00e:   add    %r12,%r10
                0x00007f6072d9f011:   xor    %r12,%r12
                0x00007f6072d9f014:   cmp    %r10,%rax
                0x00007f6072d9f017:   jne    0x00007f60726f9080           ;   {runtime_call ic_miss_stub}
                0x00007f6072d9f01d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   4.16%        0x00007f6072d9f020:   mov    %eax,-0x14000(%rsp)
  10.90%        0x00007f6072d9f027:   sub    $0x18,%rsp
   0.41%        0x00007f6072d9f02b:   nop
   3.78%        0x00007f6072d9f02c:   cmpl   $0x0,0x20(%r15)
   2.77%  ╭     0x00007f6072d9f034:   jne    0x00007f6072d9f04f
   8.45%  │ ↗   0x00007f6072d9f03a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls@71 (line 95)
   0.43%  │ │   0x00007f6072d9f03d:   add    $0x18,%rsp
   3.92%  │ │↗  0x00007f6072d9f041:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f6072d9f048:   ja     0x00007f6072d9f05c
   2.74%  ││││  0x00007f6072d9f04e:   ret    
          ↘│││  0x00007f6072d9f04f:   mov    %rbp,0x10(%rsp)
           │││  0x00007f6072d9f054:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007f6072d9f059:   jmp    0x00007f6072d9f03a
           │ │  0x00007f6072d9f05b:   hlt    
           ↘ ╰  0x00007f6072d9f05c:   lea    -0x22(%rip),%rcx        # 0x00007f6072d9f041
                0x00007f6072d9f063:   mov    %rcx,0x468(%r15)
                0x00007f6072d9f06a:   jmp    0x00007f6072700000           ;   {runtime_call SafepointBlob}
                0x00007f6072d9f06f:   hlt    
              [Exception Handler]
                0x00007f6072d9f070:   call   0x00007f607290ab80           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  37.54%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.22%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1079 
  37.54%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1050 
   0.30%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.07%                kernel  [unknown] 
   1.40%  <...other 187 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.22%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1079 
  37.54%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls, version 2, compile id 1050 
   3.63%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.07%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  xmlStream::write_text 
   0.02%                        <unknown> 
   0.02%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%           interpreter  invokestatic  184 invokestatic  
   0.01%           interpreter  return entry points  
   0.01%             libjvm.so  Mutex::lock 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libjvm.so  WatcherThread::sleep 
   0.01%             libc.so.6  _itoa_word 
   0.01%             libjvm.so  decode_env::print_hook_comments 
   0.29%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.76%        jvmci, level 4
   3.63%                kernel
   0.32%             libjvm.so
   0.11%             libc.so.6
   0.07%   libjvmcicompiler.so
   0.05%           interpreter
   0.02%        hsdis-amd64.so
   0.02%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%             libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink

# Run progress: 33.33% complete, ETA 00:03:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 14.682 ns/op
# Warmup Iteration   2: 13.003 ns/op
# Warmup Iteration   3: 13.059 ns/op
Iteration   1: 12.908 ns/op
Iteration   2: 12.734 ns/op
Iteration   3: 12.859 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink":
  12.833 ±(99.9%) 1.638 ns/op [Average]
  (min, avg, max) = (12.734, 12.833, 12.908), stdev = 0.090
  CI (99.9%): [11.195, 14.471] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm":
PrintAssembly processed: 219515 total address lines.
Perf output processed (skipped 65.153 seconds):
 Column 1: cycles (30494 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink, version 2, compile id 1094 

                 # {method} {0x00007fba93482d08} &apos;chain_method_calls_after_sink&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007fbb1ad9e320:   mov    0x8(%rsi),%r10d
                 0x00007fbb1ad9e324:   movabs $0x7fba97000000,%r12
                 0x00007fbb1ad9e32e:   add    %r12,%r10
                 0x00007fbb1ad9e331:   xor    %r12,%r12
                 0x00007fbb1ad9e334:   cmp    %r10,%rax
                 0x00007fbb1ad9e337:   jne    0x00007fbb1a6f9080           ;   {runtime_call ic_miss_stub}
                 0x00007fbb1ad9e33d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.12%         0x00007fbb1ad9e340:   mov    %eax,-0x14000(%rsp)
   8.14%         0x00007fbb1ad9e347:   sub    $0x18,%rsp
   0.06%         0x00007fbb1ad9e34b:   nop
                 0x00007fbb1ad9e34c:   cmpl   $0x0,0x20(%r15)
   0.11%  ╭      0x00007fbb1ad9e354:   jne    0x00007fbb1ad9e392
   8.08%  │ ↗    0x00007fbb1ad9e35a:   mov    %rbp,0x10(%rsp)
   0.10%  │ │    0x00007fbb1ad9e35f:   mov    %rsi,%r10
   0.01%  │ │    0x00007fbb1ad9e362:   mov    %r10,(%rsp)
   0.09%  │ │    0x00007fbb1ad9e366:   nop
   8.03%  │ │    0x00007fbb1ad9e367:   call   0x00007fbb1a6f9380           ; ImmutableOopMap {[0]=Oop }
          │ │                                                              ;*invokevirtual sink {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@70 (line 110)
          │ │                                                              ;   {optimized virtual_call}
   9.35%  │ │    0x00007fbb1ad9e36c:   nopl   0x1dc(%rax,%rax,1)           ;   {other}
   0.11%  │ │    0x00007fbb1ad9e374:   mov    (%rsp),%rsi
   0.04%  │ │    0x00007fbb1ad9e378:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink@75 (line 112)
   8.46%  │ │    0x00007fbb1ad9e37b:   mov    0x10(%rsp),%rbp
   0.05%  │ │    0x00007fbb1ad9e380:   add    $0x18,%rsp
          │ │↗   0x00007fbb1ad9e384:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││   0x00007fbb1ad9e38b:   ja     0x00007fbb1ad9e39f
   0.02%  ││││   0x00007fbb1ad9e391:   ret    
          ↘│││   0x00007fbb1ad9e392:   mov    %rbp,0x10(%rsp)
           │││   0x00007fbb1ad9e397:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│   0x00007fbb1ad9e39c:   jmp    0x00007fbb1ad9e35a
           │ │   0x00007fbb1ad9e39e:   hlt    
           ↘ ╰   0x00007fbb1ad9e39f:   lea    -0x22(%rip),%rcx        # 0x00007fbb1ad9e384
                 0x00007fbb1ad9e3a6:   mov    %rcx,0x468(%r15)
                 0x00007fbb1ad9e3ad:   jmp    0x00007fbb1a700000           ;   {runtime_call SafepointBlob}
                 0x00007fbb1ad9e3b2:   hlt    
               [Exception Handler]
                 0x00007fbb1ad9e3b3:   call   0x00007fbb1a90c780           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                 0x00007fbb1ad9e3b8:   nop
               [Deopt Handler Code]
                 0x00007fbb1ad9e3b9:   call   0x00007fbb1a6fef20           ;   {runtime_call DeoptimizationBlob}
                 0x00007fbb1ad9e3be:   nop
                 0x00007fbb1ad9e3bf:   hlt    
               [Stub Code]
                 0x00007fbb1ad9e3c0:   movabs $0x0,%rbx                    ;   {no_reloc}
              ╰  0x00007fbb1ad9e3ca:   jmp    0x00007fbb1ad9e3ca           ;   {runtime_call}
                 0x00007fbb1ad9e3cf:   hlt    
               --------------------------------------------------------------------------------
               [/Disassembly]
               </print_nmethod>
               <task_queued compile_id='1100' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark chainMethod6 (ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)I' bytes='15' count='15872' iicount='15872' stamp='34,082' comment='tiered' hot_count='15872'/>
               <nmethod compile_id='1093' compiler='jvmci' level='4' entry='0x00007fbb1ad9e680' size='576' address='0x00007fbb1ad9e510' relocation_offset='344' insts_offset='368' stub_offset='491' scopes_data_offset='504' scopes_pcs_offset='512' dependencies_offset='544' oops_offset='496' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark sink ()V' bytes='1' count='28184' iicount='28191' stamp='34,084'/>
               <make_not_entrant thread='14169' compile_id='1082' compiler='c1' level='3' stamp='34,084'/>
               <print_nmethod compile_id='1093' compiler='jvmci' level='4' stamp='34,084'>
               =========================== JVMCI-compiled nmethod =============================
               ----------------------------------- Assembly -----------------------------------
               Compiled method (JVMCI)   34084 1093       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::sink (1 bytes)
                total in heap  [0x00007fbb1ad9e510,0x00007fbb1ad9e750] = 576
                relocation     [0x00007fbb1ad9e668,0x00007fbb1ad9e678] = 16
                main code      [0x00007fbb1ad9e680,0x00007fbb1ad9e6fb] = 123
                stub code      [0x00007fbb1ad9e6fb,0x00007fbb1ad9e700] = 5
                oops           [0x00007fbb1ad9e700,0x00007fbb1ad9e708] = 8
                scopes data    [0x00007fbb1ad9e708,0x00007fbb1ad9e710] = 8
                scopes pcs     [0x00007fbb1ad9e710,0x00007fbb1ad9e730] = 32
                dependencies   [0x00007fbb1ad9e730,0x00007fbb1ad9e738] = 8
                JVMCI data     [0x00007fbb1ad9e738,0x00007fbb1ad9e750] = 24
               [Disassembly]
               --------------------------------------------------------------------------------
               [Constant Pool (empty)]
               --------------------------------------------------------------------------------
               [Entry Point]
                 # {method} {0x00007fba934836c0} &apos;sink&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007fbb1ad9e680:   mov    0x8(%rsi),%r10d
                 0x00007fbb1ad9e684:   movabs $0x7fba97000000,%r12
                 0x00007fbb1ad9e68e:   add    %r12,%r10
                 0x00007fbb1ad9e691:   xor    %r12,%r12
                 0x00007fbb1ad9e694:   cmp    %r10,%rax
                 0x00007fbb1ad9e697:   jne    0x00007fbb1a6f9080           ;   {runtime_call ic_miss_stub}
                 0x00007fbb1ad9e69d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   0.17%         0x00007fbb1ad9e6a0:   mov    %eax,-0x14000(%rsp)
   8.22%         0x00007fbb1ad9e6a7:   sub    $0x18,%rsp
   0.13%         0x00007fbb1ad9e6ab:   nop
   0.01%         0x00007fbb1ad9e6ac:   cmpl   $0x1,0x20(%r15)
   0.06%         0x00007fbb1ad9e6b4:   jne    0x00007fbb1ad9e6ce
   8.44%         0x00007fbb1ad9e6ba:   add    $0x18,%rsp
   0.10%         0x00007fbb1ad9e6be:   xchg   %ax,%ax
                 0x00007fbb1ad9e6c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  59.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1130 

              0x00007fbb1ada6ff3:   mov    0x10(%rsp),%rdx
              0x00007fbb1ada6ff8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@10 (line 188)
              0x00007fbb1ada6ffc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fbb1ada7005:   jmp    0x00007fbb1ada702f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@13 (line 190)
          │   0x00007fbb1ada700a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fbb1ada7015:   data16 data16 xchg %ax,%ax
          │   0x00007fbb1ada7019:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   0.11%  │↗  0x00007fbb1ada7020:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
   8.25%  ││  0x00007fbb1ada7027:   test   %eax,(%r11)                  ;   {poll}
   0.09%  ││  0x00007fbb1ada702a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@13 (line 190)
   0.00%  ↘│  0x00007fbb1ada702f:   mov    0x8(%rsp),%r10
   0.12%   │  0x00007fbb1ada7034:   mov    %r10,%rsi
   8.06%   │  0x00007fbb1ada7037:   call   0x00007fbb1a6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual chain_method_calls_after_sink {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
   8.53%   │  0x00007fbb1ada703c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.10%   │  0x00007fbb1ada7044:   mov    0x20(%rsp),%r10
   0.33%   │  0x00007fbb1ada7049:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@26 (line 191)
   8.39%   │  0x00007fbb1ada704c:   mov    0x18(%rsp),%rsi
   0.07%   │  0x00007fbb1ada7051:   cmpb   $0x0,0x94(%rsi)
   0.30%   ╰  0x00007fbb1ada7058:   je     0x00007fbb1ada7020           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@33 (line 192)
              0x00007fbb1ada705a:   mov    %r10,0x20(%rsp)
              0x00007fbb1ada705f:   nop
              0x00007fbb1ada7060:   call   0x00007fbb348d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbb1ada7065:   nop
              0x00007fbb1ada7066:   mov    0x10(%rsp),%rdx
              0x00007fbb1ada706b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@40 (line 193)
              0x00007fbb1ada706f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub@46 (line 194)
....................................................................................................
  34.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink, version 2, compile id 1094 
  34.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1130 
   0.32%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.68%  <...other 366 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.98%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::chain_method_calls_after_sink, version 2, compile id 1094 
  34.36%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_chain_method_calls_after_sink_jmhTest::chain_method_calls_after_sink_avgt_jmhStub, version 6, compile id 1130 
   4.69%                kernel  [unknown] 
   0.47%                        <unknown> 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libjvm.so  fileStream::write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%           interpreter  invokespecial  183 invokespecial  
   0.01%             libc.so.6  malloc 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  _IO_fflush 
   0.26%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.34%        jvmci, level 4
   4.69%                kernel
   0.47%                      
   0.29%             libjvm.so
   0.13%             libc.so.6
   0.05%           interpreter
   0.02%        hsdis-amd64.so
   0.01%           c1, level 3
   0.00%            libjava.so
   0.00%  ld-linux-x86-64.so.2
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 3 iterations, 10 s each
# Measurement: 3 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls

# Run progress: 66.67% complete, ETA 00:01:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.424 ns/op
# Warmup Iteration   2: 7.385 ns/op
# Warmup Iteration   3: 7.248 ns/op
Iteration   1: 7.155 ns/op
Iteration   2: 7.125 ns/op
Iteration   3: 7.137 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls":
  7.139 ±(99.9%) 0.282 ns/op [Average]
  (min, avg, max) = (7.125, 7.139, 7.155), stdev = 0.015
  CI (99.9%): [6.857, 7.421] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 215030 total address lines.
Perf output processed (skipped 64.896 seconds):
 Column 1: cycles (30497 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1084 

              0x00007fccbada3d73:   mov    0x10(%rsp),%rdx
              0x00007fccbada3d78:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@10 (line 188)
              0x00007fccbada3d7c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fccbada3d85:   jmp    0x00007fccbada3daf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
          │   0x00007fccbada3d8a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fccbada3d95:   data16 data16 xchg %ax,%ax
          │   0x00007fccbada3d99:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   2.51%  │↗  0x00007fccbada3da0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
   9.73%  ││  0x00007fccbada3da7:   test   %eax,(%r11)                  ;   {poll}
   0.50%  ││  0x00007fccbada3daa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@13 (line 190)
   2.91%  ↘│  0x00007fccbada3daf:   mov    0x8(%rsp),%r10
   2.40%   │  0x00007fccbada3db4:   mov    %r10,%rsi
   9.41%   │  0x00007fccbada3db7:   call   0x00007fccba6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual recursive_method_calls {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  11.44%   │  0x00007fccbada3dbc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
   0.55%   │  0x00007fccbada3dc4:   mov    0x20(%rsp),%r10
   5.46%   │  0x00007fccbada3dc9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@26 (line 191)
   9.84%   │  0x00007fccbada3dcc:   mov    0x18(%rsp),%rsi
   0.46%   │  0x00007fccbada3dd1:   cmpb   $0x0,0x94(%rsi)
   3.00%   ╰  0x00007fccbada3dd8:   je     0x00007fccbada3da0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@33 (line 192)
              0x00007fccbada3dda:   mov    %r10,0x20(%rsp)
              0x00007fccbada3ddf:   nop
              0x00007fccbada3de0:   call   0x00007fccd46d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fccbada3de5:   nop
              0x00007fccbada3de6:   mov    0x10(%rsp),%rdx
              0x00007fccbada3deb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@40 (line 193)
              0x00007fccbada3def:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub@46 (line 194)
....................................................................................................
  58.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1050 

                # {method} {0x00007fcc334823c0} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/DeadArgumentEliminationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fccbad9ce00:   mov    0x8(%rsi),%r10d
                0x00007fccbad9ce04:   movabs $0x7fcc37000000,%r12
                0x00007fccbad9ce0e:   add    %r12,%r10
                0x00007fccbad9ce11:   xor    %r12,%r12
                0x00007fccbad9ce14:   cmp    %r10,%rax
                0x00007fccbad9ce17:   jne    0x00007fccba6f9080           ;   {runtime_call ic_miss_stub}
                0x00007fccbad9ce1d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   3.43%        0x00007fccbad9ce20:   mov    %eax,-0x14000(%rsp)
  11.93%        0x00007fccbad9ce27:   sub    $0x18,%rsp
   0.44%        0x00007fccbad9ce2b:   nop
   2.67%        0x00007fccbad9ce2c:   cmpl   $0x1,0x20(%r15)
   2.33%  ╭     0x00007fccbad9ce34:   jne    0x00007fccbad9ce4f
   9.36%  │ ↗   0x00007fccbad9ce3a:   mov    0x10(%rsi),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls@73 (line 80)
   0.55%  │ │   0x00007fccbad9ce3d:   add    $0x18,%rsp
   2.91%  │ │↗  0x00007fccbad9ce41:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fccbad9ce48:   ja     0x00007fccbad9ce5c
   2.49%  ││││  0x00007fccbad9ce4e:   ret    
          ↘│││  0x00007fccbad9ce4f:   mov    %rbp,0x10(%rsp)
           │││  0x00007fccbad9ce54:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fccbad9ce59:   jmp    0x00007fccbad9ce3a
           │ │  0x00007fccbad9ce5b:   hlt    
           ↘ ╰  0x00007fccbad9ce5c:   lea    -0x22(%rip),%rcx        # 0x00007fccbad9ce41
                0x00007fccbad9ce63:   mov    %rcx,0x468(%r15)
                0x00007fccbad9ce6a:   jmp    0x00007fccba700000           ;   {runtime_call SafepointBlob}
                0x00007fccbad9ce6f:   hlt    
              [Exception Handler]
                0x00007fccbad9ce70:   call   0x00007fccba90ab80           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  36.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1084 
  36.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1050 
   0.37%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   2.41%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.DeadArgumentEliminationBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 1084 
  36.12%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.DeadArgumentEliminationBenchmark::recursive_method_calls, version 2, compile id 1050 
   4.72%                kernel  [unknown] 
   0.05%   libjvmcicompiler.so  java.nio.Buffer::Buffer 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libjvm.so  fileStream::write 
   0.02%                        <unknown> 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  constantPoolHandle::~constantPoolHandle 
   0.01%             libjvm.so  memcpy@plt 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%   libjvmcicompiler.so  jdk.vm.ci.meta.MetaUtil::toInternalName 
   0.01%             libc.so.6  syscall 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.code.IsolateEnterStub::JNIFunctions_NewStringUTF_c237fd4ef354165a4519a443538676a09b4268ca 
   0.56%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.33%        jvmci, level 4
   4.72%                kernel
   0.36%   libjvmcicompiler.so
   0.30%             libjvm.so
   0.16%             libc.so.6
   0.04%           interpreter
   0.04%        hsdis-amd64.so
   0.02%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%        libz.so.1.2.11
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:09

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

Benchmark                                                           Mode  Cnt   Score   Error  Units
DeadArgumentEliminationBenchmark.chain_method_calls                 avgt    3   7.095 ± 0.252  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls:asm             avgt          NaN            ---
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink      avgt    3  12.833 ± 1.638  ns/op
DeadArgumentEliminationBenchmark.chain_method_calls_after_sink:asm  avgt          NaN            ---
DeadArgumentEliminationBenchmark.recursive_method_calls             avgt    3   7.139 ± 0.282  ns/op
DeadArgumentEliminationBenchmark.recursive_method_calls:asm         avgt          NaN            ---
