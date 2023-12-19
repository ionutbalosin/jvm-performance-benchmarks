# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 389.325 ns/op
# Warmup Iteration   2: 389.312 ns/op
# Warmup Iteration   3: 383.054 ns/op
# Warmup Iteration   4: 381.681 ns/op
# Warmup Iteration   5: 382.004 ns/op
Iteration   1: 382.320 ns/op
Iteration   2: 379.690 ns/op
Iteration   3: 384.169 ns/op
Iteration   4: 386.458 ns/op
Iteration   5: 389.580 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  384.443 ±(99.9%) 14.615 ns/op [Average]
  (min, avg, max) = (379.690, 384.443, 389.580), stdev = 3.795
  CI (99.9%): [369.829, 399.058] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_non_static_method:asm":
PrintAssembly processed: 223408 total address lines.
Perf output processed (skipped 84.686 seconds):
 Column 1: cycles (51251 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1063 

                                       # parm0:    rdx       = int
                                       #           [sp+0x20]  (sp of caller)
                                       0x00007f017ed9e5a0:   mov    0x8(%rsi),%r10d
                                       0x00007f017ed9e5a4:   movabs $0x7f00fb000000,%r12
                                       0x00007f017ed9e5ae:   add    %r12,%r10
                                       0x00007f017ed9e5b1:   xor    %r12,%r12
                                       0x00007f017ed9e5b4:   cmp    %r10,%rax
                                       0x00007f017ed9e5b7:   jne    0x00007f017e6f9080           ;   {runtime_call ic_miss_stub}
                                       0x00007f017ed9e5bd:   data16 xchg %ax,%ax
                                     [Verified Entry Point]
   0.91%               ↗            ↗  0x00007f017ed9e5c0:   mov    %eax,-0x14000(%rsp)
  26.48%               │            │  0x00007f017ed9e5c7:   sub    $0x18,%rsp
   0.23%               │            │  0x00007f017ed9e5cb:   nop
   0.02%               │            │  0x00007f017ed9e5cc:   cmpl   $0x1,0x20(%r15)
   0.38%  ╭            │            │  0x00007f017ed9e5d4:   jne    0x00007f017ed9e6b1
   8.83%  │            │   ↗        │  0x00007f017ed9e5da:   mov    %rbp,0x10(%rsp)
   8.76%  │            │   │        │  0x00007f017ed9e5df:   cmp    $0x4,%edx
          │╭           │   │        │  0x00007f017ed9e5e2:   jge    0x00007f017ed9e619
          ││           │   │        │  0x00007f017ed9e5e8:   cmp    $0x2,%edx
          ││╭          │   │        │  0x00007f017ed9e5eb:   jge    0x00007f017ed9e60b
          │││          │   │        │  0x00007f017ed9e5f1:   cmp    $0x0,%edx
          │││╭         │   │        │  0x00007f017ed9e5f4:   je     0x00007f017ed9e690
          ││││         │   │        │  0x00007f017ed9e5fa:   cmp    $0x1,%edx
          ││││         │   │        │  0x00007f017ed9e5fd:   data16 xchg %ax,%ax
          ││││╭        │   │        │  0x00007f017ed9e600:   je     0x00007f017ed9e66f
          │││││╭       │   │        │  0x00007f017ed9e606:   jmp    0x00007f017ed9e646
          ││↘│││       │   │        │  0x00007f017ed9e60b:   cmp    $0x2,%edx
          ││ │││╭      │   │        │  0x00007f017ed9e60e:   je     0x00007f017ed9e66f
          ││ ││││╭     │   │        │  0x00007f017ed9e614:   jmp    0x00007f017ed9e66f
   0.06%  │↘ │││││     │   │        │  0x00007f017ed9e619:   cmp    $0x6,%edx
   0.24%  │  │││││     │   │        │  0x00007f017ed9e61c:   nopl   0x0(%rax)
   0.15%  │  │││││╭    │   │        │  0x00007f017ed9e620:   jge    0x00007f017ed9e634
          │  ││││││    │   │        │  0x00007f017ed9e626:   cmp    $0x4,%edx
          │  ││││││╭   │   │        │  0x00007f017ed9e629:   je     0x00007f017ed9e66f
          │  │││││││╭  │   │        │  0x00007f017ed9e62f:   jmp    0x00007f017ed9e66f
   8.54%  │  │││││↘││  │   │        │  0x00007f017ed9e634:   cmp    $0x6,%edx
          │  │││││ ││╭ │   │        │  0x00007f017ed9e637:   je     0x00007f017ed9e66f
   0.06%  │  │││││ │││ │   │        │  0x00007f017ed9e63d:   cmp    $0x7,%edx
   0.30%  │  │││││ │││╭│   │        │  0x00007f017ed9e640:   je     0x00007f017ed9e66f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  │││││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   0.19%  │  ││↘││ │││││   │        │  0x00007f017ed9e646:   lea    -0x8(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ │││││   │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
   8.50%  │  ││ ││ │││││   │        │  0x00007f017ed9e649:   xchg   %ax,%ax
   0.08%  │  ││ ││ ││││╰   │        │  0x00007f017ed9e64b:   call   0x00007f017ed9e5c0           ; ImmutableOopMap {}
          │  ││ ││ ││││    │        │                                                            ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
          │  ││ ││ ││││    │        │                                                            ;   {optimized virtual_call}
  11.18%  │  ││ ││ ││││    │        │  0x00007f017ed9e650:   nopl   0x240(%rax,%rax,1)           ;   {other}
   0.18%  │  ││ ││ ││││    │        │  0x00007f017ed9e658:   mov    0x10(%rsp),%rbp
   3.66%  │  ││ ││ ││││    │        │  0x00007f017ed9e65d:   add    $0x18,%rsp
   6.61%  │  ││ ││ ││││    │↗       │  0x00007f017ed9e661:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  ││ ││ ││││ ╭  ││       │  0x00007f017ed9e668:   ja     0x00007f017ed9e6c1
   0.15%  │  ││ ││ ││││ │  ││       │  0x00007f017ed9e66e:   ret    
          │  │↘ ↘↘ ↘↘↘↘ │  ││       │  0x00007f017ed9e66f:   movabs $0x7fec34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34d58})}
          │  │          │  ││       │  0x00007f017ed9e679:   mov    0x10(%rsp),%rbp
          │  │          │  ││       │  0x00007f017ed9e67e:   add    $0x18,%rsp
          │  │          │  ││↗      │  0x00007f017ed9e682:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │          │╭ │││      │  0x00007f017ed9e689:   ja     0x00007f017ed9e6d5
          │  │          ││ │││      │  0x00007f017ed9e68f:   ret    
   0.00%  │  ↘          ││ │││      │  0x00007f017ed9e690:   movabs $0x7fec34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34d58})}
   0.28%  │             ││ │││      │  0x00007f017ed9e69a:   mov    0x10(%rsp),%rbp
   0.04%  │             ││ │││      │  0x00007f017ed9e69f:   add    $0x18,%rsp
   0.00%  │             ││ │││↗     │  0x00007f017ed9e6a3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │             ││╭││││     │  0x00007f017ed9e6aa:   ja     0x00007f017ed9e6e9
   0.57%  │             │││││││     │  0x00007f017ed9e6b0:   ret    
          ↘             │││││││     │  0x00007f017ed9e6b1:   mov    %rbp,0x10(%rsp)
                        │││││││     │  0x00007f017ed9e6b6:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                        │││╰│││     │  0x00007f017ed9e6bb:   jmp    0x00007f017ed9e5da
                        │││ │││     │  0x00007f017ed9e6c0:   hlt    
                        ↘││ ╰││     │  0x00007f017ed9e6c1:   lea    -0x67(%rip),%rcx        # 0x00007f017ed9e661
                         ││  ││     │  0x00007f017ed9e6c8:   mov    %rcx,0x468(%r15)
                         ││  ││     │  0x00007f017ed9e6cf:   jmp    0x00007f017e700000           ;   {runtime_call SafepointBlob}
                         ││  ││     │  0x00007f017ed9e6d4:   hlt    
                         ↘│  ╰│     │  0x00007f017ed9e6d5:   lea    -0x5a(%rip),%rcx        # 0x00007f017ed9e682
                          │   │     │  0x00007f017ed9e6dc:   mov    %rcx,0x468(%r15)
                          │   │     │  0x00007f017ed9e6e3:   jmp    0x00007f017e700000           ;   {runtime_call SafepointBlob}
                          │   │     │  0x00007f017ed9e6e8:   hlt    
                          ↘   ╰     │  0x00007f017ed9e6e9:   lea    -0x4d(%rip),%rcx        # 0x00007f017ed9e6a3
                                    │  0x00007f017ed9e6f0:   mov    %rcx,0x468(%r15)
                                    │  0x00007f017ed9e6f7:   jmp    0x00007f017e700000           ;   {runtime_call SafepointBlob}
                                    │  0x00007f017ed9e6fc:   hlt    
                                    │  0x00007f017ed9e6fd:   data16 xchg %ax,%ax
                                    │[Exception Handler]
                                    │  0x00007f017ed9e700:   call   0x00007f017e90ab80           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                                    │  0x00007f017ed9e705:   nop
                                    │[Deopt Handler Code]
                                    │  0x00007f017ed9e706:   call   0x00007f017e6fef20           ;   {runtime_call DeoptimizationBlob}
                                    │  0x00007f017ed9e70b:   nop
                                    │  0x00007f017ed9e70c:   hlt    
                                    │  0x00007f017ed9e70d:   hlt    
                                    │  0x00007f017ed9e70e:   hlt    
                                    │  0x00007f017ed9e70f:   hlt    
                                    │[Stub Code]
                                    │  0x00007f017ed9e710:   movabs $0x0,%rbx                    ;   {no_reloc}
                               ╰    │  0x00007f017ed9e71a:   jmp    0x00007f017ed9e71a           ;   {runtime_call}
                                    │  0x00007f017ed9e71f:   hlt    
                                    │--------------------------------------------------------------------------------
                                    │[/Disassembly]
                                    │</print_nmethod>
                                    │<task_queued compile_id='1064' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_non_static_method ()Ljava/lang/Object;' bytes='9' count='5381' iicount='5381' stamp='33,580' comment='tiered' hot_count='5381'/>
                                    │<task_queued compile_id='1065' method='org.openjdk.jmh.infra.Blackhole consume (Ljava/lang/Object;)V' bytes='19' count='6440' iicount='6440' stamp='33,581' comment='tiered' hot_count='6440'/>
                                    │<nmethod compile_id='1064' compiler='jvmci' level='4' entry='0x00007f017ed9ea20' size='1016' address='0x00007f017ed9e890' relocation_offset='344' insts_offset='400' stub_offset='712' scopes_data_offset='752' scopes_pcs_offset='888' dependencies_offset='984' oops_offset='728' metadata_offset='736' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_non_static_method ()Ljava/lang/Object;' bytes='9' count='15050' iicount='15052' stamp='33,586'/>
                                    │<make_not_entrant thread='8925' compile_id='1060' compiler='c1' level='3' stamp='33,586'/>
                                    │<print_nmethod compile_id='1064' compiler='jvmci' level='4' stamp='33,586'>
                                    │=========================== JVMCI-compiled nmethod =============================
                                    │----------------------------------- Assembly -----------------------------------
                                    │Compiled method (JVMCI)   33586 1064       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method (9 bytes)
                                    │ total in heap  [0x00007f017ed9e890,0x00007f017ed9ec88] = 1016
                                    │ relocation     [0x00007f017ed9e9e8,0x00007f017ed9ea10] = 40
                                    │ main code      [0x00007f017ed9ea20,0x00007f017ed9eb58] = 312
                                    │ stub code      [0x00007f017ed9eb58,0x00007f017ed9eb68] = 16
                                    │ oops           [0x00007f017ed9eb68,0x00007f017ed9eb70] = 8
                                    │ metadata       [0x00007f017ed9eb70,0x00007f017ed9eb80] = 16
                                    │ scopes data    [0x00007f017ed9eb80,0x00007f017ed9ec08] = 136
                                    │ scopes pcs     [0x00007f017ed9ec08,0x00007f017ed9ec68] = 96
                                    │ dependencies   [0x00007f017ed9ec68,0x00007f017ed9ec70] = 8
                                    │ JVMCI data     [0x00007f017ed9ec70,0x00007f017ed9ec88] = 24
                                    │[Disassembly]
                                    │--------------------------------------------------------------------------------
                                    │[Constant Pool (empty)]
                                    │--------------------------------------------------------------------------------
                                    │[Entry Point]
                                    │  # {method} {0x00007f00f747b7f8} &apos;class_non_static_method&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                    │  #           [sp+0x20]  (sp of caller)
                                    │  0x00007f017ed9ea20:   mov    0x8(%rsi),%r10d
                                    │  0x00007f017ed9ea24:   movabs $0x7f00fb000000,%r12
                                    │  0x00007f017ed9ea2e:   add    %r12,%r10
                                    │  0x00007f017ed9ea31:   xor    %r12,%r12
                                    │  0x00007f017ed9ea34:   cmp    %r10,%rax
                                    │  0x00007f017ed9ea37:   jne    0x00007f017e6f9080           ;   {runtime_call ic_miss_stub}
                                    │  0x00007f017ed9ea3d:   data16 xchg %ax,%ax
                                    │[Verified Entry Point]
   0.01%                            │  0x00007f017ed9ea40:   mov    %eax,-0x14000(%rsp)
   0.27%                            │  0x00007f017ed9ea47:   sub    $0x18,%rsp
   0.02%                            │  0x00007f017ed9ea4b:   nop
                                    │  0x00007f017ed9ea4c:   cmpl   $0x1,0x20(%r15)
   0.28%                            │  0x00007f017ed9ea54:   jne    0x00007f017ed9eb10
   0.00%                            │  0x00007f017ed9ea5a:   mov    %rbp,0x10(%rsp)
   0.01%                            │  0x00007f017ed9ea5f:   mov    0xc(%rsi),%edx               ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method@2 (line 84)
   0.00%                            │  0x00007f017ed9ea62:   cmp    $0x4,%edx
                                ╭   │  0x00007f017ed9ea65:   jge    0x00007f017ed9ea99
                                │   │  0x00007f017ed9ea6b:   cmp    $0x2,%edx
                                │╭  │  0x00007f017ed9ea6e:   jge    0x00007f017ed9ea8b
                                ││  │  0x00007f017ed9ea74:   cmp    $0x0,%edx
                                ││  │  0x00007f017ed9ea77:   je     0x00007f017ed9eaef
                                ││  │  0x00007f017ed9ea7d:   cmp    $0x1,%edx
                                ││  │  0x00007f017ed9ea80:   je     0x00007f017ed9eaef
                                ││╭ │  0x00007f017ed9ea86:   jmp    0x00007f017ed9eac6
                                │↘│ │  0x00007f017ed9ea8b:   cmp    $0x2,%edx
                                │ │ │  0x00007f017ed9ea8e:   je     0x00007f017ed9eaef
                                │ │ │  0x00007f017ed9ea94:   jmp    0x00007f017ed9eaef
   0.25%                        ↘ │ │  0x00007f017ed9ea99:   cmp    $0x6,%edx
   0.00%                          │ │  0x00007f017ed9ea9c:   nopl   0x0(%rax)
   0.01%                          │╭│  0x00007f017ed9eaa0:   jge    0x00007f017ed9eab4
                                  │││  0x00007f017ed9eaa6:   cmp    $0x4,%edx
                                  │││  0x00007f017ed9eaa9:   je     0x00007f017ed9eaef
                                  │││  0x00007f017ed9eaaf:   jmp    0x00007f017ed9eaef
   0.24%                          │↘│  0x00007f017ed9eab4:   cmp    $0x6,%edx
                                  │ │  0x00007f017ed9eab7:   je     0x00007f017ed9eaef
                                  │ │  0x00007f017ed9eabd:   cmp    $0x7,%edx
                                  │ │  0x00007f017ed9eac0:   je     0x00007f017ed9eaef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 106)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                  │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method@5 (line 84)
   0.01%                          ↘ │  0x00007f017ed9eac6:   lea    -0x8(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method@5 (line 84)
   0.27%                            │  0x00007f017ed9eac9:   xchg   %ax,%ax
                                    ╰  0x00007f017ed9eacb:   call   0x00007f017ed9e5c0           ; ImmutableOopMap {}
                                                                                                 ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 109)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_non_static_method@5 (line 84)
                                                                                                 ;   {optimized virtual_call}
   2.29%                               0x00007f017ed9ead0:   nopl   0x240(%rax,%rax,1)           ;   {other}
   0.20%                               0x00007f017ed9ead8:   mov    0x10(%rsp),%rbp
   2.05%                               0x00007f017ed9eadd:   add    $0x18,%rsp
   0.02%                               0x00007f017ed9eae1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  92.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1063 
   3.14%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 6, compile id 1089 
   0.60%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   1.99%  <...other 397 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 1063 
   3.69%                kernel  [unknown] 
   3.14%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 6, compile id 1089 
   0.20%                        <unknown> 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  _IO_setb 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  fileStream::write 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.33%  <...other 119 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.42%        jvmci, level 4
   3.69%                kernel
   0.37%             libjvm.so
   0.23%             libc.so.6
   0.20%                      
   0.04%        hsdis-amd64.so
   0.03%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%           c1, level 3
   0.00%         perf-8901.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:12:01
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 501.716 ns/op
# Warmup Iteration   2: 501.460 ns/op
# Warmup Iteration   3: 497.768 ns/op
# Warmup Iteration   4: 495.537 ns/op
# Warmup Iteration   5: 496.773 ns/op
Iteration   1: 492.590 ns/op
Iteration   2: 496.074 ns/op
Iteration   3: 495.093 ns/op
Iteration   4: 494.498 ns/op
Iteration   5: 506.517 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method":
  496.954 ±(99.9%) 21.157 ns/op [Average]
  (min, avg, max) = (492.590, 496.954, 506.517), stdev = 5.494
  CI (99.9%): [475.798, 518.111] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.class_static_method:asm":
PrintAssembly processed: 223877 total address lines.
Perf output processed (skipped 84.597 seconds):
 Column 1: cycles (51656 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1085 

                                    dependencies   [0x00007f5b0ad9cc50,0x00007f5b0ad9cc58] = 8
                                    JVMCI data     [0x00007f5b0ad9cc58,0x00007f5b0ad9cc70] = 24
                                   [Disassembly]
                                   --------------------------------------------------------------------------------
                                   [Constant Pool (empty)]
                                   --------------------------------------------------------------------------------
                                   [Verified Entry Point]
                                     # {method} {0x00007f5a7c47bc18} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                     # parm0:    rsi       = int
                                     #           [sp+0x20]  (sp of caller)
  15.66%                             0x00007f5b0ad9ca20:   mov    %eax,-0x14000(%rsp)
  26.98%                             0x00007f5b0ad9ca27:   sub    $0x18,%rsp
   0.05%                             0x00007f5b0ad9ca2b:   nop
   0.01%                             0x00007f5b0ad9ca2c:   cmpl   $0x1,0x20(%r15)
   0.19%  ╭                          0x00007f5b0ad9ca34:   jne    0x00007f5b0ad9cb11
   6.78%  │               ↗          0x00007f5b0ad9ca3a:   mov    %rbp,0x10(%rsp)
   5.06%  │               │          0x00007f5b0ad9ca3f:   cmp    $0x4,%esi
          │╭              │          0x00007f5b0ad9ca42:   jge    0x00007f5b0ad9ca79
          ││              │          0x00007f5b0ad9ca48:   cmp    $0x2,%esi
          ││╭             │          0x00007f5b0ad9ca4b:   jge    0x00007f5b0ad9ca6b
          │││             │          0x00007f5b0ad9ca51:   cmp    $0x0,%esi
          │││╭            │          0x00007f5b0ad9ca54:   je     0x00007f5b0ad9caf0
          ││││            │          0x00007f5b0ad9ca5a:   cmp    $0x1,%esi
          ││││            │          0x00007f5b0ad9ca5d:   data16 xchg %ax,%ax
          ││││╭           │          0x00007f5b0ad9ca60:   je     0x00007f5b0ad9cacf
          │││││╭          │          0x00007f5b0ad9ca66:   jmp    0x00007f5b0ad9caa6
          ││↘│││          │          0x00007f5b0ad9ca6b:   cmp    $0x2,%esi
          ││ │││╭         │          0x00007f5b0ad9ca6e:   je     0x00007f5b0ad9cacf
          ││ ││││╭        │          0x00007f5b0ad9ca74:   jmp    0x00007f5b0ad9cacf
   0.03%  │↘ │││││        │          0x00007f5b0ad9ca79:   cmp    $0x6,%esi
   0.09%  │  │││││        │          0x00007f5b0ad9ca7c:   nopl   0x0(%rax)
   1.90%  │  │││││╭       │          0x00007f5b0ad9ca80:   jge    0x00007f5b0ad9ca94
          │  ││││││       │          0x00007f5b0ad9ca86:   cmp    $0x4,%esi
          │  ││││││╭      │          0x00007f5b0ad9ca89:   je     0x00007f5b0ad9cacf
          │  │││││││╭     │          0x00007f5b0ad9ca8f:   jmp    0x00007f5b0ad9cacf
   4.88%  │  │││││↘││     │          0x00007f5b0ad9ca94:   cmp    $0x6,%esi
   0.00%  │  │││││ ││╭    │          0x00007f5b0ad9ca97:   je     0x00007f5b0ad9cacf
   0.03%  │  │││││ │││    │          0x00007f5b0ad9ca9d:   cmp    $0x7,%esi
          │  │││││ │││╭   │          0x00007f5b0ad9caa0:   je     0x00007f5b0ad9cacf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   0.20%  │  ││↘││ ││││   │          0x00007f5b0ad9caa6:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
   2.06%  │  ││ ││ ││││   │          0x00007f5b0ad9caa9:   xchg   %ax,%ax
   4.57%  │  ││ ││ ││││   │          0x00007f5b0ad9caab:   call   0x00007f5b0ad9ca20           ; ImmutableOopMap {}
          │  ││ ││ ││││   │                                                                    ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
          │  ││ ││ ││││   │                                                                    ;   {static_call}
   9.70%  │  ││ ││ ││││   │          0x00007f5b0ad9cab0:   nopl   0x220(%rax,%rax,1)           ;   {other}
   0.21%  │  ││ ││ ││││   │          0x00007f5b0ad9cab8:   mov    0x10(%rsp),%rbp
   2.98%  │  ││ ││ ││││   │          0x00007f5b0ad9cabd:   add    $0x18,%rsp
   5.98%  │  ││ ││ ││││   │↗         0x00007f5b0ad9cac1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  ││ ││ ││││╭  ││         0x00007f5b0ad9cac8:   ja     0x00007f5b0ad9cb21
   0.20%  │  ││ ││ │││││  ││         0x00007f5b0ad9cace:   ret    
          │  │↘ ↘↘ ↘↘↘↘│  ││         0x00007f5b0ad9cacf:   movabs $0x7fea347c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
          │  │         │  ││         0x00007f5b0ad9cad9:   mov    0x10(%rsp),%rbp
          │  │         │  ││         0x00007f5b0ad9cade:   add    $0x18,%rsp
          │  │         │  ││↗        0x00007f5b0ad9cae2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │         │╭ │││        0x00007f5b0ad9cae9:   ja     0x00007f5b0ad9cb35
          │  │         ││ │││        0x00007f5b0ad9caef:   ret    
   0.00%  │  ↘         ││ │││        0x00007f5b0ad9caf0:   movabs $0x7fea347c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fea347c0})}
   0.22%  │            ││ │││        0x00007f5b0ad9cafa:   mov    0x10(%rsp),%rbp
   0.02%  │            ││ │││        0x00007f5b0ad9caff:   add    $0x18,%rsp
          │            ││ │││↗       0x00007f5b0ad9cb03:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │            ││╭││││       0x00007f5b0ad9cb0a:   ja     0x00007f5b0ad9cb49
   0.43%  │            │││││││       0x00007f5b0ad9cb10:   ret    
          ↘            │││││││       0x00007f5b0ad9cb11:   mov    %rbp,0x10(%rsp)
                       │││││││       0x00007f5b0ad9cb16:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                       │││╰│││       0x00007f5b0ad9cb1b:   jmp    0x00007f5b0ad9ca3a
                       │││ │││       0x00007f5b0ad9cb20:   hlt    
                       ↘││ ╰││       0x00007f5b0ad9cb21:   lea    -0x67(%rip),%rcx        # 0x00007f5b0ad9cac1
                        ││  ││       0x00007f5b0ad9cb28:   mov    %rcx,0x468(%r15)
                        ││  ││       0x00007f5b0ad9cb2f:   jmp    0x00007f5b0a700000           ;   {runtime_call SafepointBlob}
                        ││  ││       0x00007f5b0ad9cb34:   hlt    
                        ↘│  ╰│       0x00007f5b0ad9cb35:   lea    -0x5a(%rip),%rcx        # 0x00007f5b0ad9cae2
                         │   │       0x00007f5b0ad9cb3c:   mov    %rcx,0x468(%r15)
                         │   │       0x00007f5b0ad9cb43:   jmp    0x00007f5b0a700000           ;   {runtime_call SafepointBlob}
                         │   │       0x00007f5b0ad9cb48:   hlt    
                         ↘   ╰       0x00007f5b0ad9cb49:   lea    -0x4d(%rip),%rcx        # 0x00007f5b0ad9cb03
                                     0x00007f5b0ad9cb50:   mov    %rcx,0x468(%r15)
                                     0x00007f5b0ad9cb57:   jmp    0x00007f5b0a700000           ;   {runtime_call SafepointBlob}
                                     0x00007f5b0ad9cb5c:   hlt    
                                     0x00007f5b0ad9cb5d:   data16 xchg %ax,%ax
                                   [Exception Handler]
                                     0x00007f5b0ad9cb60:   call   0x00007f5b0a90b080           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                                     0x00007f5b0ad9cb65:   nop
                                   [Deopt Handler Code]
                                     0x00007f5b0ad9cb66:   call   0x00007f5b0a6fef20           ;   {runtime_call DeoptimizationBlob}
                                     0x00007f5b0ad9cb6b:   nop
                                     0x00007f5b0ad9cb6c:   hlt    
                                     0x00007f5b0ad9cb6d:   hlt    
                                     0x00007f5b0ad9cb6e:   hlt    
                                     0x00007f5b0ad9cb6f:   hlt    
                                   [Stub Code]
                                     0x00007f5b0ad9cb70:   movabs $0x0,%rbx                    ;   {no_reloc}
                              ╰      0x00007f5b0ad9cb7a:   jmp    0x00007f5b0ad9cb7a           ;   {runtime_call}
                                     0x00007f5b0ad9cb7f:   hlt    
                                   --------------------------------------------------------------------------------
                                   [/Disassembly]
                                   </print_nmethod>
                                   <task_queued compile_id='1086' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_static_method ()Ljava/lang/Object;' bytes='8' count='5384' iicount='5384' stamp='33,238' comment='tiered' hot_count='5384'/>
                                   <task_queued compile_id='1087' method='org.openjdk.jmh.infra.Blackhole consume (Ljava/lang/Object;)V' bytes='19' count='6429' iicount='6429' stamp='33,239' comment='tiered' hot_count='6429'/>
                                   <nmethod compile_id='1086' compiler='jvmci' level='4' entry='0x00007f5b0ad9ce20' size='1008' address='0x00007f5b0ad9cc90' relocation_offset='344' insts_offset='400' stub_offset='712' scopes_data_offset='752' scopes_pcs_offset='880' dependencies_offset='976' oops_offset='728' metadata_offset='736' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark class_static_method ()Ljava/lang/Object;' bytes='8' count='27531' iicount='27536' stamp='33,252'/>
                                   <make_not_entrant thread='9047' compile_id='1082' compiler='c1' level='3' stamp='33,252'/>
                                   <print_nmethod compile_id='1086' compiler='jvmci' level='4' stamp='33,252'>
                                   =========================== JVMCI-compiled nmethod =============================
                                   ----------------------------------- Assembly -----------------------------------
                                   Compiled method (JVMCI)   33251 1086       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method (8 bytes)
                                    total in heap  [0x00007f5b0ad9cc90,0x00007f5b0ad9d080] = 1008
                                    relocation     [0x00007f5b0ad9cde8,0x00007f5b0ad9ce10] = 40
                                    main code      [0x00007f5b0ad9ce20,0x00007f5b0ad9cf58] = 312
                                    stub code      [0x00007f5b0ad9cf58,0x00007f5b0ad9cf68] = 16
                                    oops           [0x00007f5b0ad9cf68,0x00007f5b0ad9cf70] = 8
                                    metadata       [0x00007f5b0ad9cf70,0x00007f5b0ad9cf80] = 16
                                    scopes data    [0x00007f5b0ad9cf80,0x00007f5b0ad9d000] = 128
                                    scopes pcs     [0x00007f5b0ad9d000,0x00007f5b0ad9d060] = 96
                                    dependencies   [0x00007f5b0ad9d060,0x00007f5b0ad9d068] = 8
                                    JVMCI data     [0x00007f5b0ad9d068,0x00007f5b0ad9d080] = 24
                                   [Disassembly]
                                   --------------------------------------------------------------------------------
                                   [Constant Pool (empty)]
                                   --------------------------------------------------------------------------------
                                   [Entry Point]
                                     # {method} {0x00007f5a7c47b8c8} &apos;class_static_method&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                     #           [sp+0x20]  (sp of caller)
                                     0x00007f5b0ad9ce20:   mov    0x8(%rsi),%r10d
                                     0x00007f5b0ad9ce24:   movabs $0x7f5a87000000,%r12
                                     0x00007f5b0ad9ce2e:   add    %r12,%r10
                                     0x00007f5b0ad9ce31:   xor    %r12,%r12
                                     0x00007f5b0ad9ce34:   cmp    %r10,%rax
                                     0x00007f5b0ad9ce37:   jne    0x00007f5b0a6f9080           ;   {runtime_call ic_miss_stub}
                                     0x00007f5b0ad9ce3d:   data16 xchg %ax,%ax
                                   [Verified Entry Point]
   0.01%                             0x00007f5b0ad9ce40:   mov    %eax,-0x14000(%rsp)
   0.19%                             0x00007f5b0ad9ce47:   sub    $0x18,%rsp
   0.01%                             0x00007f5b0ad9ce4b:   nop
   0.00%                             0x00007f5b0ad9ce4c:   cmpl   $0x1,0x20(%r15)
   0.20%                             0x00007f5b0ad9ce54:   jne    0x00007f5b0ad9cf10
   0.00%                             0x00007f5b0ad9ce5a:   mov    %rbp,0x10(%rsp)
   0.01%                             0x00007f5b0ad9ce5f:   mov    0xc(%rsi),%esi               ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@1 (line 90)
                                     0x00007f5b0ad9ce62:   cmp    $0x4,%esi
                               ╭     0x00007f5b0ad9ce65:   jge    0x00007f5b0ad9ce99
                               │     0x00007f5b0ad9ce6b:   cmp    $0x2,%esi
                               │╭    0x00007f5b0ad9ce6e:   jge    0x00007f5b0ad9ce8b
                               ││    0x00007f5b0ad9ce74:   cmp    $0x0,%esi
                               ││    0x00007f5b0ad9ce77:   je     0x00007f5b0ad9ceef
                               ││    0x00007f5b0ad9ce7d:   cmp    $0x1,%esi
                               ││    0x00007f5b0ad9ce80:   je     0x00007f5b0ad9ceef
                               ││╭   0x00007f5b0ad9ce86:   jmp    0x00007f5b0ad9cec6
                               │↘│   0x00007f5b0ad9ce8b:   cmp    $0x2,%esi
                               │ │   0x00007f5b0ad9ce8e:   je     0x00007f5b0ad9ceef
                               │ │   0x00007f5b0ad9ce94:   jmp    0x00007f5b0ad9ceef
   0.21%                       ↘ │   0x00007f5b0ad9ce99:   cmp    $0x6,%esi
                                 │   0x00007f5b0ad9ce9c:   nopl   0x0(%rax)
   0.01%                         │╭  0x00007f5b0ad9cea0:   jge    0x00007f5b0ad9ceb4
                                 ││  0x00007f5b0ad9cea6:   cmp    $0x4,%esi
                                 ││  0x00007f5b0ad9cea9:   je     0x00007f5b0ad9ceef
                                 ││  0x00007f5b0ad9ceaf:   jmp    0x00007f5b0ad9ceef
   0.23%                         │↘  0x00007f5b0ad9ceb4:   cmp    $0x6,%esi
                                 │   0x00007f5b0ad9ceb7:   je     0x00007f5b0ad9ceef
   0.00%                         │   0x00007f5b0ad9cebd:   cmp    $0x7,%esi
                                 │   0x00007f5b0ad9cec0:   je     0x00007f5b0ad9ceef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 113)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.01%                         ↘   0x00007f5b0ad9cec6:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
   0.23%                             0x00007f5b0ad9cec9:   xchg   %ax,%ax
                                     0x00007f5b0ad9cecb:   call   0x00007f5b0ad9ca20           ; ImmutableOopMap {}
                                                                                               ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 116)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::class_static_method@4 (line 90)
                                                                                               ;   {static_call}
   1.58%                             0x00007f5b0ad9ced0:   nopl   0x240(%rax,%rax,1)           ;   {other}
   0.12%                             0x00007f5b0ad9ced8:   mov    0x10(%rsp),%rbp
   1.33%                             0x00007f5b0ad9cedd:   add    $0x18,%rsp
   0.01%                             0x00007f5b0ad9cee1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  92.38%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1085 
   2.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1114 
   0.70%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%             libjvm.so  fileStream::write 
   0.06%             libjvm.so  defaultStream::hold 
   2.55%  <...other 406 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.38%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 1085 
   4.29%                kernel  [unknown] 
   2.21%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 6, compile id 1114 
   0.16%                        <unknown> 
   0.06%             libjvm.so  fileStream::write 
   0.06%             libjvm.so  defaultStream::hold 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libjvm.so  xmlStream::write 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%        hsdis-amd64.so  print_insn 
   0.03%             libc.so.6  _IO_setb 
   0.03%             libjvm.so  RelocIterator::initialize 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.40%  <...other 129 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.60%        jvmci, level 4
   4.29%                kernel
   0.51%             libjvm.so
   0.31%             libc.so.6
   0.16%                      
   0.06%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.03%           interpreter
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
   0.00%         perf-9023.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:09:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 374.215 ns/op
# Warmup Iteration   2: 362.411 ns/op
# Warmup Iteration   3: 367.288 ns/op
# Warmup Iteration   4: 361.906 ns/op
# Warmup Iteration   5: 366.196 ns/op
Iteration   1: 362.802 ns/op
Iteration   2: 363.849 ns/op
Iteration   3: 363.437 ns/op
Iteration   4: 363.057 ns/op
Iteration   5: 368.784 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  364.386 ±(99.9%) 9.589 ns/op [Average]
  (min, avg, max) = (362.802, 364.386, 368.784), stdev = 2.490
  CI (99.9%): [354.797, 373.975] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:asm":
PrintAssembly processed: 224307 total address lines.
Perf output processed (skipped 84.620 seconds):
 Column 1: cycles (51393 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1062 

                          # parm0:    rdx       = int
                          #           [sp+0x20]  (sp of caller)
                          0x00007f78f2d9c820:   mov    0x8(%rsi),%r10d
                          0x00007f78f2d9c824:   movabs $0x7f786f000000,%r12
                          0x00007f78f2d9c82e:   add    %r12,%r10
                          0x00007f78f2d9c831:   xor    %r12,%r12
                          0x00007f78f2d9c834:   cmp    %r10,%rax
                          0x00007f78f2d9c837:   jne    0x00007f78f26f9080           ;   {runtime_call ic_miss_stub}
                          0x00007f78f2d9c83d:   data16 xchg %ax,%ax
                        [Verified Entry Point]
   7.86%                  0x00007f78f2d9c840:   mov    %eax,-0x14000(%rsp)
  28.32%                  0x00007f78f2d9c847:   sub    $0x18,%rsp
   0.11%                  0x00007f78f2d9c84b:   nop
   0.29%                  0x00007f78f2d9c84c:   cmpl   $0x0,0x20(%r15)
   0.03%                  0x00007f78f2d9c854:   jne    0x00007f78f2d9c960
   8.04%                  0x00007f78f2d9c85a:   mov    %rbp,0x10(%rsp)
   0.37%                  0x00007f78f2d9c85f:   nop
   0.32%                  0x00007f78f2d9c860:   test   %edx,%edx
          ╭               0x00007f78f2d9c862:   je     0x00007f78f2d9c920
          │               0x00007f78f2d9c868:   cmpl   $0x102b398,0x8(%rsi)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   7.76%  │╭              0x00007f78f2d9c86f:   jne    0x00007f78f2d9c941           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.38%  ││              0x00007f78f2d9c875:   cmp    $0x5,%edx
          ││╭             0x00007f78f2d9c878:   jge    0x00007f78f2d9c8ac
   0.00%  │││             0x00007f78f2d9c87e:   cmp    $0x3,%edx
          │││╭            0x00007f78f2d9c881:   jge    0x00007f78f2d9c89e
          ││││            0x00007f78f2d9c887:   cmp    $0x1,%edx
          ││││╭           0x00007f78f2d9c88a:   je     0x00007f78f2d9c8ff
          │││││           0x00007f78f2d9c890:   cmp    $0x2,%edx
          │││││╭          0x00007f78f2d9c893:   je     0x00007f78f2d9c8ff
          ││││││╭         0x00007f78f2d9c899:   jmp    0x00007f78f2d9c8d7
          │││↘│││         0x00007f78f2d9c89e:   cmp    $0x3,%edx
          │││ │││╭        0x00007f78f2d9c8a1:   je     0x00007f78f2d9c8ff
   0.01%  │││ ││││╭       0x00007f78f2d9c8a7:   jmp    0x00007f78f2d9c8ff
   0.28%  ││↘ │││││       0x00007f78f2d9c8ac:   cmp    $0x7,%edx
          ││  │││││╭      0x00007f78f2d9c8af:   jge    0x00007f78f2d9c8c5
          ││  ││││││      0x00007f78f2d9c8b5:   cmp    $0x5,%edx
          ││  ││││││╭     0x00007f78f2d9c8b8:   je     0x00007f78f2d9c8ff
          ││  │││││││     0x00007f78f2d9c8be:   xchg   %ax,%ax
          ││  │││││││╭    0x00007f78f2d9c8c0:   jmp    0x00007f78f2d9c8ff
   8.10%  ││  │││││↘││    0x00007f78f2d9c8c5:   cmp    $0x7,%edx
          ││  │││││ ││╭   0x00007f78f2d9c8c8:   je     0x00007f78f2d9c8ff
   0.04%  ││  │││││ │││   0x00007f78f2d9c8ce:   cmp    $0x8,%edx
          ││  │││││ │││╭  0x00007f78f2d9c8d1:   je     0x00007f78f2d9c8ff           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 122)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.05%  ││  ││↘││ ││││  0x00007f78f2d9c8d7:   lea    -0x9(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
   0.04%  ││  ││ ││ ││││  0x00007f78f2d9c8da:   nop
   8.14%  ││  ││ ││ ││││  0x00007f78f2d9c8db:   call   0x00007f78f26f9380           ; ImmutableOopMap {}
          ││  ││ ││ ││││                                                            ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
          ││  ││ ││ ││││                                                            ;   {optimized virtual_call}
   9.01%  ││  ││ ││ ││││  0x00007f78f2d9c8e0:   nopl   0x250(%rax,%rax,1)           ;   {other}
   0.05%  ││  ││ ││ ││││  0x00007f78f2d9c8e8:   mov    0x10(%rsp),%rbp
   2.01%  ││  ││ ││ ││││  0x00007f78f2d9c8ed:   add    $0x18,%rsp
   6.62%  ││  ││ ││ ││││  0x00007f78f2d9c8f1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  ││ ││ ││││  0x00007f78f2d9c8f8:   ja     0x00007f78f2d9c970
   0.09%  ││  ││ ││ ││││  0x00007f78f2d9c8fe:   ret    
   0.31%  ││  ↘↘ ↘↘ ↘↘↘↘  0x00007f78f2d9c8ff:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.00%  ││              0x00007f78f2d9c909:   mov    0x10(%rsp),%rbp
   1.20%  ││              0x00007f78f2d9c90e:   add    $0x18,%rsp
   0.00%  ││              0x00007f78f2d9c912:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││              0x00007f78f2d9c919:   ja     0x00007f78f2d9c986
   0.58%  ││              0x00007f78f2d9c91f:   ret    
          ↘│              0x00007f78f2d9c920:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
           │              0x00007f78f2d9c92a:   mov    0x10(%rsp),%rbp
           │              0x00007f78f2d9c92f:   add    $0x18,%rsp
           │              0x00007f78f2d9c933:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │              0x00007f78f2d9c93a:   ja     0x00007f78f2d9c99a
           │              0x00007f78f2d9c940:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@17 (line 125)
           ↘              0x00007f78f2d9c941:   movl   $0xffffffc4,0x484(%r15)      ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 125)
                          0x00007f78f2d9c94c:   mov    %r12,0x490(%r15)
....................................................................................................
  90.02%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1062 
   2.91%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 1064 
   2.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1092 
   0.77%                kernel  [unknown] 
   0.34%                kernel  [unknown] 
   0.22%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.90%  <...other 323 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.02%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 1062 
   3.71%                kernel  [unknown] 
   2.91%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 1064 
   2.48%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 6, compile id 1092 
   0.04%             libjvm.so  xmlStream::write_text 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libc.so.6  __strchr_avx2 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  __GI___libc_write 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  RelocIterator::initialize 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.44%  <...other 158 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.41%        jvmci, level 4
   3.71%                kernel
   0.41%             libjvm.so
   0.27%             libc.so.6
   0.09%   libjvmcicompiler.so
   0.05%        hsdis-amd64.so
   0.03%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                      
   0.00%         perf-9144.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:07:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 549.562 ns/op
# Warmup Iteration   2: 542.560 ns/op
# Warmup Iteration   3: 542.430 ns/op
# Warmup Iteration   4: 542.145 ns/op
# Warmup Iteration   5: 544.091 ns/op
Iteration   1: 538.367 ns/op
Iteration   2: 555.754 ns/op
Iteration   3: 710.403 ns/op
Iteration   4: 555.784 ns/op
Iteration   5: 554.278 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  582.917 ±(99.9%) 275.876 ns/op [Average]
  (min, avg, max) = (538.367, 582.917, 710.403), stdev = 71.644
  CI (99.9%): [307.041, 858.794] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.interface_static_method:asm":
PrintAssembly processed: 225573 total address lines.
Perf output processed (skipped 85.057 seconds):
 Column 1: cycles (51584 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1077 

                                    dependencies   [0x00007fdb4ad9d750,0x00007fdb4ad9d758] = 8
                                    JVMCI data     [0x00007fdb4ad9d758,0x00007fdb4ad9d770] = 24
                                   [Disassembly]
                                   --------------------------------------------------------------------------------
                                   [Constant Pool (empty)]
                                   --------------------------------------------------------------------------------
                                   [Verified Entry Point]
                                     # {method} {0x00007fdac34e4ff8} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
                                     # parm0:    rsi       = int
                                     #           [sp+0x20]  (sp of caller)
  15.43%                             0x00007fdb4ad9d520:   mov    %eax,-0x14000(%rsp)
  24.30%                             0x00007fdb4ad9d527:   sub    $0x18,%rsp
   0.09%                             0x00007fdb4ad9d52b:   nop
   0.02%                             0x00007fdb4ad9d52c:   cmpl   $0x1,0x20(%r15)
   0.43%  ╭                          0x00007fdb4ad9d534:   jne    0x00007fdb4ad9d611
   5.91%  │               ↗          0x00007fdb4ad9d53a:   mov    %rbp,0x10(%rsp)
   3.97%  │               │          0x00007fdb4ad9d53f:   cmp    $0x4,%esi
          │╭              │          0x00007fdb4ad9d542:   jge    0x00007fdb4ad9d579
   0.62%  ││              │          0x00007fdb4ad9d548:   cmp    $0x2,%esi
          ││╭             │          0x00007fdb4ad9d54b:   jge    0x00007fdb4ad9d56b
   1.10%  │││             │          0x00007fdb4ad9d551:   cmp    $0x0,%esi
          │││╭            │          0x00007fdb4ad9d554:   je     0x00007fdb4ad9d5f0
          ││││            │          0x00007fdb4ad9d55a:   cmp    $0x1,%esi
          ││││            │          0x00007fdb4ad9d55d:   data16 xchg %ax,%ax
          ││││╭           │          0x00007fdb4ad9d560:   je     0x00007fdb4ad9d5cf
          │││││╭          │          0x00007fdb4ad9d566:   jmp    0x00007fdb4ad9d5a6
          ││↘│││          │          0x00007fdb4ad9d56b:   cmp    $0x2,%esi
          ││ │││╭         │          0x00007fdb4ad9d56e:   je     0x00007fdb4ad9d5cf
          ││ ││││╭        │          0x00007fdb4ad9d574:   jmp    0x00007fdb4ad9d5cf
   0.19%  │↘ │││││        │          0x00007fdb4ad9d579:   cmp    $0x6,%esi
   0.31%  │  │││││        │          0x00007fdb4ad9d57c:   nopl   0x0(%rax)
   1.97%  │  │││││╭       │          0x00007fdb4ad9d580:   jge    0x00007fdb4ad9d594
          │  ││││││       │          0x00007fdb4ad9d586:   cmp    $0x4,%esi
          │  ││││││╭      │          0x00007fdb4ad9d589:   je     0x00007fdb4ad9d5cf
          │  │││││││╭     │          0x00007fdb4ad9d58f:   jmp    0x00007fdb4ad9d5cf
   3.79%  │  │││││↘││     │          0x00007fdb4ad9d594:   cmp    $0x6,%esi
          │  │││││ ││╭    │          0x00007fdb4ad9d597:   je     0x00007fdb4ad9d5cf
   0.26%  │  │││││ │││    │          0x00007fdb4ad9d59d:   cmp    $0x7,%esi
          │  │││││ │││╭   │          0x00007fdb4ad9d5a0:   je     0x00007fdb4ad9d5cf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  │││││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   0.95%  │  ││↘││ ││││   │          0x00007fdb4ad9d5a6:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
   2.27%  │  ││ ││ ││││   │          0x00007fdb4ad9d5a9:   xchg   %ax,%ax
   3.69%  │  ││ ││ ││││   │          0x00007fdb4ad9d5ab:   call   0x00007fdb4ad9d520           ; ImmutableOopMap {}
          │  ││ ││ ││││   │                                                                    ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
          │  ││ ││ ││││   │                                                                    ;   {static_call}
  10.80%  │  ││ ││ ││││   │          0x00007fdb4ad9d5b0:   nopl   0x220(%rax,%rax,1)           ;   {other}
   0.18%  │  ││ ││ ││││   │          0x00007fdb4ad9d5b8:   mov    0x10(%rsp),%rbp
   7.28%  │  ││ ││ ││││   │          0x00007fdb4ad9d5bd:   add    $0x18,%rsp
   1.38%  │  ││ ││ ││││   │↗         0x00007fdb4ad9d5c1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │  ││ ││ ││││╭  ││         0x00007fdb4ad9d5c8:   ja     0x00007fdb4ad9d621
   1.51%  │  ││ ││ │││││  ││         0x00007fdb4ad9d5ce:   ret    
          │  │↘ ↘↘ ↘↘↘↘│  ││         0x00007fdb4ad9d5cf:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
          │  │         │  ││         0x00007fdb4ad9d5d9:   mov    0x10(%rsp),%rbp
          │  │         │  ││         0x00007fdb4ad9d5de:   add    $0x18,%rsp
          │  │         │  ││↗        0x00007fdb4ad9d5e2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │         │╭ │││        0x00007fdb4ad9d5e9:   ja     0x00007fdb4ad9d635
          │  │         ││ │││        0x00007fdb4ad9d5ef:   ret    
   0.09%  │  ↘         ││ │││        0x00007fdb4ad9d5f0:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.07%  │            ││ │││        0x00007fdb4ad9d5fa:   mov    0x10(%rsp),%rbp
   0.84%  │            ││ │││        0x00007fdb4ad9d5ff:   add    $0x18,%rsp
   0.01%  │            ││ │││↗       0x00007fdb4ad9d603:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │            ││╭││││       0x00007fdb4ad9d60a:   ja     0x00007fdb4ad9d649
   0.35%  │            │││││││       0x00007fdb4ad9d610:   ret    
          ↘            │││││││       0x00007fdb4ad9d611:   mov    %rbp,0x10(%rsp)
                       │││││││       0x00007fdb4ad9d616:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                       │││╰│││       0x00007fdb4ad9d61b:   jmp    0x00007fdb4ad9d53a
                       │││ │││       0x00007fdb4ad9d620:   hlt    
                       ↘││ ╰││       0x00007fdb4ad9d621:   lea    -0x67(%rip),%rcx        # 0x00007fdb4ad9d5c1
                        ││  ││       0x00007fdb4ad9d628:   mov    %rcx,0x468(%r15)
                        ││  ││       0x00007fdb4ad9d62f:   jmp    0x00007fdb4a700000           ;   {runtime_call SafepointBlob}
                        ││  ││       0x00007fdb4ad9d634:   hlt    
                        ↘│  ╰│       0x00007fdb4ad9d635:   lea    -0x5a(%rip),%rcx        # 0x00007fdb4ad9d5e2
                         │   │       0x00007fdb4ad9d63c:   mov    %rcx,0x468(%r15)
                         │   │       0x00007fdb4ad9d643:   jmp    0x00007fdb4a700000           ;   {runtime_call SafepointBlob}
                         │   │       0x00007fdb4ad9d648:   hlt    
                         ↘   ╰       0x00007fdb4ad9d649:   lea    -0x4d(%rip),%rcx        # 0x00007fdb4ad9d603
                                     0x00007fdb4ad9d650:   mov    %rcx,0x468(%r15)
                                     0x00007fdb4ad9d657:   jmp    0x00007fdb4a700000           ;   {runtime_call SafepointBlob}
                                     0x00007fdb4ad9d65c:   hlt    
                                     0x00007fdb4ad9d65d:   data16 xchg %ax,%ax
                                   [Exception Handler]
                                     0x00007fdb4ad9d660:   call   0x00007fdb4a90ab80           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
                                     0x00007fdb4ad9d665:   nop
                                   [Deopt Handler Code]
                                     0x00007fdb4ad9d666:   call   0x00007fdb4a6fef20           ;   {runtime_call DeoptimizationBlob}
                                     0x00007fdb4ad9d66b:   nop
                                     0x00007fdb4ad9d66c:   hlt    
                                     0x00007fdb4ad9d66d:   hlt    
                                     0x00007fdb4ad9d66e:   hlt    
                                     0x00007fdb4ad9d66f:   hlt    
                                   [Stub Code]
                                     0x00007fdb4ad9d670:   movabs $0x0,%rbx                    ;   {no_reloc}
                              ╰      0x00007fdb4ad9d67a:   jmp    0x00007fdb4ad9d67a           ;   {runtime_call}
                                     0x00007fdb4ad9d67f:   hlt    
                                   --------------------------------------------------------------------------------
                                   [/Disassembly]
                                   </print_nmethod>
                                   <task_queued compile_id='1078' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark interface_static_method ()Ljava/lang/Object;' bytes='8' count='5376' iicount='5376' stamp='33,834' comment='tiered' hot_count='5376'/>
                                   <task_queued compile_id='1079' method='org.openjdk.jmh.infra.Blackhole consume (Ljava/lang/Object;)V' bytes='19' count='6423' iicount='6423' stamp='33,836' comment='tiered' hot_count='6423'/>
                                   <nmethod compile_id='1078' compiler='jvmci' level='4' entry='0x00007fdb4ad9d920' size='1008' address='0x00007fdb4ad9d790' relocation_offset='344' insts_offset='400' stub_offset='712' scopes_data_offset='752' scopes_pcs_offset='880' dependencies_offset='976' oops_offset='728' metadata_offset='736' method='com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark interface_static_method ()Ljava/lang/Object;' bytes='8' count='13412' iicount='13414' stamp='33,843'/>
                                   <make_not_entrant thread='9283' compile_id='1074' compiler='c1' level='3' stamp='33,843'/>
                                   <print_nmethod compile_id='1078' compiler='jvmci' level='4' stamp='33,843'>
                                   =========================== JVMCI-compiled nmethod =============================
                                   ----------------------------------- Assembly -----------------------------------
                                   Compiled method (JVMCI)   33843 1078       4       com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method (8 bytes)
                                    total in heap  [0x00007fdb4ad9d790,0x00007fdb4ad9db80] = 1008
                                    relocation     [0x00007fdb4ad9d8e8,0x00007fdb4ad9d910] = 40
                                    main code      [0x00007fdb4ad9d920,0x00007fdb4ad9da58] = 312
                                    stub code      [0x00007fdb4ad9da58,0x00007fdb4ad9da68] = 16
                                    oops           [0x00007fdb4ad9da68,0x00007fdb4ad9da70] = 8
                                    metadata       [0x00007fdb4ad9da70,0x00007fdb4ad9da80] = 16
                                    scopes data    [0x00007fdb4ad9da80,0x00007fdb4ad9db00] = 128
                                    scopes pcs     [0x00007fdb4ad9db00,0x00007fdb4ad9db60] = 96
                                    dependencies   [0x00007fdb4ad9db60,0x00007fdb4ad9db68] = 8
                                    JVMCI data     [0x00007fdb4ad9db68,0x00007fdb4ad9db80] = 24
                                   [Disassembly]
                                   --------------------------------------------------------------------------------
                                   [Constant Pool (empty)]
                                   --------------------------------------------------------------------------------
                                   [Entry Point]
                                     # {method} {0x00007fdac3484538} &apos;interface_static_method&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
                                     #           [sp+0x20]  (sp of caller)
                                     0x00007fdb4ad9d920:   mov    0x8(%rsi),%r10d
                                     0x00007fdb4ad9d924:   movabs $0x7fdac7000000,%r12
                                     0x00007fdb4ad9d92e:   add    %r12,%r10
                                     0x00007fdb4ad9d931:   xor    %r12,%r12
                                     0x00007fdb4ad9d934:   cmp    %r10,%rax
                                     0x00007fdb4ad9d937:   jne    0x00007fdb4a6f9080           ;   {runtime_call ic_miss_stub}
                                     0x00007fdb4ad9d93d:   data16 xchg %ax,%ax
                                   [Verified Entry Point]
   0.02%                             0x00007fdb4ad9d940:   mov    %eax,-0x14000(%rsp)
   0.16%                             0x00007fdb4ad9d947:   sub    $0x18,%rsp
   0.01%                             0x00007fdb4ad9d94b:   nop
                                     0x00007fdb4ad9d94c:   cmpl   $0x1,0x20(%r15)
   0.20%                             0x00007fdb4ad9d954:   jne    0x00007fdb4ad9da10
   0.01%                             0x00007fdb4ad9d95a:   mov    %rbp,0x10(%rsp)
   0.01%                             0x00007fdb4ad9d95f:   mov    0xc(%rsi),%esi               ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method@1 (line 78)
   0.02%                             0x00007fdb4ad9d962:   cmp    $0x4,%esi
                               ╭     0x00007fdb4ad9d965:   jge    0x00007fdb4ad9d999
                               │     0x00007fdb4ad9d96b:   cmp    $0x2,%esi
                               │╭    0x00007fdb4ad9d96e:   jge    0x00007fdb4ad9d98b
                               ││    0x00007fdb4ad9d974:   cmp    $0x0,%esi
                               ││    0x00007fdb4ad9d977:   je     0x00007fdb4ad9d9ef
                               ││    0x00007fdb4ad9d97d:   cmp    $0x1,%esi
                               ││    0x00007fdb4ad9d980:   je     0x00007fdb4ad9d9ef
                               ││╭   0x00007fdb4ad9d986:   jmp    0x00007fdb4ad9d9c6
                               │↘│   0x00007fdb4ad9d98b:   cmp    $0x2,%esi
                               │ │   0x00007fdb4ad9d98e:   je     0x00007fdb4ad9d9ef
                               │ │   0x00007fdb4ad9d994:   jmp    0x00007fdb4ad9d9ef
   0.20%                       ↘ │   0x00007fdb4ad9d999:   cmp    $0x6,%esi
                                 │   0x00007fdb4ad9d99c:   nopl   0x0(%rax)
   0.01%                         │╭  0x00007fdb4ad9d9a0:   jge    0x00007fdb4ad9d9b4
                                 ││  0x00007fdb4ad9d9a6:   cmp    $0x4,%esi
                                 ││  0x00007fdb4ad9d9a9:   je     0x00007fdb4ad9d9ef
                                 ││  0x00007fdb4ad9d9af:   jmp    0x00007fdb4ad9d9ef
   0.20%                         │↘  0x00007fdb4ad9d9b4:   cmp    $0x6,%esi
                                 │   0x00007fdb4ad9d9b7:   je     0x00007fdb4ad9d9ef
   0.00%                         │   0x00007fdb4ad9d9bd:   cmp    $0x7,%esi
   0.00%                         │   0x00007fdb4ad9d9c0:   je     0x00007fdb4ad9d9ef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 129)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method@4 (line 78)
   0.01%                         ↘   0x00007fdb4ad9d9c6:   lea    -0x8(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method@4 (line 78)
   0.16%                             0x00007fdb4ad9d9c9:   xchg   %ax,%ax
                                     0x00007fdb4ad9d9cb:   call   0x00007fdb4ad9d520           ; ImmutableOopMap {}
                                                                                               ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 132)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::interface_static_method@4 (line 78)
                                                                                               ;   {static_call}
   1.84%                             0x00007fdb4ad9d9d0:   nopl   0x240(%rax,%rax,1)           ;   {other}
   0.11%                             0x00007fdb4ad9d9d8:   mov    0x10(%rsp),%rbp
   1.49%                             0x00007fdb4ad9d9dd:   add    $0x18,%rsp
   0.00%                             0x00007fdb4ad9d9e1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  92.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1077 
   2.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1105 
   0.80%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.69%  <...other 455 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.28%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 1077 
   4.44%                kernel  [unknown] 
   2.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 6, compile id 1105 
   0.05%             libjvm.so  fileStream::write 
   0.05%             libjvm.so  ElfSymbolTable::lookup 
   0.05%             libc.so.6  __vfprintf_internal 
   0.05%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  xmlStream::write_text 
   0.03%             libc.so.6  __GI___libc_write 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_setb 
   0.02%             libc.so.6  __vsnprintf_internal 
   0.02%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.02%             libc.so.6  __GI___pthread_enable_asynccancel 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.62%  <...other 219 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.41%        jvmci, level 4
   4.44%                kernel
   0.49%             libjvm.so
   0.32%             libc.so.6
   0.20%   libjvmcicompiler.so
   0.07%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.02%           interpreter
   0.01%                      
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:04:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.127 ns/op
# Warmup Iteration   2: 11.460 ns/op
# Warmup Iteration   3: 11.297 ns/op
# Warmup Iteration   4: 11.343 ns/op
# Warmup Iteration   5: 11.260 ns/op
Iteration   1: 11.307 ns/op
Iteration   2: 11.191 ns/op
Iteration   3: 11.356 ns/op
Iteration   4: 11.294 ns/op
Iteration   5: 11.634 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  11.356 ±(99.9%) 0.640 ns/op [Average]
  (min, avg, max) = (11.191, 11.356, 11.634), stdev = 0.166
  CI (99.9%): [10.716, 11.997] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_non_static:asm":
PrintAssembly processed: 222120 total address lines.
Perf output processed (skipped 84.543 seconds):
 Column 1: cycles (51648 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1088 

             # {method} {0x00007f8def47b9a0} &apos;lambda_non_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f8e76d9f9a0:   mov    0x8(%rsi),%r10d
             0x00007f8e76d9f9a4:   movabs $0x7f8df3000000,%r12
             0x00007f8e76d9f9ae:   add    %r12,%r10
             0x00007f8e76d9f9b1:   xor    %r12,%r12
             0x00007f8e76d9f9b4:   cmp    %r10,%rax
             0x00007f8e76d9f9b7:   jne    0x00007f8e766f9080           ;   {runtime_call ic_miss_stub}
             0x00007f8e76d9f9bd:   data16 xchg %ax,%ax
           [Verified Entry Point]
   4.21%     0x00007f8e76d9f9c0:   mov    %eax,-0x14000(%rsp)
   5.19%     0x00007f8e76d9f9c7:   sub    $0x18,%rsp
   4.19%     0x00007f8e76d9f9cb:   nop
   0.01%     0x00007f8e76d9f9cc:   cmpl   $0x1,0x20(%r15)
   5.23%     0x00007f8e76d9f9d4:   jne    0x00007f8e76d9fa72
   0.17%     0x00007f8e76d9f9da:   mov    %rbp,0x10(%rsp)
   4.28%     0x00007f8e76d9f9df:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   0.02%     0x00007f8e76d9f9e2:   cmpl   $0x102b158,0x8(,%rax,8)      ; implicit exception: dispatches to 0x00007f8e76d9fa9a
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark$$Lambda+0x00007f8df402b158&apos;)}
   5.75%  ╭  0x00007f8e76d9f9ed:   jne    0x00007f8e76d9fa3b           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   4.54%  │  0x00007f8e76d9f9f3:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 96)
   0.02%  │  0x00007f8e76d9f9f7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   4.83%  │  0x00007f8e76d9fa00:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f8e76d9fabd
   4.54%  │  0x00007f8e76d9fa09:   jne    0x00007f8e76d9fa63           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 138)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f8df402b158::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
   0.14%  │  0x00007f8e76d9fa0f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
   5.08%  │  0x00007f8e76d9fa16:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007f8e76d9fae0
   7.18%  │  0x00007f8e76d9fa1a:   movabs $0x7fed34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fed34d58})}
   0.08%  │  0x00007f8e76d9fa24:   mov    0x10(%rsp),%rbp
   4.19%  │  0x00007f8e76d9fa29:   add    $0x18,%rsp
   0.01%  │  0x00007f8e76d9fa2d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f8e76d9fa34:   ja     0x00007f8e76d9fa86
   5.25%  │  0x00007f8e76d9fa3a:   ret    
          ↘  0x00007f8e76d9fa3b:   mov    $0x294,%r11
             0x00007f8e76d9fa42:   mov    $0xffffffcd,%r10d
             0x00007f8e76d9fa48:   mov    %r10d,0x484(%r15)            ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$new$0@1 (line 138)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007f8df402b158::apply@8
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 96)
             0x00007f8e76d9fa4f:   mov    %r11,0x490(%r15)
             0x00007f8e76d9fa56:   call   0x00007f8e766ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 96)
....................................................................................................
  64.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1114 

              0x00007f8e76da3673:   mov    0x10(%rsp),%rdx
              0x00007f8e76da3678:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@10 (line 234)
              0x00007f8e76da367c:   movq   $0x0,0x20(%rsp)
          ╭   0x00007f8e76da3685:   jmp    0x00007f8e76da36af           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
          │   0x00007f8e76da368a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f8e76da3695:   data16 data16 xchg %ax,%ax
          │   0x00007f8e76da3699:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   5.06%  │↗  0x00007f8e76da36a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
   0.15%  ││  0x00007f8e76da36a7:   test   %eax,(%r11)                  ;   {poll}
   4.29%  ││  0x00007f8e76da36aa:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 236)
   0.01%  ↘│  0x00007f8e76da36af:   mov    0x8(%rsp),%r10
   5.14%   │  0x00007f8e76da36b4:   mov    %r10,%rsi
   0.13%   │  0x00007f8e76da36b7:   call   0x00007f8e766f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.64%   │  0x00007f8e76da36bc:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   4.22%   │  0x00007f8e76da36c4:   mov    0x20(%rsp),%r10
   5.06%   │  0x00007f8e76da36c9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 237)
   0.23%   │  0x00007f8e76da36cc:   mov    0x18(%rsp),%rsi
   4.14%   │  0x00007f8e76da36d1:   cmpb   $0x0,0x94(%rsi)
   0.34%   ╰  0x00007f8e76da36d8:   je     0x00007f8e76da36a0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 238)
              0x00007f8e76da36da:   mov    %r10,0x20(%rsp)
              0x00007f8e76da36df:   nop
              0x00007f8e76da36e0:   call   0x00007f8e8f8d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f8e76da36e5:   nop
              0x00007f8e76da36e6:   mov    0x10(%rsp),%rdx
              0x00007f8e76da36eb:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 239)
              0x00007f8e76da36ef:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@46 (line 240)
....................................................................................................
  29.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.88%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1088 
  29.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1114 
   0.77%                kernel  [unknown] 
   0.42%                kernel  [unknown] 
   0.37%                kernel  [unknown] 
   0.21%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.53%  <...other 396 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.88%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 1088 
  29.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 5, compile id 1114 
   4.70%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.05%             libjvm.so  fileStream::write 
   0.05%             libc.so.6  __vfprintf_internal 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  xmlTextStream::flush 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.03%             libjvm.so  RelocIterator::initialize 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __strchr_avx2 
   0.02%   libjvmcicompiler.so  java.nio.Buffer::Buffer 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%                        <unknown> 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.50%  <...other 184 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.31%        jvmci, level 4
   4.70%                kernel
   0.44%             libjvm.so
   0.27%             libc.so.6
   0.15%   libjvmcicompiler.so
   0.06%        hsdis-amd64.so
   0.04%           interpreter
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%                [vdso]
   0.00%        libz.so.1.2.11
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, Java HotSpot(TM) 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ee-jdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:02:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.693 ns/op
# Warmup Iteration   2: 9.018 ns/op
# Warmup Iteration   3: 9.239 ns/op
# Warmup Iteration   4: 9.057 ns/op
# Warmup Iteration   5: 8.940 ns/op
Iteration   1: 8.886 ns/op
Iteration   2: 9.051 ns/op
Iteration   3: 8.982 ns/op
Iteration   4: 9.053 ns/op
Iteration   5: 9.069 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static":
  9.008 ±(99.9%) 0.293 ns/op [Average]
  (min, avg, max) = (8.886, 9.008, 9.069), stdev = 0.076
  CI (99.9%): [8.715, 9.301] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.lambda_static:asm":
PrintAssembly processed: 224925 total address lines.
Perf output processed (skipped 85.303 seconds):
 Column 1: cycles (51347 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1105 

             # {method} {0x00007fa73347ba70} &apos;lambda_static&apos; &apos;()Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/RecursiveMethodCallBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fa7bad9d680:   mov    0x8(%rsi),%r10d
             0x00007fa7bad9d684:   movabs $0x7fa737000000,%r12
             0x00007fa7bad9d68e:   add    %r12,%r10
             0x00007fa7bad9d691:   xor    %r12,%r12
             0x00007fa7bad9d694:   cmp    %r10,%rax
             0x00007fa7bad9d697:   jne    0x00007fa7ba6f9080           ;   {runtime_call ic_miss_stub}
             0x00007fa7bad9d69d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   5.62%     0x00007fa7bad9d6a0:   mov    %eax,-0x14000(%rsp)
   6.68%     0x00007fa7bad9d6a7:   sub    $0x18,%rsp
   5.33%     0x00007fa7bad9d6ab:   nop
   0.12%     0x00007fa7bad9d6ac:   cmpl   $0x1,0x20(%r15)
   6.32%     0x00007fa7bad9d6b4:   jne    0x00007fa7bad9d714
   0.34%     0x00007fa7bad9d6ba:   mov    %rbp,0x10(%rsp)
   5.29%     0x00007fa7bad9d6bf:   mov    0x14(%rsi),%eax              ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
   0.14%     0x00007fa7bad9d6c2:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fa7bad9d735
   8.54%  ╭  0x00007fa7bad9d6ca:   jne    0x00007fa7bad9d6f1
   6.54%  │  0x00007fa7bad9d6d0:   movabs $0x7fec34d58,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fec34d58})}
   0.11%  │  0x00007fa7bad9d6da:   mov    0x10(%rsp),%rbp
   5.29%  │  0x00007fa7bad9d6df:   add    $0x18,%rsp
   0.13%  │  0x00007fa7bad9d6e3:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fa7bad9d6ea:   ja     0x00007fa7bad9d721
   6.61%  │  0x00007fa7bad9d6f0:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 102)
          ↘  0x00007fa7bad9d6f1:   movl   $0xffffffed,0x484(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 146)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark$$Lambda/0x00007fa73802af20::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 102)
             0x00007fa7bad9d6fc:   movq   $0x14,0x490(%r15)
             0x00007fa7bad9d707:   call   0x00007fa7ba6ff17a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 102)
                                                                       ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  57.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1129 

              0x00007fa7bada42f3:   mov    0x10(%rsp),%rdx
              0x00007fa7bada42f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@10 (line 234)
              0x00007fa7bada42fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fa7bada4305:   jmp    0x00007fa7bada432f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
          │   0x00007fa7bada430a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fa7bada4315:   data16 data16 xchg %ax,%ax
          │   0x00007fa7bada4319:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   6.57%  │↗  0x00007fa7bada4320:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
   0.21%  ││  0x00007fa7bada4327:   test   %eax,(%r11)                  ;   {poll}
   5.58%  ││  0x00007fa7bada432a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 236)
   0.13%  ↘│  0x00007fa7bada432f:   mov    0x8(%rsp),%r10
   6.50%   │  0x00007fa7bada4334:   mov    %r10,%rsi
   0.19%   │  0x00007fa7bada4337:   call   0x00007fa7ba6f9380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 236)
           │                                                            ;   {optimized virtual_call}
   0.85%   │  0x00007fa7bada433c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 236)
           │                                                            ;   {other}
   5.36%   │  0x00007fa7bada4344:   mov    0x20(%rsp),%r10
   6.54%   │  0x00007fa7bada4349:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 237)
   0.37%   │  0x00007fa7bada434c:   mov    0x18(%rsp),%rsi
   5.40%   │  0x00007fa7bada4351:   cmpb   $0x0,0x94(%rsi)
   0.64%   ╰  0x00007fa7bada4358:   je     0x00007fa7bada4320           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 238)
              0x00007fa7bada435a:   mov    %r10,0x20(%rsp)
              0x00007fa7bada435f:   nop
              0x00007fa7bada4360:   call   0x00007fa7d40d32b0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fa7bada4365:   nop
              0x00007fa7bada4366:   mov    0x10(%rsp),%rdx
              0x00007fa7bada436b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 239)
              0x00007fa7bada436f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@46 (line 240)
....................................................................................................
  38.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1105 
  38.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1129 
   0.72%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  fileStream::flush 
   0.05%                kernel  [unknown] 
   1.94%  <...other 354 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.06%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 1105 
  38.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 1129 
   3.70%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%             libjvm.so  fileStream::flush 
   0.04%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  _IO_fwrite 
   0.03%             libjvm.so  xmlTextStream::flush 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libc.so.6  read 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.jni.functions.JNIFunctions::NewStringUTF 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.44%  <...other 174 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.42%        jvmci, level 4
   3.70%                kernel
   0.43%             libjvm.so
   0.24%             libc.so.6
   0.11%   libjvmcicompiler.so
   0.04%        hsdis-amd64.so
   0.02%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.01%                [vdso]
   0.00%                      
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:14:10

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

Benchmark                                                     (depth)  Mode  Cnt    Score     Error  Units
RecursiveMethodCallBenchmark.class_non_static_method              256  avgt    5  384.443 ±  14.615  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:asm          256  avgt           NaN              ---
RecursiveMethodCallBenchmark.class_static_method                  256  avgt    5  496.954 ±  21.157  ns/op
RecursiveMethodCallBenchmark.class_static_method:asm              256  avgt           NaN              ---
RecursiveMethodCallBenchmark.interface_non_static_method          256  avgt    5  364.386 ±   9.589  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:asm      256  avgt           NaN              ---
RecursiveMethodCallBenchmark.interface_static_method              256  avgt    5  582.917 ± 275.876  ns/op
RecursiveMethodCallBenchmark.interface_static_method:asm          256  avgt           NaN              ---
RecursiveMethodCallBenchmark.lambda_non_static                    256  avgt    5   11.356 ±   0.640  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:asm                256  avgt           NaN              ---
RecursiveMethodCallBenchmark.lambda_static                        256  avgt    5    9.008 ±   0.293  ns/op
RecursiveMethodCallBenchmark.lambda_static:asm                    256  avgt           NaN              ---
