# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 970.107 us/op
# Warmup Iteration   2: 641.905 us/op
# Warmup Iteration   3: 640.468 us/op
# Warmup Iteration   4: 635.544 us/op
# Warmup Iteration   5: 631.656 us/op
Iteration   1: 636.783 us/op
Iteration   2: 719.271 us/op
Iteration   3: 656.852 us/op
Iteration   4: 636.614 us/op
Iteration   5: 634.349 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  656.774 ±(99.9%) 139.036 us/op [Average]
  (min, avg, max) = (634.349, 656.774, 719.271), stdev = 36.107
  CI (99.9%): [517.738, 795.810] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 157051 total address lines.
Perf output processed (skipped 67.912 seconds):
 Column 1: cycles (50932 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 726 

 <region is too big to display, has 3365 lines, but threshold is 1000>
....................................................................................................
  59.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern$$Lambda.0x80000002a::is, version 2, compile id 697 

                 dependencies   [0x00007fde7c4fd3a0,0x00007fde7c4fd3a8] = 8
                [Disassembly]
                --------------------------------------------------------------------------------
                [Constant Pool (empty)]
                --------------------------------------------------------------------------------
                [Entry Point]
                  # {method} {0x00007fddfb3a9ad0} &apos;is&apos; &apos;(I)Z&apos; in &apos;java/util/regex/Pattern$$Lambda+0x80000002a&apos;
                  # this:     rsi:rsi   = &apos;java/util/regex/Pattern$$Lambda+0x80000002a&apos;
                  # parm0:    rdx       = int
                  #           [sp+0x20]  (sp of caller)
   1.31%          0x00007fde7c4fd280:   mov    0x8(%rsi),%r10d
   0.31%          0x00007fde7c4fd284:   movabs $0x7fddfb000000,%r11
   0.27%          0x00007fde7c4fd28e:   add    %r11,%r10
   0.19%          0x00007fde7c4fd291:   cmp    %r10,%rax
                  0x00007fde7c4fd294:   jne    0x00007fde7bf85080           ;   {runtime_call ic_miss_stub}
   1.16%          0x00007fde7c4fd29a:   xchg   %ax,%ax
   0.31%          0x00007fde7c4fd29c:   nopl   0x0(%rax)
                [Verified Entry Point]
   0.25%          0x00007fde7c4fd2a0:   sub    $0x18,%rsp
   0.08%          0x00007fde7c4fd2a7:   mov    %rbp,0x10(%rsp)
   1.21%          0x00007fde7c4fd2ac:   cmpl   $0x1,0x20(%r15)
   0.36%  ╭       0x00007fde7c4fd2b4:   jne    0x00007fde7c4fd2f8           ;*synchronization entry
          │                                                                 ; - java.util.regex.Pattern$$Lambda/0x80000002a::is@-1
   0.24%  │    ↗  0x00007fde7c4fd2ba:   mov    0xc(%rsi),%r10d
   0.06%  │    │  0x00007fde7c4fd2be:   xchg   %ax,%ax
   1.18%  │    │  0x00007fde7c4fd2c0:   cmp    %r10d,%edx
          │╭   │  0x00007fde7c4fd2c3:   je     0x00007fde7c4fd2da           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern::lambda$Single$14@2 (line 5910)
          ││   │                                                            ; - java.util.regex.Pattern$$Lambda/0x80000002a::is@5
   0.74%  ││   │  0x00007fde7c4fd2c5:   xor    %eax,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern::lambda$Single$14@10 (line 5910)
          ││   │                                                            ; - java.util.regex.Pattern$$Lambda/0x80000002a::is@5
   0.31%  ││ ↗ │  0x00007fde7c4fd2c7:   add    $0x10,%rsp
   0.39%  ││ │ │  0x00007fde7c4fd2cb:   pop    %rbp
   2.53%  ││ │↗│  0x00007fde7c4fd2cc:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││╭│││  0x00007fde7c4fd2d3:   ja     0x00007fde7c4fd2e2
   0.64%  ││││││  0x00007fde7c4fd2d9:   ret    
   2.18%  │↘││││  0x00007fde7c4fd2da:   mov    $0x1,%eax
   1.67%  │ ││││  0x00007fde7c4fd2df:   nop
   0.00%  │ │╰││  0x00007fde7c4fd2e0:   jmp    0x00007fde7c4fd2c7
          │ ↘ ╰│  0x00007fde7c4fd2e2:   movabs $0x7fde7c4fd2cc,%r10         ;   {internal_word}
          │    │  0x00007fde7c4fd2ec:   mov    %r10,0x468(%r15)
          │    │  0x00007fde7c4fd2f3:   jmp    0x00007fde7bf8c000           ;   {runtime_call SafepointBlob}
          ↘    │  0x00007fde7c4fd2f8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
               ╰  0x00007fde7c4fd2fd:   jmp    0x00007fde7c4fd2ba
                  0x00007fde7c4fd302:   hlt    
                  0x00007fde7c4fd303:   hlt    
                  0x00007fde7c4fd304:   hlt    
                  0x00007fde7c4fd305:   hlt    
                  0x00007fde7c4fd306:   hlt    
....................................................................................................
  15.38%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.lang.String::charAt, version 2, compile id 85 

            nul chk table  [0x00007fde7c4d1190,0x00007fde7c4d11a0] = 16
           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x00007fddfb00ef30} &apos;charAt&apos; &apos;(I)C&apos; in &apos;java/lang/String&apos;
             # this:     rsi:rsi   = &apos;java/lang/String&apos;
             # parm0:    rdx       = int
             #           [sp+0x30]  (sp of caller)
   1.48%     0x00007fde7c4d0ea0:   mov    0x8(%rsi),%r10d
   0.27%     0x00007fde7c4d0ea4:   movabs $0x7fddfb000000,%r11
   0.06%     0x00007fde7c4d0eae:   add    %r11,%r10
   1.06%     0x00007fde7c4d0eb1:   cmp    %r10,%rax
             0x00007fde7c4d0eb4:   jne    0x00007fde7bf85080           ;   {runtime_call ic_miss_stub}
   0.31%     0x00007fde7c4d0eba:   xchg   %ax,%ax
   0.32%     0x00007fde7c4d0ebc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.05%     0x00007fde7c4d0ec0:   mov    %eax,-0x14000(%rsp)
   1.58%     0x00007fde7c4d0ec7:   push   %rbp
   0.27%     0x00007fde7c4d0ec8:   sub    $0x20,%rsp
   1.19%     0x00007fde7c4d0ecc:   cmpl   $0x1,0x20(%r15)
   0.28%     0x00007fde7c4d0ed4:   jne    0x00007fde7c4d0f96           ;*synchronization entry
                                                                       ; - java.lang.String::charAt@-1 (line 1554)
   0.27%     0x00007fde7c4d0eda:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@7 (line 4817)
                                                                       ; - java.lang.String::charAt@1 (line 1554)
   0.06%     0x00007fde7c4d0edf:   nop
   1.17%     0x00007fde7c4d0ee0:   test   %r10d,%r10d
             0x00007fde7c4d0ee3:   jne    0x00007fde7c4d0f4c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@10 (line 4817)
                                                                       ; - java.lang.String::charAt@1 (line 1554)
   0.30%     0x00007fde7c4d0ee9:   mov    0x14(%rsi),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::charAt@8 (line 1555)
   0.29%     0x00007fde7c4d0eed:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007fde7c4d0f6c
                                                                       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                       ; - java.lang.String::charAt@12 (line 1555)
   0.07%     0x00007fde7c4d0ef2:   cmp    %ebp,%edx
          ╭  0x00007fde7c4d0ef4:   jae    0x00007fde7c4d0f17           ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
          │                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
          │                                                            ; - java.lang.String::charAt@12 (line 1555)
   1.03%  │  0x00007fde7c4d0ef6:   cmp    %ebp,%edx
          │  0x00007fde7c4d0ef8:   jae    0x00007fde7c4d0f34
   0.29%  │  0x00007fde7c4d0efa:   lea    (%r12,%r11,8),%r10
   0.25%  │  0x00007fde7c4d0efe:   movzbl 0x10(%r10,%rdx,1),%eax       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                                                            ; - java.lang.String::charAt@12 (line 1555)
   0.20%  │  0x00007fde7c4d0f04:   add    $0x20,%rsp
   1.12%  │  0x00007fde7c4d0f08:   pop    %rbp
   0.27%  │  0x00007fde7c4d0f09:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fde7c4d0f10:   ja     0x00007fde7c4d0f80
   0.38%  │  0x00007fde7c4d0f16:   ret    
          ↘  0x00007fde7c4d0f17:   mov    $0xffffffe4,%esi
             0x00007fde7c4d0f1c:   mov    %edx,0x4(%rsp)
             0x00007fde7c4d0f20:   mov    %r11d,0x8(%rsp)
             0x00007fde7c4d0f25:   xchg   %ax,%ax
             0x00007fde7c4d0f27:   call   0x00007fde7bf8af00           ; ImmutableOopMap {[8]=NarrowOop }
                                                                       ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkIndex@5 (line 4828)
                                                                       ; - java.lang.StringLatin1::charAt@3 (line 46)
                                                                       ; - java.lang.String::charAt@12 (line 1555)
                                                                       ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  12.60%  <total for region 3>

....[Hottest Regions]...............................................................................
  59.49%           c2, level 4  java.util.regex.Pattern::split, version 4, compile id 726 
  15.38%           c2, level 4  java.util.regex.Pattern$$Lambda.0x80000002a::is, version 2, compile id 697 
  12.60%           c2, level 4  java.lang.String::charAt, version 2, compile id 85 
   3.42%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.22%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 703 
   1.34%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.43%                kernel  [unknown] 
   0.37%                kernel  [unknown] 
   0.37%           c2, level 4  java.util.ArrayList::grow, version 1, compile id 728 
   0.21%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%             libjvm.so  ElfSymbolTable::lookup 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.25%  <...other 365 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  59.49%           c2, level 4  java.util.regex.Pattern::split, version 4, compile id 726 
  15.38%           c2, level 4  java.util.regex.Pattern$$Lambda.0x80000002a::is, version 2, compile id 697 
  12.60%           c2, level 4  java.lang.String::charAt, version 2, compile id 85 
   3.42%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.22%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 703 
   3.16%                kernel  [unknown] 
   1.34%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.37%           c2, level 4  java.util.ArrayList::grow, version 1, compile id 728 
   0.10%             libjvm.so  ElfSymbolTable::lookup 
   0.08%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.03%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.02%             libc.so.6  __memset_avx2_unaligned_erms 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  HeapRegionManager::par_iterate 
   0.02%                [vdso]  [unknown] 
   0.02%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.65%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.07%           c2, level 4
   4.76%          runtime stub
   3.16%                kernel
   0.70%             libjvm.so
   0.22%             libc.so.6
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.02%                [vdso]
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.01%           c1, level 3
   0.00%         perf-5548.map
   0.00%             libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:06:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 673.048 us/op
# Warmup Iteration   2: 475.933 us/op
# Warmup Iteration   3: 468.569 us/op
# Warmup Iteration   4: 473.757 us/op
# Warmup Iteration   5: 467.324 us/op
Iteration   1: 470.492 us/op
Iteration   2: 473.379 us/op
Iteration   3: 469.784 us/op
Iteration   4: 471.920 us/op
Iteration   5: 472.033 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  471.522 ±(99.9%) 5.428 us/op [Average]
  (min, avg, max) = (469.784, 471.522, 473.379), stdev = 1.410
  CI (99.9%): [466.093, 476.950] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 147980 total address lines.
Perf output processed (skipped 66.691 seconds):
 Column 1: cycles (50967 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 687 

                                         # {method} {0x00007f21cb0d1b40} &apos;find&apos; &apos;()Z&apos; in &apos;java/util/regex/Matcher&apos;
                                         #           [sp+0x80]  (sp of caller)
                                         0x00007f224c4fdae0:   mov    0x8(%rsi),%r10d
                                         0x00007f224c4fdae4:   movabs $0x7f21cb000000,%r11
                                         0x00007f224c4fdaee:   add    %r11,%r10
                                         0x00007f224c4fdaf1:   cmp    %r10,%rax
                                         0x00007f224c4fdaf4:   jne    0x00007f224bf85080           ;   {runtime_call ic_miss_stub}
                                         0x00007f224c4fdafa:   xchg   %ax,%ax
                                         0x00007f224c4fdafc:   nopl   0x0(%rax)
                                       [Verified Entry Point]
   0.12%                                 0x00007f224c4fdb00:   mov    %eax,-0x14000(%rsp)
   0.34%                                 0x00007f224c4fdb07:   push   %rbp
   0.11%                                 0x00007f224c4fdb08:   sub    $0x70,%rsp
   0.07%                                 0x00007f224c4fdb0c:   cmpl   $0x1,0x20(%r15)
   0.16%                                 0x00007f224c4fdb14:   jne    0x00007f224c4fe72a           ;*synchronization entry
                                                                                                   ; - java.util.regex.Matcher::find@-1 (line 744)
   0.10%                                 0x00007f224c4fdb1a:   mov    %rsi,%r10
   0.03%                                 0x00007f224c4fdb1d:   mov    0x1c(%rsi),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@7 (line 745)
   0.08%                                 0x00007f224c4fdb21:   mov    0x20(%rsi),%r11d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@1 (line 744)
   0.19%                                 0x00007f224c4fdb25:   cmp    %r8d,%r11d
                                         0x00007f224c4fdb28:   je     0x00007f224c4fe3dc           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@10 (line 745)
   0.07%                                 0x00007f224c4fdb2e:   mov    0xc(%rsi),%ebp               ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@18 (line 749)
   0.06%                                 0x00007f224c4fdb31:   cmp    %ebp,%r11d
                                         0x00007f224c4fdb34:   jl     0x00007f224c4fe3fc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@21 (line 749)
   0.06%                                 0x00007f224c4fdb3a:   mov    0x10(%rsi),%ebp              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@31 (line 753)
   0.20%                                 0x00007f224c4fdb3d:   data16 xchg %ax,%ax
   0.05%                                 0x00007f224c4fdb40:   cmp    %ebp,%r11d
                                         0x00007f224c4fdb43:   jg     0x00007f224c4fe418           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::find@34 (line 753)
   0.03%                                 0x00007f224c4fdb49:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::search@7 (line 1727)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.08%                                 0x00007f224c4fdb4d:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::search@2 (line 1726)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.18%                                 0x00007f224c4fdb51:   test   %r11d,%r11d
                                         0x00007f224c4fdb54:   jl     0x00007f224c4fe434           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::search@11 (line 1728)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.05%                                 0x00007f224c4fdb5a:   mov    0x24(%rsi),%r9d              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::search@27 (line 1730)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%                                 0x00007f224c4fdb5e:   xchg   %ax,%ax
   0.06%                                 0x00007f224c4fdb60:   test   %r9d,%r9d
          ╭                              0x00007f224c4fdb63:   jl     0x00007f224c4fe105
   0.21%  │                           ↗  0x00007f224c4fdb69:   mov    %r9d,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@41 (line 1730)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.07%  │                           │  0x00007f224c4fdb6d:   mov    %r11d,0x1c(%rsi)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@22 (line 1729)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.07%  │                           │  0x00007f224c4fdb71:   mov    0x38(%rsi),%r9d              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@48 (line 1731)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.06%  │                           │  0x00007f224c4fdb75:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f224c4fe648
          │                           │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@51 (line 1731)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.20%  │                           │  0x00007f224c4fdb7a:   test   %ebx,%ebx
   0.06%  │                           │  0x00007f224c4fdb7c:   nopl   0x0(%rax)
   0.05%  │╭                          │  0x00007f224c4fdb80:   jbe    0x00007f224c4fdc33           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                          │                                                            ; - java.util.regex.Matcher::search@52 (line 1731)
          ││                          │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.11%  ││                          │  0x00007f224c4fdb86:   mov    %ebx,%r8d
   0.16%  ││                          │  0x00007f224c4fdb89:   dec    %r8d
   0.05%  ││                          │  0x00007f224c4fdb8c:   cmp    %ebx,%r8d
          ││                          │  0x00007f224c4fdb8f:   jae    0x00007f224c4fe3b4
   0.11%  ││                          │  0x00007f224c4fdb95:   shl    $0x3,%r9
   0.06%  ││                          │  0x00007f224c4fdb99:   mov    %r9d,%r8d
   0.17%  ││                          │  0x00007f224c4fdb9c:   shr    $0x2,%r8d
   0.07%  ││                          │  0x00007f224c4fdba0:   and    $0x3,%r8d
   0.07%  ││                          │  0x00007f224c4fdba4:   mov    $0xffffffff,%ecx
   0.05%  ││                          │  0x00007f224c4fdba9:   sub    %r8d,%ecx
   0.13%  ││                          │  0x00007f224c4fdbac:   and    $0x3,%ecx
   0.05%  ││                          │  0x00007f224c4fdbaf:   inc    %ecx
   0.08%  ││                          │  0x00007f224c4fdbb1:   cmp    %ebx,%ecx
   0.06%  ││                          │  0x00007f224c4fdbb3:   cmovg  %ebx,%ecx
   0.14%  ││                          │  0x00007f224c4fdbb6:   xor    %edi,%edi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                          │                                                            ; - java.util.regex.Matcher::search@55 (line 1732)
          ││                          │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.20%  ││ ↗                        │  0x00007f224c4fdbb8:   movl   $0xffffffff,0x10(%r9,%rdi,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                        │                                                            ; - java.util.regex.Matcher::search@61 (line 1732)
          ││ │                        │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.35%  ││ │                        │  0x00007f224c4fdbc1:   mov    %edi,%r8d
   0.19%  ││ │                        │  0x00007f224c4fdbc4:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                        │                                                            ; - java.util.regex.Matcher::search@62 (line 1731)
          ││ │                        │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.37%  ││ │                        │  0x00007f224c4fdbc7:   cmp    %ecx,%r8d
          ││╭│                        │  0x00007f224c4fdbca:   jge    0x00007f224c4fdbd1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││                        │                                                            ; - java.util.regex.Matcher::search@52 (line 1731)
          ││││                        │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.13%  ││││                        │  0x00007f224c4fdbcc:   mov    %r8d,%edi
   0.21%  │││╰                        │  0x00007f224c4fdbcf:   jmp    0x00007f224c4fdbb8
   0.06%  ││↘                         │  0x00007f224c4fdbd1:   lea    -0x3(%rbx),%ecx
   0.16%  ││                          │  0x00007f224c4fdbd4:   cmp    %ecx,%r8d
          ││                          │  0x00007f224c4fdbd7:   jge    0x00007f224c4fe3d4
   0.06%  ││                          │  0x00007f224c4fdbdd:   inc    %edi
   0.07%  ││                          │  0x00007f224c4fdbdf:   mov    $0xfa0,%esi
   0.05%  ││                          │  0x00007f224c4fdbe4:   vpcmpeqd %xmm0,%xmm0,%xmm0
   0.16%  ││   ↗                      │  0x00007f224c4fdbe8:   mov    %ebx,%edx
   0.06%  ││   │                      │  0x00007f224c4fdbea:   sub    %edi,%edx
   0.08%  ││   │                      │  0x00007f224c4fdbec:   add    $0xfffffffd,%edx
   0.06%  ││   │                      │  0x00007f224c4fdbef:   xor    %ebp,%ebp
   0.13%  ││   │                      │  0x00007f224c4fdbf1:   cmp    %edi,%ecx
   0.06%  ││   │                      │  0x00007f224c4fdbf3:   cmovl  %ebp,%edx                    ;   {no_reloc}
   0.10%  ││   │                      │  0x00007f224c4fdbf6:   cmp    $0xfa0,%edx
   0.08%  ││   │                      │  0x00007f224c4fdbfc:   cmova  %esi,%edx
   0.20%  ││   │                      │  0x00007f224c4fdbff:   add    %edi,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                      │                                                            ; - java.util.regex.Matcher::search@55 (line 1732)
          ││   │                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.61%  ││  ↗│                      │  0x00007f224c4fdc01:   vmovdqu %xmm0,0x10(%r9,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                      │                                                            ; - java.util.regex.Matcher::search@61 (line 1732)
          ││  ││                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.21%  ││  ││                      │  0x00007f224c4fdc08:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                      │                                                            ; - java.util.regex.Matcher::search@62 (line 1731)
          ││  ││                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.32%  ││  ││                      │  0x00007f224c4fdc0b:   cmp    %edx,%edi
          ││  ╰│                      │  0x00007f224c4fdc0d:   jl     0x00007f224c4fdc01           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││   │                      │                                                            ; - java.util.regex.Matcher::search@65 (line 1731)
          ││   │                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.07%  ││   │                      │  0x00007f224c4fdc0f:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r10=Oop r9=Oop }
          ││   │                      │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││   │                      │                                                            ; - (reexecute) java.util.regex.Matcher::search@65 (line 1731)
          ││   │                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.27%  ││   │                      │  0x00007f224c4fdc16:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││   │                      │                                                            ; - java.util.regex.Matcher::search@65 (line 1731)
          ││   │                      │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          ││   │                      │                                                            ;   {poll}
   0.07%  ││   │                      │  0x00007f224c4fdc19:   cmp    %ecx,%edi
          ││   ╰                      │  0x00007f224c4fdc1b:   jl     0x00007f224c4fdbe8
   0.01%  ││                          │  0x00007f224c4fdc1d:   data16 xchg %ax,%ax
   0.07%  ││                          │  0x00007f224c4fdc20:   cmp    %ebx,%edi
          ││    ╭                     │  0x00007f224c4fdc22:   jge    0x00007f224c4fdc33           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││    │                     │                                                            ; - java.util.regex.Matcher::search@55 (line 1732)
          ││    │                     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.16%  ││    │↗                    │  0x00007f224c4fdc24:   movl   $0xffffffff,0x10(%r9,%rdi,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                    │                                                            ; - java.util.regex.Matcher::search@61 (line 1732)
          ││    ││                    │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.19%  ││    ││                    │  0x00007f224c4fdc2d:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                    │                                                            ; - java.util.regex.Matcher::search@62 (line 1731)
          ││    ││                    │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.03%  ││    ││                    │  0x00007f224c4fdc2f:   cmp    %ebx,%edi
          ││    │╰                    │  0x00007f224c4fdc31:   jl     0x00007f224c4fdc24           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │                     │                                                            ; - java.util.regex.Matcher::search@52 (line 1731)
          ││    │                     │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.15%  │↘    ↘                     │  0x00007f224c4fdc33:   mov    0x44(%r10),%r8d              ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@72 (line 1733)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.06%  │                           │  0x00007f224c4fdc37:   nopw   0x0(%rax,%rax,1)
   0.13%  │                           │  0x00007f224c4fdc40:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f224c4fe65c
          │                           │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@75 (line 1733)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.05%  │                           │  0x00007f224c4fdc45:   test   %ebp,%ebp
          │                           │  0x00007f224c4fdc47:   ja     0x00007f224c4fe450           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@76 (line 1733)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.18%  │                           │  0x00007f224c4fdc4d:   mov    %r12d,0x18(%r10)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@105 (line 1737)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%  │                           │  0x00007f224c4fdc51:   mov    0x34(%r10),%r8d              ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@109 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.12%  │                           │  0x00007f224c4fdc55:   mov    0x34(%r12,%r8,8),%ebx        ; implicit exception: dispatches to 0x00007f224c4fe670
          │                           │                                                            ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@112 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.07%  │                           │  0x00007f224c4fdc5a:   mov    0x3c(%r10),%r9d              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@118 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.15%  │                           │  0x00007f224c4fdc5e:   xchg   %ax,%ax
   0.03%  │                           │  0x00007f224c4fdc60:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007f224c4fe684
   0.35%  │                           │  0x00007f224c4fdc65:   cmp    $0x338000,%ecx               ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
          │                           │  0x00007f224c4fdc6b:   jne    0x00007f224c4fe324
   0.11%  │                           │  0x00007f224c4fdc71:   mov    0x10(%r10),%ecx
   0.12%  │                           │  0x00007f224c4fdc75:   shl    $0x3,%rbx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.03%  │                           │  0x00007f224c4fdc79:   sub    0x10(%rbx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Pattern$Start::match@9 (line 3781)
          │                           │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.24%  │                           │  0x00007f224c4fdc7c:   nopl   0x0(%rax)
   0.03%  │                           │  0x00007f224c4fdc80:   cmp    %ecx,%r11d
          │                           │  0x00007f224c4fdc83:   jg     0x00007f224c4fe46c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3781)
          │                           │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.21%  │                           │  0x00007f224c4fdc89:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007f224c4fe348
   0.03%  │                           │  0x00007f224c4fdc8e:   cmp    $0xe8d8,%r8d                 ;   {metadata(&apos;java/lang/String&apos;)}
          │                           │  0x00007f224c4fdc95:   jne    0x00007f224c4fe348
   0.10%  │                           │  0x00007f224c4fdc9b:   nopl   0x0(%rax,%rax,1)
   0.01%  │                           │  0x00007f224c4fdca0:   cmp    $0x7ffffffe,%ecx
          │                           │  0x00007f224c4fdca6:   jg     0x00007f224c4fe2f8
   0.19%  │                           │  0x00007f224c4fdcac:   mov    %ecx,%esi
   0.03%  │                           │  0x00007f224c4fdcae:   inc    %esi
   0.10%  │                           │  0x00007f224c4fdcb0:   lea    (%r12,%r9,8),%rbp            ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Matcher::search@118 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                           │  0x00007f224c4fdcb4:   mov    %rbp,%rdx                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                           │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │                           │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                           │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                           │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.23%  │                           │  0x00007f224c4fdcb7:   mov    $0x1,%eax
   0.02%  │       ╭                   │  0x00007f224c4fdcbc:   jmp    0x00007f224c4fdd09
          │       │    ↗              │  0x00007f224c4fdcbe:   xor    %eax,%eax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │       │    │              │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │       │    │              │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       │    │              │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.35%  │       │    │↗        ↗   ↗│  0x00007f224c4fdcc0:   mov    0x28(%rsp),%r10
   0.44%  │       │    ││        │   ││  0x00007f224c4fdcc5:   mov    0x20(%r10),%r8d              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
          │       │    ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
          │       │    ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       │    ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.49%  │       │    ││        │   ││  0x00007f224c4fdcc9:   test   %eax,%eax
          │       │╭   ││        │   ││  0x00007f224c4fdccb:   jne    0x00007f224c4fdec5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │       ││   ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
          │       ││   ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       ││   ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.25%  │       ││   ││        │   ││  0x00007f224c4fdcd1:   mov    0x30(%rsp),%r11d
   0.70%  │       ││   ││        │   ││  0x00007f224c4fdcd6:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││   ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
          │       ││   ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       ││   ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │       ││   ││        │   ││  0x00007f224c4fdcd9:   nopl   0x0(%rax)
   0.09%  │       ││   ││        │   ││  0x00007f224c4fdce0:   cmp    (%rsp),%r11d
          │       ││╭  ││        │   ││  0x00007f224c4fdce4:   jge    0x00007f224c4fe10d           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │       │││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
          │       │││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       │││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.23%  │       │││  ││        │   ││  0x00007f224c4fdcea:   mov    0x50(%rsp),%r9d
   0.79%  │       │││  ││        │   ││  0x00007f224c4fdcef:   mov    0x54(%rsp),%ecx
          │       │││  ││        │   ││  0x00007f224c4fdcf3:   mov    0x8(%rsp),%rbx
   0.09%  │       │││  ││        │   ││  0x00007f224c4fdcf8:   mov    (%rsp),%esi
   1.35%  │       │││  ││        │   ││  0x00007f224c4fdcfb:   mov    0x10(%rsp),%rbp
   0.71%  │       │││  ││        │   ││  0x00007f224c4fdd00:   mov    0x48(%rsp),%rdx
   0.00%  │       │││  ││        │   ││  0x00007f224c4fdd05:   mov    0x4(%rsp),%eax               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │       │││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@37 (line 3787)
          │       │││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │       │││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.16%  │       ↘││  ││        │   ││  0x00007f224c4fdd09:   mov    0xc(%rbx),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@38 (line 3787)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.33%  │        ││  ││        │   ││  0x00007f224c4fdd0d:   mov    0x8(%r12,%r8,8),%edi         ; implicit exception: dispatches to 0x00007f224c4fe628
          │        ││  ││        │   ││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.52%  │        ││  ││        │   ││  0x00007f224c4fdd12:   mov    %eax,0x4(%rsp)
   0.04%  │        ││  ││        │   ││  0x00007f224c4fdd16:   mov    %rdx,0x48(%rsp)
   0.12%  │        ││  ││        │   ││  0x00007f224c4fdd1b:   mov    %rbp,0x10(%rsp)
   1.25%  │        ││  ││        │   ││  0x00007f224c4fdd20:   mov    %esi,(%rsp)
   1.03%  │        ││  ││        │   ││  0x00007f224c4fdd23:   mov    %rbx,0x8(%rsp)
   0.05%  │        ││  ││        │   ││  0x00007f224c4fdd28:   mov    %ecx,0x54(%rsp)
   0.10%  │        ││  ││        │   ││  0x00007f224c4fdd2c:   mov    %r9d,0x50(%rsp)
   1.13%  │        ││  ││        │   ││  0x00007f224c4fdd31:   mov    %r11d,0x30(%rsp)
   1.05%  │        ││  ││        │   ││  0x00007f224c4fdd36:   mov    %r10,0x28(%rsp)
   0.04%  │        ││  ││        │   ││  0x00007f224c4fdd3b:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││        │   ││                                                            ; - java.lang.String::charAt@8 (line 1555)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.12%  │        ││  ││        │   ││  0x00007f224c4fdd3f:   mov    0x28(%rsp),%r10
   1.48%  │        ││  ││        │   ││  0x00007f224c4fdd44:   mov    0x10(%r10),%r9d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.62%  │        ││  ││        │   ││  0x00007f224c4fdd48:   movsbl 0x10(%rdx),%ecx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││        │   ││                                                            ; - java.lang.String::isLatin1@7 (line 4817)
          │        ││  ││        │   ││                                                            ; - java.lang.String::charAt@1 (line 1554)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.03%  │        ││  ││        │   ││  0x00007f224c4fdd4c:   lea    (%r12,%r8,8),%rbx
   0.11%  │        ││  ││        │   ││  0x00007f224c4fdd50:   movslq %r9d,%r10
   1.45%  │        ││  ││        │   ││  0x00007f224c4fdd53:   cmp    $0x33ea88,%edi               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
          │        ││╭ ││        │   ││  0x00007f224c4fdd59:   jne    0x00007f224c4fdf4d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ ││        │   ││  0x00007f224c4fdd5f:   mov    %rbx,0x20(%rsp)
          │        │││ ││        │   ││  0x00007f224c4fdd64:   mov    0x30(%rsp),%r8d
          │        │││ ││        │   ││  0x00007f224c4fdd69:   cmp    %r9d,%r8d
          │        │││ ││        │   ││  0x00007f224c4fdd6c:   jge    0x00007f224c4fe264           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ ││        │   ││  0x00007f224c4fdd72:   test   %ecx,%ecx
          │        │││ ││        │   ││  0x00007f224c4fdd74:   jne    0x00007f224c4fe178
          │        │││ ││        │   ││  0x00007f224c4fdd7a:   nopw   0x0(%rax,%rax,1)
          │        │││ ││        │   ││  0x00007f224c4fdd80:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f224c4fe178
          │        │││ ││        │   ││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │        │││ ││        │   ││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
          │        │││ ││        │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ ││        │   ││  0x00007f224c4fdd85:   cmp    %ecx,%r8d
          │        │││ ││        │   ││  0x00007f224c4fdd88:   jae    0x00007f224c4fe178
          │        │││ ││        │   ││  0x00007f224c4fdd8e:   movslq %ecx,%r8
          │        │││ ││        │   ││  0x00007f224c4fdd91:   dec    %r10
          │        │││ ││        │   ││  0x00007f224c4fdd94:   cmp    %r8,%r10
          │        │││ ││        │   ││  0x00007f224c4fdd97:   jae    0x00007f224c4fe178
          │        │││ ││        │   ││  0x00007f224c4fdd9d:   mov    0x14(%rbx),%r8d              ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@16 (line 4502)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ ││        │   ││  0x00007f224c4fdda1:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f224c4fe178
          │        │││ ││        │   ││  0x00007f224c4fdda6:   cmp    $0x3a9300,%r10d              ;   {metadata(&apos;java/util/regex/CharPredicates$$Lambda+0x800000027&apos;)}
          │        │││ ││        │   ││  0x00007f224c4fddad:   jne    0x00007f224c4fe178
          │        │││ ││        │   ││  0x00007f224c4fddb3:   lea    (%r12,%r11,8),%rdi
          │        │││ ││        │   ││  0x00007f224c4fddb7:   mov    0x30(%rsp),%ebx
          │        │││ ││        │   ││  0x00007f224c4fddbb:   neg    %ebx
          │        │││ ││        │   ││  0x00007f224c4fddbd:   mov    0x30(%rsp),%r8d
          │        │││ ││        │   ││  0x00007f224c4fddc2:   mov    %r8d,%esi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@15 (line 4502)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ ││        │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ ││↗       │   ││  0x00007f224c4fddc5:   mov    %esi,%r10d                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
          │        │││ │││       │   ││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
          │        │││ │││       │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fddc8:   mov    %r10d,0x3c(%rsp)
          │        │││ │││       │   ││  0x00007f224c4fddcd:   movsbl 0x10(%rdi,%r10,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
          │        │││ │││       │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fddd3:   movzbl %cl,%r11d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │        │││ │││       │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fddd7:   nopw   0x0(%rax,%rax,1)
          │        │││ │││       │   ││  0x00007f224c4fdde0:   cmp    $0x80,%r11d
          │        │││ │││       │   ││  0x00007f224c4fdde7:   jge    0x00007f224c4fe210           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@4 (line 427)
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fdded:   and    $0x80,%ecx                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::getType@3 (line 199)
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fddf3:   test   %ecx,%ecx
          │        │││ │││       │   ││  0x00007f224c4fddf5:   jne    0x00007f224c4fe1bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::getType@4 (line 199)
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │        │││ │││       │   ││                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
          │        │││ │││       │   ││                                                            ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │││       │   ││  0x00007f224c4fddfb:   nopl   0x0(%rax,%rax,1)
          │        │││ │││       │   ││  0x00007f224c4fde00:   cmp    $0x80,%r11d
          │        │││ │││       │   ││  0x00007f224c4fde07:   jae    0x00007f224c4fe125
          │        │││ │││       │   ││  0x00007f224c4fde0d:   movabs $0x7ff052dd8,%r10            ;   {oop([I{0x00000007ff052dd8})}
          │        │││ │││       │   ││  0x00007f224c4fde17:   mov    $0x800,%ecx
          │        │││ │││       │   ││  0x00007f224c4fde1c:   nopl   0x0(%rax)
          │        │││ │││       │   ││  0x00007f224c4fde20:   test   %ecx,0x10(%r10,%r11,4)
          │        │││╭│││       │   ││  0x00007f224c4fde25:   jne    0x00007f224c4fdf0f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││││││       │   ││  0x00007f224c4fde2b:   mov    %esi,%r10d
          │        │││││││       │   ││  0x00007f224c4fde2e:   add    %ebx,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@15 (line 4502)
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││││││       │   ││  0x00007f224c4fde31:   mov    %r10d,0x38(%rsp)
          │        │││││││       │   ││  0x00007f224c4fde36:   mov    0x3c(%rsp),%r10d
          │        │││││││       │   ││  0x00007f224c4fde3b:   nopl   0x0(%rax,%rax,1)
          │        │││││││       │   ││  0x00007f224c4fde40:   cmp    %r9d,%r10d
          │        │││││││       │   ││  0x00007f224c4fde43:   jge    0x00007f224c4fe2a8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@46 (line 4505)
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││││││       │   ││  0x00007f224c4fde49:   mov    0x20(%rsp),%r10
          │        │││││││       │   ││  0x00007f224c4fde4e:   mov    0x10(%r10),%r10d             ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@57 (line 4508)
          │        │││││││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││││││       │   ││  0x00007f224c4fde52:   mov    0x38(%rsp),%r8d
          │        │││││││       │   ││  0x00007f224c4fde57:   cmp    %r10d,%r8d
          │        │││││││       │   ││  0x00007f224c4fde5a:   nopw   0x0(%rax,%rax,1)
          │        ││││╰││       │   ││  0x00007f224c4fde60:   jl     0x00007f224c4fdcbe           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@60 (line 4508)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││  0x00007f224c4fde66:   mov    0x20(%rsp),%r10
          │        ││││ ││       │   ││  0x00007f224c4fde6b:   mov    0xc(%r10),%ebp               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@64 (line 4509)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││  0x00007f224c4fde6f:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f224c4fe6bc
          │        ││││ ││       │   ││  0x00007f224c4fde74:   nopl   0x0(%rax,%rax,1)
          │        ││││ ││       │   ││  0x00007f224c4fde7c:   data16 data16 xchg %ax,%ax
          │        ││││ ││       │   ││  0x00007f224c4fde80:   cmp    $0x33f2c8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
          │        ││││ ││       │   ││  0x00007f224c4fde87:   jne    0x00007f224c4fe38c           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@63 (line 4509)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││  0x00007f224c4fde8d:   lea    (%r12,%rbp,8),%rsi
          │        ││││ ││       │   ││  0x00007f224c4fde91:   mov    0x28(%rsp),%rdx
          │        ││││ ││       │   ││  0x00007f224c4fde96:   mov    0x3c(%rsp),%ecx
          │        ││││ ││       │   ││  0x00007f224c4fde9a:   mov    0x48(%rsp),%r8
          │        ││││ ││       │   ││  0x00007f224c4fde9f:   mov    %rdx,%rbp
          │        ││││ ││       │   ││  0x00007f224c4fdea2:   nop
          │        ││││ ││       │   ││  0x00007f224c4fdea3:   call   0x00007f224bf85380           ; ImmutableOopMap {rbp=Oop [8]=Oop [16]=Oop [32]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
          │        ││││ ││       │   ││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││                                                            ;   {optimized virtual_call}
          │        ││││ ││       │   ││  0x00007f224c4fdea8:   nopl   0x1000618(%rax,%rax,1)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││                                                            ;   {other}
          │        ││││ ││       │   ││  0x00007f224c4fdeb0:   test   %eax,%eax
          │        ││││ ││       │   ││  0x00007f224c4fdeb2:   je     0x00007f224c4fe4c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@73 (line 4509)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││ ││       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││ ││       │   ││  0x00007f224c4fdeb8:   mov    $0x1,%eax
          │        ││││ ││       │   ││  0x00007f224c4fdebd:   data16 xchg %ax,%ax
          │        ││││ ╰│       │   ││  0x00007f224c4fdec0:   jmp    0x00007f224c4fdcc0
   0.20%  │        ↘│││  │       │   ││  0x00007f224c4fdec5:   mov    0x30(%rsp),%r9d
   0.00%  │         │││  │       │   ││  0x00007f224c4fdeca:   mov    %r9d,0x1c(%r10)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@52 (line 3788)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.09%  │         │││  │       │   ││  0x00007f224c4fdece:   mov    0x38(%r10),%ebp              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@56 (line 3789)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.12%  │         │││  │       │   ││  0x00007f224c4fded2:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f224c4fe6a4
   1.11%  │         │││  │       │   ││  0x00007f224c4fded7:   cmp    $0x1,%r11d
   0.24%  │         │││  │       │   ││  0x00007f224c4fdedb:   nopl   0x0(%rax,%rax,1)
   0.01%  │         │││  │       │   ││  0x00007f224c4fdee0:   jbe    0x00007f224c4fe374
   0.27%  │         │││  │       │   ││  0x00007f224c4fdee6:   mov    %r9d,0x10(%r12,%rbp,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.16%  │         │││  │       │   ││  0x00007f224c4fdeeb:   mov    %r8d,0x14(%r12,%rbp,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@74 (line 3790)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.25%  │         │││  │       │   ││  0x00007f224c4fdef0:   mov    0x4(%rsp),%eax               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@134 (line 1741)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.00%  │         │││  │       │   ││  0x00007f224c4fdef4:   mov    %r8d,0x24(%r10)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::search@139 (line 1741)
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.21%  │         │││  │       │   ││  0x00007f224c4fdef8:   incl   0x2c(%r10)                   ;*synchronization entry
          │         │││  │       │   ││                                                            ; - java.util.regex.Matcher::find@-1 (line 744)
   0.18%  │         │││  │       │   ││  0x00007f224c4fdefc:   add    $0x70,%rsp
   0.21%  │         │││  │       │   ││  0x00007f224c4fdf00:   pop    %rbp
   0.09%  │         │││  │       │   ││  0x00007f224c4fdf01:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │         │││  │       │   ││  0x00007f224c4fdf08:   ja     0x00007f224c4fe714
   0.10%  │         │││  │       │   ││  0x00007f224c4fdf0e:   ret    
          │         ││↘  │       │   ││  0x00007f224c4fdf0f:   mov    %r9d,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf12:   sub    %r8d,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf15:   xor    %r11d,%r11d
          │         ││   │       │   ││  0x00007f224c4fdf18:   cmp    %r8d,%r9d
          │         ││   │       │   ││  0x00007f224c4fdf1b:   cmovl  %r11d,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf1f:   cmp    $0x3e8,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf26:   mov    $0x3e8,%r11d
          │         ││   │       │   ││  0x00007f224c4fdf2c:   cmova  %r11d,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf30:   add    %r8d,%r10d
          │         ││   │       │   ││  0x00007f224c4fdf33:   mov    %esi,%eax
          │         ││   │       │   ││  0x00007f224c4fdf35:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         ││   │       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@34 (line 4503)
          │         ││   │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         ││   │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         ││   │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         ││   │       │   ││  0x00007f224c4fdf37:   cmp    %r10d,%eax
          │         ││   │       │   ││  0x00007f224c4fdf3a:   nopw   0x0(%rax,%rax,1)
          │         ││   │       │   ││  0x00007f224c4fdf40:   jge    0x00007f224c4fe48c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         ││   │       │   ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
          │         ││   │       │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         ││   │       │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         ││   │       │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         ││   │       │   ││  0x00007f224c4fdf46:   mov    %eax,%esi
          │         ││   ╰       │   ││  0x00007f224c4fdf48:   jmp    0x00007f224c4fddc5
   0.86%  │         │↘           │   ││  0x00007f224c4fdf4d:   cmp    $0x3389f0,%edi               ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
          │         │            │   ││  0x00007f224c4fdf53:   jne    0x00007f224c4fe50c
   0.03%  │         │            │   ││  0x00007f224c4fdf59:   mov    %rbx,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │         │            │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.12%  │         │            │   ││  0x00007f224c4fdf5c:   mov    %r8,%rax
   1.45%  │         │            │   ││  0x00007f224c4fdf5f:   mov    0x10(%r8),%ebx               ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │         │            │   ││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │         │            │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.98%  │         │            │   ││  0x00007f224c4fdf63:   mov    0xc(%r12,%rbx,8),%r8d        ; implicit exception: dispatches to 0x00007f224c4fe6e6
          │         │            │   ││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │         │            │   ││                                                            ; - java.util.regex.Pattern$Slice::match@8 (line 4259)
          │         │            │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │            │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.25%  │         │            │   ││  0x00007f224c4fdf68:   mov    %r8d,%r13d
   0.05%  │         │            │   ││  0x00007f224c4fdf6b:   test   %r8d,%r8d
          │         │     ╭      │   ││  0x00007f224c4fdf6e:   jbe    0x00007f224c4fe0b7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.50%  │         │     │      │   ││  0x00007f224c4fdf74:   dec    %r8d
   1.12%  │         │     │      │   ││  0x00007f224c4fdf77:   cmp    %r13d,%r8d
   0.56%  │         │     │      │   ││  0x00007f224c4fdf7a:   nopw   0x0(%rax,%rax,1)
   0.05%  │         │     │      │   ││  0x00007f224c4fdf80:   jae    0x00007f224c4fe548
   1.52%  │         │     │      │   ││  0x00007f224c4fdf86:   test   %ecx,%ecx
          │         │     │      │   ││  0x00007f224c4fdf88:   jne    0x00007f224c4fe548
   0.81%  │         │     │      │   ││  0x00007f224c4fdf8e:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f224c4fe548
          │         │     │      │   ││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
          │         │     │      │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │         │     │      │   ││  0x00007f224c4fdf93:   mov    0x30(%rsp),%ecx
   0.08%  │         │     │      │   ││  0x00007f224c4fdf97:   cmp    %r8d,%ecx
   1.54%  │         │     │      │   ││  0x00007f224c4fdf9a:   nopw   0x0(%rax,%rax,1)
   0.74%  │         │     │      │   ││  0x00007f224c4fdfa0:   jae    0x00007f224c4fe548
   0.02%  │         │     │      │   ││  0x00007f224c4fdfa6:   movslq %r8d,%r8
   0.10%  │         │     │      │   ││  0x00007f224c4fdfa9:   movslq %ecx,%rdx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
          │         │     │      │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.60%  │         │     │      │   ││  0x00007f224c4fdfac:   movslq %r13d,%rbp
   0.84%  │         │     │      │   ││  0x00007f224c4fdfaf:   lea    (%rdx,%rbp,1),%rcx
   0.03%  │         │     │      │   ││  0x00007f224c4fdfb3:   dec    %rcx
   0.10%  │         │     │      │   ││  0x00007f224c4fdfb6:   cmp    %r8,%rcx
          │         │     │      │   ││  0x00007f224c4fdfb9:   jae    0x00007f224c4fe548
   1.53%  │         │     │      │   ││  0x00007f224c4fdfbf:   mov    0x30(%rsp),%ecx
   0.77%  │         │     │      │   ││  0x00007f224c4fdfc3:   cmp    %r9d,%ecx
          │         │     │      │   ││  0x00007f224c4fdfc6:   jge    0x00007f224c4fe58c           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │         │     │      │   ││  0x00007f224c4fdfcc:   mov    0x10(%r12,%rbx,8),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.09%  │         │     │      │   ││  0x00007f224c4fdfd1:   lea    (%r12,%r11,8),%rdi
   1.56%  │         │     │      │   ││  0x00007f224c4fdfd5:   movzbl 0x10(%rdi,%rdx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │         │     │      │   ││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │         │     │      │   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │         │     │      │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │      │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.82%  │         │     │      │   ││  0x00007f224c4fdfda:   nopw   0x0(%rax,%rax,1)
   0.02%  │         │     │      │   ││  0x00007f224c4fdfe0:   cmp    %ecx,%r8d
          │         │     │╭     │   ││  0x00007f224c4fdfe3:   jne    0x00007f224c4fe06e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │         │     ││     │   ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │         │     ││     │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     ││     │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     ││     │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.49%  │         │     ││     │   ││  0x00007f224c4fdfe9:   sub    %rdx,%r10
   2.46%  │         │     ││     │   ││  0x00007f224c4fdfec:   lea    (%r12,%rbx,8),%rsi           ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │         │     ││     │   ││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │         │     ││     │   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     ││     │   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     ││     │   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │         │     ││     │   ││  0x00007f224c4fdff0:   mov    $0xffffffff80000000,%r11
   0.01%  │         │     ││     │   ││  0x00007f224c4fdff7:   cmp    $0xffffffff80000000,%r10
   0.01%  │         │     ││     │   ││  0x00007f224c4fdffe:   cmovl  %r11,%r10
   0.32%  │         │     ││     │   ││  0x00007f224c4fe002:   cmp    %rbp,%r10
   0.87%  │         │     ││     │   ││  0x00007f224c4fe005:   cmovl  %r10,%rbp
   0.01%  │         │     ││     │   ││  0x00007f224c4fe009:   mov    %ebp,%r10d
          │         │     ││     │   ││  0x00007f224c4fe00c:   cmp    $0x1,%r10d
          │         │     ││╭    │   ││  0x00007f224c4fe010:   jle    0x00007f224c4fe075
   0.07%  │         │     │││    │   ││  0x00007f224c4fe016:   mov    $0x1,%r8d
   0.26%  │         │     │││   ↗│   ││  0x00007f224c4fe01c:   mov    %r8d,%r11d
          │         │     │││   ││   ││  0x00007f224c4fe01f:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │         │     │││   ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
          │         │     │││   ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │││   ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │││   ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.00%  │         │     │││ ↗ ││   ││  0x00007f224c4fe020:   movslq %r11d,%rcx
   0.05%  │         │     │││ │ ││   ││  0x00007f224c4fe023:   mov    0x10(%rsi,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.65%  │         │     │││ │ ││   ││  0x00007f224c4fe027:   add    %rdx,%rcx
          │         │     │││ │ ││   ││  0x00007f224c4fe02a:   movzbl 0x10(%rdi,%rcx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │         │     │││ │ ││   ││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │         │     │││ │ ││   ││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │││ │ ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.27%  │         │     │││ │ ││   ││  0x00007f224c4fe02f:   cmp    %ecx,%ebx
          │         │     │││╭│ ││   ││  0x00007f224c4fe031:   jne    0x00007f224c4fe06e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.36%  │         │     │││││ ││   ││  0x00007f224c4fe033:   mov    %r10d,%ebp
   0.03%  │         │     │││││ ││   ││  0x00007f224c4fe036:   sub    %r8d,%ebp
   0.00%  │         │     │││││ ││   ││  0x00007f224c4fe039:   xor    %ecx,%ecx
          │         │     │││││ ││   ││  0x00007f224c4fe03b:   cmp    %r8d,%r10d
   0.33%  │         │     │││││ ││   ││  0x00007f224c4fe03e:   cmovl  %ecx,%ebp
   0.01%  │         │     │││││ ││   ││  0x00007f224c4fe041:   cmp    $0x3e8,%ebp
          │         │     │││││ ││   ││  0x00007f224c4fe047:   mov    $0x3e8,%ebx
          │         │     │││││ ││   ││  0x00007f224c4fe04c:   cmova  %ebx,%ebp                    ;   {no_reloc}
   0.36%  │         │     │││││ ││   ││  0x00007f224c4fe04f:   add    %r8d,%ebp
   0.00%  │         │     │││││ ││   ││  0x00007f224c4fe052:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │││││ ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │││││ ││   ││  0x00007f224c4fe055:   cmp    %ebp,%r11d
          │         │     ││││╰ ││   ││  0x00007f224c4fe058:   jl     0x00007f224c4fe020           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::search@65 (line 1731)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.35%  │         │     ││││  ││   ││  0x00007f224c4fe05a:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdi=Oop rsi=Oop rax=Oop [8]=Oop [16]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
          │         │     ││││  ││   ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │         │     ││││  ││   ││                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@62 (line 4260)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │         │     ││││  ││   ││  0x00007f224c4fe061:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4260)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     ││││  ││   ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     ││││  ││   ││                                                            ;   {poll}
   0.66%  │         │     ││││  ││   ││  0x00007f224c4fe064:   cmp    %r10d,%r11d
          │         │     ││││ ╭││   ││  0x00007f224c4fe067:   jge    0x00007f224c4fe07b
          │         │     ││││ │││   ││  0x00007f224c4fe069:   mov    %r11d,%r8d
          │         │     ││││ │╰│   ││  0x00007f224c4fe06c:   jmp    0x00007f224c4fe01c
   0.44%  │         │     │↘│↘ │ │ ↗ ││  0x00007f224c4fe06e:   xor    %eax,%eax
   1.31%  │         │     │ │  │ ╰ │ ││  0x00007f224c4fe070:   jmp    0x00007f224c4fdcc0
          │         │     │ ↘  │   │ ││  0x00007f224c4fe075:   mov    $0x1,%r11d
   0.00%  │         │     │    ↘   │ ││  0x00007f224c4fe07b:   nopl   0x0(%rax,%rax,1)
   0.05%  │         │     │        │ ││  0x00007f224c4fe080:   cmp    %r13d,%r11d
          │         │     │       ╭│ ││  0x00007f224c4fe083:   jge    0x00007f224c4fe0b7
          │         │     │       ││ ││  0x00007f224c4fe085:   data16 xchg %ax,%ax                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
          │         │     │       ││ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       ││ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       ││ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       ││↗││  0x00007f224c4fe088:   mov    %r11d,%ebp
          │         │     │       │││││  0x00007f224c4fe08b:   add    0x30(%rsp),%ebp              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │││││  0x00007f224c4fe08f:   cmp    %r9d,%ebp
          │         │     │       │││││  0x00007f224c4fe092:   jge    0x00007f224c4fe58e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │││││  0x00007f224c4fe098:   movslq %r11d,%r10
          │         │     │       │││││  0x00007f224c4fe09b:   mov    0x10(%rsi,%r10,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │││││  0x00007f224c4fe0a0:   lea    (%rdx,%r10,1),%rcx
          │         │     │       │││││  0x00007f224c4fe0a4:   movzbl 0x10(%rdi,%rcx,1),%r10d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │││││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │         │     │       │││││                                                            ; - java.lang.String::charAt@12 (line 1555)
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │         │     │       │││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │││││  0x00007f224c4fe0aa:   cmp    %r10d,%r8d
          │         │     │       │╰│││  0x00007f224c4fe0ad:   jne    0x00007f224c4fe06e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │ │││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │         │     │       │ │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │ │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │ │││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │ │││  0x00007f224c4fe0af:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │ │││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
          │         │     │       │ │││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │ │││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │ │││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │     │       │ │││  0x00007f224c4fe0b2:   cmp    %r13d,%r11d
          │         │     │       │ ╰││  0x00007f224c4fe0b5:   jl     0x00007f224c4fe088           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │         │     │       │  ││                                                            ; - java.util.regex.Pattern$Slice::match@65 (line 4268)
          │         │     │       │  ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │     │       │  ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │     │       │  ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.31%  │         │     ↘       ↘  ││  0x00007f224c4fe0b7:   mov    0x30(%rsp),%r11d
          │         │                ││  0x00007f224c4fe0bc:   lea    (%r11,%r13,1),%r9d
          │         │                ││  0x00007f224c4fe0c0:   mov    0xc(%rax),%ebp               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │         │                ││                                                            ; - java.util.regex.Pattern$Slice::match@66 (line 4268)
          │         │                ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │                ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │                ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.05%  │         │                ││  0x00007f224c4fe0c3:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f224c4fe6f8
   0.34%  │         │                ││  0x00007f224c4fe0c8:   cmp    $0x33f2c8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
          │         │                ││  0x00007f224c4fe0cf:   jne    0x00007f224c4fe5b0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │         │                ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
          │         │                ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │                ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │                ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.28%  │         │                ││  0x00007f224c4fe0d5:   lea    (%r12,%rbp,8),%rsi
          │         │                ││  0x00007f224c4fe0d9:   mov    0x28(%rsp),%rdx
   0.07%  │         │                ││  0x00007f224c4fe0de:   mov    %r9d,%ecx
   0.04%  │         │                ││  0x00007f224c4fe0e1:   mov    0x10(%rsp),%r8
   0.27%  │         │                ││  0x00007f224c4fe0e6:   mov    %rdx,%r10
          │         │                ││  0x00007f224c4fe0e9:   mov    %r10,0x18(%rsp)
   0.05%  │         │                ││  0x00007f224c4fe0ee:   nop
   0.05%  │         │                ││  0x00007f224c4fe0ef:   call   0x00007f224c4fbf40           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
          │         │                ││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │         │                ││                                                            ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
          │         │                ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │                ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │                ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │                ││                                                            ;   {optimized virtual_call}
   1.75%  │         │                ││  0x00007f224c4fe0f4:   nopl   0x3000864(%rax,%rax,1)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │         │                ││                                                            ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
          │         │                ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │         │                ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │         │                ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │         │                ││                                                            ;   {other}
   0.03%  │         │                ││  0x00007f224c4fe0fc:   nopl   0x0(%rax)
   0.01%  │         │                ╰│  0x00007f224c4fe100:   jmp    0x00007f224c4fdcc0
          ↘         │                 │  0x00007f224c4fe105:   mov    %r11d,%r9d
                    │                 ╰  0x00007f224c4fe108:   jmp    0x00007f224c4fdb69
   0.00%            ↘                    0x00007f224c4fe10d:   movl   $0xffffffff,0x1c(%r10)       ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Matcher::search@131 (line 1740)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.00%                                 0x00007f224c4fe115:   movb   $0x1,0x30(%r10)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.Pattern$Start::match@85 (line 3794)
                                                                                                   ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                                   ; - java.util.regex.Matcher::find@65 (line 758)
   0.00%                                 0x00007f224c4fe11a:   xor    %eax,%eax
                                         0x00007f224c4fe11c:   nopl   0x0(%rax)
                                         0x00007f224c4fe120:   jmp    0x00007f224c4fdef4           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - java.util.regex.ASCII::getType@11 (line 199)
                                                                                                   ; - java.util.regex.ASCII::isType@1 (line 203)
                                                                                                   ; - java.util.regex.ASCII::isSpace@4 (line 235)
                                                                                                   ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
                                                                                                   ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
....................................................................................................
  68.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 702 

 <region is too big to display, has 1995 lines, but threshold is 1000>
....................................................................................................
  16.03%  <total for region 2>

....[Hottest Regions]...............................................................................
  68.84%           c2, level 4  java.util.regex.Matcher::find, version 2, compile id 687 
  16.03%           c2, level 4  java.util.regex.Pattern::split, version 4, compile id 702 
   5.29%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.19%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 688 
   1.85%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.80%                kernel  [unknown] 
   0.46%           c2, level 4  java.util.ArrayList::grow, version 1, compile id 710 
   0.29%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   2.06%  <...other 333 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  68.84%           c2, level 4  java.util.regex.Matcher::find, version 2, compile id 687 
  16.03%           c2, level 4  java.util.regex.Pattern::split, version 4, compile id 702 
   5.29%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.37%                kernel  [unknown] 
   3.19%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 688 
   1.85%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.46%           c2, level 4  java.util.ArrayList::grow, version 1, compile id 710 
   0.15%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libc.so.6  __memset_avx2_unaligned_erms 
   0.03%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.03%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.03%             libjvm.so  fileStream::write 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libjvm.so  HeapRegionManager::par_iterate 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.02%             libjvm.so  G1ParScanThreadState::steal_and_trim_queue 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%                        <unknown> 
   0.51%  <...other 151 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.55%           c2, level 4
   7.14%          runtime stub
   3.37%                kernel
   0.71%             libjvm.so
   0.13%             libc.so.6
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                      
   0.01%                [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:04:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 217.486 us/op
# Warmup Iteration   2: 170.961 us/op
# Warmup Iteration   3: 170.070 us/op
# Warmup Iteration   4: 169.287 us/op
# Warmup Iteration   5: 170.834 us/op
Iteration   1: 169.449 us/op
Iteration   2: 170.809 us/op
Iteration   3: 170.669 us/op
Iteration   4: 171.490 us/op
Iteration   5: 169.654 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  170.414 ±(99.9%) 3.271 us/op [Average]
  (min, avg, max) = (169.449, 170.414, 171.490), stdev = 0.849
  CI (99.9%): [167.144, 173.685] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 139920 total address lines.
Perf output processed (skipped 66.671 seconds):
 Column 1: cycles (50804 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.lang.String::split, version 3, compile id 657 

 <region is too big to display, has 1509 lines, but threshold is 1000>
....................................................................................................
  62.38%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                                                  --------------------------------------------------------------------------------
                                                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  StubRoutines::jbyte_disjoint_arraycopy [0x00007f6cd3f69fc0, 0x00007f6cd3f6a077] (183 bytes)
                                                  --------------------------------------------------------------------------------
                                                    0x00007f6cd3f69fc0:   push   %rbp
                                                    0x00007f6cd3f69fc1:   mov    %rsp,%rbp
   0.09%           ↗↗                               0x00007f6cd3f69fc4:   mov    %rdx,%rcx
   0.02%           ││                               0x00007f6cd3f69fc7:   shr    $0x3,%rdx
   0.80%           ││                               0x00007f6cd3f69fcb:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.05%           ││                               0x00007f6cd3f69fd0:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.11%           ││                               0x00007f6cd3f69fd5:   neg    %rdx
   0.04%  ╭        ││                               0x00007f6cd3f69fd8:   jmp    0x00007f6cd3f6a048
   0.97%  │↗     ↗ ││                               0x00007f6cd3f69fdd:   mov    0x8(%rdi,%rdx,8),%rax
   1.68%  ││     │ ││                               0x00007f6cd3f69fe2:   mov    %rax,0x8(%rsi,%rdx,8)
   0.36%  ││     │ ││                               0x00007f6cd3f69fe7:   inc    %rdx
          │╰     │ ││                               0x00007f6cd3f69fea:   jne    0x00007f6cd3f69fdd
   1.22%  │      │↗││                               0x00007f6cd3f69fec:   test   $0x4,%cl
          │ ╭    ││││                               0x00007f6cd3f69fef:   je     0x00007f6cd3f69fff
   0.74%  │ │    ││││                               0x00007f6cd3f69ff1:   mov    0x8(%rdi),%eax
   1.40%  │ │    ││││                               0x00007f6cd3f69ff4:   mov    %eax,0x8(%rsi)
   0.34%  │ │    ││││                               0x00007f6cd3f69ff7:   add    $0x4,%rdi
   0.44%  │ │    ││││                               0x00007f6cd3f69ffb:   add    $0x4,%rsi
   0.89%  │ ↘    ││││                               0x00007f6cd3f69fff:   test   $0x2,%cl
          │  ╭   ││││                               0x00007f6cd3f6a002:   je     0x00007f6cd3f6a014
   1.13%  │  │   ││││                               0x00007f6cd3f6a004:   mov    0x8(%rdi),%ax
   2.53%  │  │   ││││                               0x00007f6cd3f6a008:   mov    %ax,0x8(%rsi)
   0.72%  │  │   ││││                               0x00007f6cd3f6a00c:   add    $0x2,%rdi
   0.09%  │  │   ││││                               0x00007f6cd3f6a010:   add    $0x2,%rsi
   0.45%  │  ↘   ││││                               0x00007f6cd3f6a014:   test   $0x1,%cl
          │   ╭  ││││                               0x00007f6cd3f6a017:   je     0x00007f6cd3f6a01f
   0.94%  │   │  ││││                               0x00007f6cd3f6a019:   mov    0x8(%rdi),%al
   2.19%  │   │  ││││                               0x00007f6cd3f6a01c:   mov    %al,0x8(%rsi)
   1.55%  │   ↘  ││││                               0x00007f6cd3f6a01f:   xor    %rax,%rax
   0.31%  │      ││││                               0x00007f6cd3f6a022:   vzeroupper 
   1.16%  │      ││││                               0x00007f6cd3f6a025:   leave  
   2.33%  │      ││││                               0x00007f6cd3f6a026:   ret    
          │      ││││                               0x00007f6cd3f6a027:   nopw   0x0(%rax,%rax,1)
          │    ↗ ││││                               0x00007f6cd3f6a030:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ ││││                               0x00007f6cd3f6a036:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ ││││                               0x00007f6cd3f6a03c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
          │    │ ││││                               0x00007f6cd3f6a042:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.86%  ↘    │ ││││                               0x00007f6cd3f6a048:   add    $0x8,%rdx
               ╰ ││││                               0x00007f6cd3f6a04c:   jle    0x00007f6cd3f6a030
   0.05%         ││││                               0x00007f6cd3f6a04e:   sub    $0x4,%rdx
                ╭││││                               0x00007f6cd3f6a052:   jg     0x00007f6cd3f6a068
                │││││                               0x00007f6cd3f6a058:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                │││││                               0x00007f6cd3f6a05e:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                │││││                               0x00007f6cd3f6a064:   add    $0x4,%rdx
   1.00%        ↘││││                               0x00007f6cd3f6a068:   sub    $0x4,%rdx
                 ╰│││                               0x00007f6cd3f6a06c:   jl     0x00007f6cd3f69fdd
   0.07%          ╰││                               0x00007f6cd3f6a072:   jmp    0x00007f6cd3f69fec
                   ││                             --------------------------------------------------------------------------------
                   ││                             - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   ││                             - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   ││                             StubRoutines::jbyte_arraycopy [0x00007f6cd3f6a080, 0x00007f6cd3f6a142] (194 bytes)
                   ││                             --------------------------------------------------------------------------------
   0.17%           ││                               0x00007f6cd3f6a080:   push   %rbp
   0.86%           ││                               0x00007f6cd3f6a081:   mov    %rsp,%rbp
   0.15%           ││                               0x00007f6cd3f6a084:   cmp    %rdi,%rsi
   0.04%           ││                               0x00007f6cd3f6a087:   lea    (%rdi,%rdx,1),%rax
   0.82%           ╰│                               0x00007f6cd3f6a08b:   jbe    0x00007f6cd3f69fc4
   0.04%            │                               0x00007f6cd3f6a091:   cmp    %rax,%rsi
                    ╰                               0x00007f6cd3f6a094:   jae    0x00007f6cd3f69fc4
                                                    0x00007f6cd3f6a09a:   mov    %rdx,%rcx
                                                    0x00007f6cd3f6a09d:   shr    $0x3,%rdx
                                                    0x00007f6cd3f6a0a1:   test   $0x1,%cl
                     ╭                              0x00007f6cd3f6a0a4:   je     0x00007f6cd3f6a0b5
                     │                              0x00007f6cd3f6a0aa:   mov    -0x1(%rdi,%rcx,1),%al
                     │                              0x00007f6cd3f6a0ae:   mov    %al,-0x1(%rsi,%rcx,1)
                     │                              0x00007f6cd3f6a0b2:   dec    %rcx
                     ↘                              0x00007f6cd3f6a0b5:   test   $0x2,%cl
                      ╭                             0x00007f6cd3f6a0b8:   je     0x00007f6cd3f6a0c8
                      │                             0x00007f6cd3f6a0be:   mov    -0x2(%rdi,%rcx,1),%ax
                      │                             0x00007f6cd3f6a0c3:   mov    %ax,-0x2(%rsi,%rcx,1)
                      ↘                             0x00007f6cd3f6a0c8:   test   $0x4,%cl
                       ╭                            0x00007f6cd3f6a0cb:   je     0x00007f6cd3f6a116
                       │                            0x00007f6cd3f6a0d1:   mov    (%rdi,%rdx,8),%eax
                       │                            0x00007f6cd3f6a0d4:   mov    %eax,(%rsi,%rdx,8)
                       │╭                           0x00007f6cd3f6a0d7:   jmp    0x00007f6cd3f6a116
                       ││↗  ↗                       0x00007f6cd3f6a0dc:   mov    -0x8(%rdi,%rdx,8),%rax
                       │││  │                       0x00007f6cd3f6a0e1:   mov    %rax,-0x8(%rsi,%rdx,8)
                       │││  │                       0x00007f6cd3f6a0e6:   dec    %rdx
                       ││╰  │                       0x00007f6cd3f6a0e9:   jne    0x00007f6cd3f6a0dc
                       ││   │                       0x00007f6cd3f6a0eb:   xor    %rax,%rax
                       ││   │                       0x00007f6cd3f6a0ee:   vzeroupper 
                       ││   │                       0x00007f6cd3f6a0f1:   leave  
                       ││   │                       0x00007f6cd3f6a0f2:   ret    
                       ││   │                       0x00007f6cd3f6a0f3:   nopw   0x0(%rax,%rax,1)
                       ││   │                       0x00007f6cd3f6a0fc:   data16 data16 xchg %ax,%ax
                       ││ ↗ │                       0x00007f6cd3f6a100:   vmovdqu 0x20(%rdi,%rdx,8),%ymm0
                       ││ │ │                       0x00007f6cd3f6a106:   vmovdqu %ymm0,0x20(%rsi,%rdx,8)
                       ││ │ │                       0x00007f6cd3f6a10c:   vmovdqu (%rdi,%rdx,8),%ymm0
                       ││ │ │                       0x00007f6cd3f6a111:   vmovdqu %ymm0,(%rsi,%rdx,8)
                       ↘↘ │ │                       0x00007f6cd3f6a116:   sub    $0x8,%rdx
                          ╰ │                       0x00007f6cd3f6a11a:   jge    0x00007f6cd3f6a100
                            │                       0x00007f6cd3f6a11c:   add    $0x4,%rdx
                           ╭│                       0x00007f6cd3f6a120:   jl     0x00007f6cd3f6a134
                           ││                       0x00007f6cd3f6a126:   vmovdqu (%rdi,%rdx,8),%ymm0
                           ││                       0x00007f6cd3f6a12b:   vmovdqu %ymm0,(%rsi,%rdx,8)
                           ││                       0x00007f6cd3f6a130:   sub    $0x4,%rdx
                           ↘│                       0x00007f6cd3f6a134:   add    $0x4,%rdx
                            ╰                       0x00007f6cd3f6a138:   jg     0x00007f6cd3f6a0dc
                                                    0x00007f6cd3f6a13a:   xor    %rax,%rax
                                                    0x00007f6cd3f6a13d:   vzeroupper 
                                                    0x00007f6cd3f6a140:   leave  
                                                    0x00007f6cd3f6a141:   ret    
                                                  --------------------------------------------------------------------------------
                                                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  StubRoutines::jshort_disjoint_arraycopy [0x00007f6cd3f6a160, 0x00007f6cd3f6a204] (164 bytes)
                                                  --------------------------------------------------------------------------------
                                                    0x00007f6cd3f6a160:   push   %rbp
                                                    0x00007f6cd3f6a161:   mov    %rsp,%rbp
                                     ↗↗             0x00007f6cd3f6a164:   mov    %rdx,%rcx
                                     ││             0x00007f6cd3f6a167:   shr    $0x2,%rdx
                                     ││             0x00007f6cd3f6a16b:   lea    -0x8(%rdi,%rdx,8),%rdi
                                     ││             0x00007f6cd3f6a170:   lea    -0x8(%rsi,%rdx,8),%rsi
                                     ││             0x00007f6cd3f6a175:   neg    %rdx
                             ╭       ││             0x00007f6cd3f6a178:   jmp    0x00007f6cd3f6a1d8
                             │↗    ↗ ││             0x00007f6cd3f6a17d:   mov    0x8(%rdi,%rdx,8),%rax
                             ││    │ ││             0x00007f6cd3f6a182:   mov    %rax,0x8(%rsi,%rdx,8)
                             ││    │ ││             0x00007f6cd3f6a187:   inc    %rdx
                             │╰    │ ││             0x00007f6cd3f6a18a:   jne    0x00007f6cd3f6a17d
                             │     │↗││             0x00007f6cd3f6a18c:   test   $0x2,%cl
                             │ ╭   ││││             0x00007f6cd3f6a18f:   je     0x00007f6cd3f6a19f
                             │ │   ││││             0x00007f6cd3f6a191:   mov    0x8(%rdi),%eax
                             │ │   ││││             0x00007f6cd3f6a194:   mov    %eax,0x8(%rsi)
                             │ │   ││││             0x00007f6cd3f6a197:   add    $0x4,%rdi
                             │ │   ││││             0x00007f6cd3f6a19b:   add    $0x4,%rsi
                             │ ↘   ││││             0x00007f6cd3f6a19f:   test   $0x1,%cl
                             │  ╭  ││││             0x00007f6cd3f6a1a2:   je     0x00007f6cd3f6a1ac
                             │  │  ││││             0x00007f6cd3f6a1a4:   mov    0x8(%rdi),%ax
                             │  │  ││││             0x00007f6cd3f6a1a8:   mov    %ax,0x8(%rsi)
                             │  ↘  ││││             0x00007f6cd3f6a1ac:   xor    %rax,%rax
                             │     ││││             0x00007f6cd3f6a1af:   vzeroupper 
                             │     ││││             0x00007f6cd3f6a1b2:   leave  
                             │     ││││             0x00007f6cd3f6a1b3:   ret    
                             │     ││││             0x00007f6cd3f6a1b4:   nopl   0x0(%rax,%rax,1)
                             │     ││││             0x00007f6cd3f6a1bc:   data16 data16 xchg %ax,%ax
                             │   ↗ ││││             0x00007f6cd3f6a1c0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
                             │   │ ││││             0x00007f6cd3f6a1c6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
                             │   │ ││││             0x00007f6cd3f6a1cc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                             │   │ ││││             0x00007f6cd3f6a1d2:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                             ↘   │ ││││             0x00007f6cd3f6a1d8:   add    $0x8,%rdx
                                 ╰ ││││             0x00007f6cd3f6a1dc:   jle    0x00007f6cd3f6a1c0
                                   ││││             0x00007f6cd3f6a1de:   sub    $0x4,%rdx
                                  ╭││││             0x00007f6cd3f6a1e2:   jg     0x00007f6cd3f6a1f8
                                  │││││             0x00007f6cd3f6a1e8:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                                  │││││             0x00007f6cd3f6a1ee:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                                  │││││             0x00007f6cd3f6a1f4:   add    $0x4,%rdx
                                  ↘││││             0x00007f6cd3f6a1f8:   sub    $0x4,%rdx
                                   ╰│││             0x00007f6cd3f6a1fc:   jl     0x00007f6cd3f6a17d
                                    ╰││             0x00007f6cd3f6a202:   jmp    0x00007f6cd3f6a18c
                                     ││           --------------------------------------------------------------------------------
                                     ││           - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                     ││           - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                     ││           StubRoutines::jshort_arraycopy [0x00007f6cd3f6a220, 0x00007f6cd3f6a2c2] (162 bytes)
                                     ││           --------------------------------------------------------------------------------
                                     ││             0x00007f6cd3f6a220:   push   %rbp
                                     ││             0x00007f6cd3f6a221:   mov    %rsp,%rbp
                                     ││             0x00007f6cd3f6a224:   cmp    %rdi,%rsi
                                     ││             0x00007f6cd3f6a227:   lea    (%rdi,%rdx,2),%rax
                                     ╰│             0x00007f6cd3f6a22b:   jbe    0x00007f6cd3f6a164
                                      │             0x00007f6cd3f6a231:   cmp    %rax,%rsi
                                      ╰             0x00007f6cd3f6a234:   jae    0x00007f6cd3f6a164
                                                    0x00007f6cd3f6a23a:   mov    %rdx,%rcx
                                                    0x00007f6cd3f6a23d:   shr    $0x2,%rdx
                                                    0x00007f6cd3f6a241:   test   $0x1,%cl
                                       ╭            0x00007f6cd3f6a244:   je     0x00007f6cd3f6a250
                                       │            0x00007f6cd3f6a246:   mov    -0x2(%rdi,%rcx,2),%ax
                                       │            0x00007f6cd3f6a24b:   mov    %ax,-0x2(%rsi,%rcx,2)
                                       ↘            0x00007f6cd3f6a250:   test   $0x2,%cl
                                        ╭           0x00007f6cd3f6a253:   je     0x00007f6cd3f6a296
                                        │           0x00007f6cd3f6a259:   mov    (%rdi,%rdx,8),%eax
                                        │           0x00007f6cd3f6a25c:   mov    %eax,(%rsi,%rdx,8)
                                        │╭          0x00007f6cd3f6a25f:   jmp    0x00007f6cd3f6a296
                                        ││↗  ↗      0x00007f6cd3f6a264:   mov    -0x8(%rdi,%rdx,8),%rax
                                        │││  │      0x00007f6cd3f6a269:   mov    %rax,-0x8(%rsi,%rdx,8)
                                        │││  │      0x00007f6cd3f6a26e:   dec    %rdx
                                        ││╰  │      0x00007f6cd3f6a271:   jne    0x00007f6cd3f6a264
                                        ││   │      0x00007f6cd3f6a273:   xor    %rax,%rax
                                        ││   │      0x00007f6cd3f6a276:   vzeroupper 
                                        ││   │      0x00007f6cd3f6a279:   leave  
                                        ││   │      0x00007f6cd3f6a27a:   ret    
                                        ││   │      0x00007f6cd3f6a27b:   nopl   0x0(%rax,%rax,1)
                                        ││ ↗ │      0x00007f6cd3f6a280:   vmovdqu 0x20(%rdi,%rdx,8),%ymm0
                                        ││ │ │      0x00007f6cd3f6a286:   vmovdqu %ymm0,0x20(%rsi,%rdx,8)
                                        ││ │ │      0x00007f6cd3f6a28c:   vmovdqu (%rdi,%rdx,8),%ymm0
                                        ││ │ │      0x00007f6cd3f6a291:   vmovdqu %ymm0,(%rsi,%rdx,8)
                                        ↘↘ │ │      0x00007f6cd3f6a296:   sub    $0x8,%rdx
                                           ╰ │      0x00007f6cd3f6a29a:   jge    0x00007f6cd3f6a280
                                             │      0x00007f6cd3f6a29c:   add    $0x4,%rdx
                                            ╭│      0x00007f6cd3f6a2a0:   jl     0x00007f6cd3f6a2b4
                                            ││      0x00007f6cd3f6a2a6:   vmovdqu (%rdi,%rdx,8),%ymm0
                                            ││      0x00007f6cd3f6a2ab:   vmovdqu %ymm0,(%rsi,%rdx,8)
                                            ││      0x00007f6cd3f6a2b0:   sub    $0x4,%rdx
                                            ↘│      0x00007f6cd3f6a2b4:   add    $0x4,%rdx
                                             ╰      0x00007f6cd3f6a2b8:   jg     0x00007f6cd3f6a264
                                                    0x00007f6cd3f6a2ba:   xor    %rax,%rax
                                                    0x00007f6cd3f6a2bd:   vzeroupper 
                                                    0x00007f6cd3f6a2c0:   leave  
                                                    0x00007f6cd3f6a2c1:   ret    
                                                  --------------------------------------------------------------------------------
                                                  - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                  StubRoutines::jint_disjoint_arraycopy [0x00007f6cd3f6a2e0, 0x00007f6cd3f6a360] (128 bytes)
                                                  --------------------------------------------------------------------------------
   0.02%                                            0x00007f6cd3f6a2e0:   push   %rbp
   0.01%                                            0x00007f6cd3f6a2e1:   mov    %rsp,%rbp
                                                    0x00007f6cd3f6a2e4:   mov    %rdx,%rcx
   0.00%                                            0x00007f6cd3f6a2e7:   shr    %rdx
                                                    0x00007f6cd3f6a2ea:   lea    -0x8(%rdi,%rdx,8),%rdi
                                                    0x00007f6cd3f6a2ef:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.00%                                            0x00007f6cd3f6a2f4:   neg    %rdx
   0.00%                                      ╭     0x00007f6cd3f6a2f7:   jmp    0x00007f6cd3f6a338
   0.01%                                      │↗    0x00007f6cd3f6a2fc:   mov    0x8(%rdi,%rdx,8),%rax
   0.01%                                      ││    0x00007f6cd3f6a301:   mov    %rax,0x8(%rsi,%rdx,8)
   0.02%                                      ││    0x00007f6cd3f6a306:   inc    %rdx
                                              │╰    0x00007f6cd3f6a309:   jne    0x00007f6cd3f6a2fc
                                              │     0x00007f6cd3f6a30b:   test   $0x1,%cl
                                              │ ╭   0x00007f6cd3f6a30e:   je     0x00007f6cd3f6a316
                                              │ │   0x00007f6cd3f6a310:   mov    0x8(%rdi),%eax
                                              │ │   0x00007f6cd3f6a313:   mov    %eax,0x8(%rsi)
   0.00%                                      │ ↘   0x00007f6cd3f6a316:   vzeroupper 
   0.00%                                      │     0x00007f6cd3f6a319:   xor    %rax,%rax
                                              │     0x00007f6cd3f6a31c:   leave  
   0.01%                                      │     0x00007f6cd3f6a31d:   ret    
                                              │     0x00007f6cd3f6a31e:   xchg   %ax,%ax
   0.08%                                      │  ↗  0x00007f6cd3f6a320:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
   0.41%                                      │  │  0x00007f6cd3f6a326:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
   0.38%                                      │  │  0x00007f6cd3f6a32c:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   0.31%                                      │  │  0x00007f6cd3f6a332:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.38%                                      ↘  │  0x00007f6cd3f6a338:   add    $0x8,%rdx
                                                 ╰  0x00007f6cd3f6a33c:   jle    0x00007f6cd3f6a320
   0.01%                                            0x00007f6cd3f6a33e:   sub    $0x4,%rdx
                                                    0x00007f6cd3f6a342:   jg     0x00007f6cd3f6a358
   0.00%                                            0x00007f6cd3f6a348:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
   0.01%                                            0x00007f6cd3f6a34e:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
....................................................................................................
  28.30%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.38%           c2, level 4  java.lang.String::split, version 3, compile id 657 
  28.30%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.38%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.87%           c2, level 4  java.util.ArrayList::grow, version 2, compile id 659 
   0.29%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%             libjvm.so  HeapRegionManager::par_iterate 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   2.06%  <...other 324 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.38%           c2, level 4  java.lang.String::split, version 3, compile id 657 
  28.30%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.38%          runtime stub  StubRoutines::checkcast_arraycopy 
   2.77%                kernel  [unknown] 
   0.87%           c2, level 4  java.util.ArrayList::grow, version 2, compile id 659 
   0.11%             libjvm.so  HeapRegionManager::par_iterate 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.06%             libjvm.so  G1CardSet::is_empty 
   0.05%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.05%             libc.so.6  __memset_avx2_unaligned_erms 
   0.04%             libjvm.so  G1RemSetScanState::G1ClearCardTableTask::do_work 
   0.04%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  G1BarrierSet::invalidate 
   0.03%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark::string_split, version 2, compile id 668 
   0.03%             libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.02%             libjvm.so  FreeListAllocator::reset 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  MemAllocator::mem_allocate_inside_tlab_slow 
   0.02%             libjvm.so  G1FromCardCache::clear 
   0.70%  <...other 158 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  63.31%           c2, level 4
  32.67%          runtime stub
   2.77%                kernel
   0.98%             libjvm.so
   0.17%             libc.so.6
   0.03%        hsdis-amd64.so
   0.03%           interpreter
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%         perf-5689.map
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:02:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1027.791 us/op
# Warmup Iteration   2: 489.479 us/op
# Warmup Iteration   3: 477.118 us/op
# Warmup Iteration   4: 483.743 us/op
# Warmup Iteration   5: 478.173 us/op
Iteration   1: 484.576 us/op
Iteration   2: 476.929 us/op
Iteration   3: 475.177 us/op
Iteration   4: 477.182 us/op
Iteration   5: 474.755 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  477.724 ±(99.9%) 15.303 us/op [Average]
  (min, avg, max) = (474.755, 477.724, 484.576), stdev = 3.974
  CI (99.9%): [462.421, 493.026] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 169724 total address lines.
Perf output processed (skipped 67.201 seconds):
 Column 1: cycles (50837 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 687 

                                          # {method} {0x00007f80a30d1b40} &apos;find&apos; &apos;()Z&apos; in &apos;java/util/regex/Matcher&apos;
                                          #           [sp+0x80]  (sp of caller)
                                          0x00007f81284fe260:   mov    0x8(%rsi),%r10d
                                          0x00007f81284fe264:   movabs $0x7f80a3000000,%r11
                                          0x00007f81284fe26e:   add    %r11,%r10
                                          0x00007f81284fe271:   cmp    %r10,%rax
                                          0x00007f81284fe274:   jne    0x00007f8127f85080           ;   {runtime_call ic_miss_stub}
                                          0x00007f81284fe27a:   xchg   %ax,%ax
                                          0x00007f81284fe27c:   nopl   0x0(%rax)
                                        [Verified Entry Point]
   0.04%                                  0x00007f81284fe280:   mov    %eax,-0x14000(%rsp)
   0.35%                                  0x00007f81284fe287:   push   %rbp
   0.05%                                  0x00007f81284fe288:   sub    $0x70,%rsp
   0.03%                                  0x00007f81284fe28c:   cmpl   $0x0,0x20(%r15)
   0.25%                                  0x00007f81284fe294:   jne    0x00007f81284fee6a           ;*synchronization entry
                                                                                                    ; - java.util.regex.Matcher::find@-1 (line 744)
   0.04%                                  0x00007f81284fe29a:   mov    %rsi,%r10
   0.02%                                  0x00007f81284fe29d:   mov    0x1c(%rsi),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@7 (line 745)
   0.04%                                  0x00007f81284fe2a1:   mov    0x20(%rsi),%r11d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@1 (line 744)
   0.30%                                  0x00007f81284fe2a5:   cmp    %r8d,%r11d
                                          0x00007f81284fe2a8:   je     0x00007f81284feb1c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@10 (line 745)
   0.05%                                  0x00007f81284fe2ae:   mov    0xc(%rsi),%ebp               ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@18 (line 749)
   0.01%                                  0x00007f81284fe2b1:   cmp    %ebp,%r11d
                                          0x00007f81284fe2b4:   jl     0x00007f81284feb3c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@21 (line 749)
   0.03%                                  0x00007f81284fe2ba:   mov    0x10(%rsi),%ebp              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@31 (line 753)
   0.26%                                  0x00007f81284fe2bd:   data16 xchg %ax,%ax
   0.05%                                  0x00007f81284fe2c0:   cmp    %ebp,%r11d
                                          0x00007f81284fe2c3:   jg     0x00007f81284feb58           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::find@34 (line 753)
   0.01%                                  0x00007f81284fe2c9:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::search@7 (line 1727)
                                                                                                    ; - java.util.regex.Matcher::find@65 (line 758)
   0.03%                                  0x00007f81284fe2cd:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::search@2 (line 1726)
                                                                                                    ; - java.util.regex.Matcher::find@65 (line 758)
   0.25%                                  0x00007f81284fe2d1:   test   %r11d,%r11d
                                          0x00007f81284fe2d4:   jl     0x00007f81284feb74           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::search@11 (line 1728)
                                                                                                    ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%                                  0x00007f81284fe2da:   mov    0x24(%rsi),%r9d              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.Matcher::search@27 (line 1730)
                                                                                                    ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%                                  0x00007f81284fe2de:   xchg   %ax,%ax
   0.03%                                  0x00007f81284fe2e0:   test   %r9d,%r9d
          ╭                               0x00007f81284fe2e3:   jl     0x00007f81284fe7d5
   0.34%  │                        ↗      0x00007f81284fe2e9:   mov    %r9d,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@41 (line 1730)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                        │      0x00007f81284fe2ed:   mov    %r11d,0x1c(%rsi)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@22 (line 1729)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                        │      0x00007f81284fe2f1:   mov    0x38(%rsi),%r9d              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@48 (line 1731)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                        │      0x00007f81284fe2f5:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f81284fed88
          │                        │                                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@51 (line 1731)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.30%  │                        │      0x00007f81284fe2fa:   test   %ebx,%ebx
   0.05%  │                        │      0x00007f81284fe2fc:   nopl   0x0(%rax)
   0.01%  │╭                       │      0x00007f81284fe300:   jbe    0x00007f81284fe3b3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                       │                                                                ; - java.util.regex.Matcher::search@52 (line 1731)
          ││                       │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.06%  ││                       │      0x00007f81284fe306:   mov    %ebx,%r8d
   0.25%  ││                       │      0x00007f81284fe309:   dec    %r8d
   0.02%  ││                       │      0x00007f81284fe30c:   cmp    %ebx,%r8d
          ││                       │      0x00007f81284fe30f:   jae    0x00007f81284feaf4
   0.04%  ││                       │      0x00007f81284fe315:   shl    $0x3,%r9
   0.04%  ││                       │      0x00007f81284fe319:   mov    %r9d,%r8d
   0.27%  ││                       │      0x00007f81284fe31c:   shr    $0x2,%r8d
   0.05%  ││                       │      0x00007f81284fe320:   and    $0x3,%r8d
   0.04%  ││                       │      0x00007f81284fe324:   mov    $0xffffffff,%ecx
   0.03%  ││                       │      0x00007f81284fe329:   sub    %r8d,%ecx
   0.23%  ││                       │      0x00007f81284fe32c:   and    $0x3,%ecx
   0.03%  ││                       │      0x00007f81284fe32f:   inc    %ecx
   0.04%  ││                       │      0x00007f81284fe331:   cmp    %ebx,%ecx
   0.03%  ││                       │      0x00007f81284fe333:   cmovg  %ebx,%ecx
   0.21%  ││                       │      0x00007f81284fe336:   xor    %edi,%edi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││                       │                                                                ; - java.util.regex.Matcher::search@55 (line 1732)
          ││                       │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.10%  ││ ↗                     │      0x00007f81284fe338:   movl   $0xffffffff,0x10(%r9,%rdi,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││ │                     │                                                                ; - java.util.regex.Matcher::search@61 (line 1732)
          ││ │                     │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.49%  ││ │                     │      0x00007f81284fe341:   mov    %edi,%r8d
   0.10%  ││ │                     │      0x00007f81284fe344:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                     │                                                                ; - java.util.regex.Matcher::search@62 (line 1731)
          ││ │                     │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.49%  ││ │                     │      0x00007f81284fe347:   cmp    %ecx,%r8d
          ││╭│                     │      0x00007f81284fe34a:   jge    0x00007f81284fe351           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││                     │                                                                ; - java.util.regex.Matcher::search@52 (line 1731)
          ││││                     │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.08%  ││││                     │      0x00007f81284fe34c:   mov    %r8d,%edi
   0.19%  │││╰                     │      0x00007f81284fe34f:   jmp    0x00007f81284fe338
   0.02%  ││↘                      │      0x00007f81284fe351:   lea    -0x3(%rbx),%ecx
   0.27%  ││                       │      0x00007f81284fe354:   cmp    %ecx,%r8d
          ││                       │      0x00007f81284fe357:   jge    0x00007f81284feb14
   0.03%  ││                       │      0x00007f81284fe35d:   inc    %edi
   0.06%  ││                       │      0x00007f81284fe35f:   mov    $0xfa0,%esi
   0.03%  ││                       │      0x00007f81284fe364:   vpcmpeqd %xmm0,%xmm0,%xmm0
   0.31%  ││   ↗                   │      0x00007f81284fe368:   mov    %ebx,%edx
   0.01%  ││   │                   │      0x00007f81284fe36a:   sub    %edi,%edx
   0.03%  ││   │                   │      0x00007f81284fe36c:   add    $0xfffffffd,%edx
   0.03%  ││   │                   │      0x00007f81284fe36f:   xor    %ebp,%ebp
   0.25%  ││   │                   │      0x00007f81284fe371:   cmp    %edi,%ecx
   0.03%  ││   │                   │      0x00007f81284fe373:   cmovl  %ebp,%edx                    ;   {no_reloc}
   0.04%  ││   │                   │      0x00007f81284fe376:   cmp    $0xfa0,%edx
   0.03%  ││   │                   │      0x00007f81284fe37c:   cmova  %esi,%edx
   0.28%  ││   │                   │      0x00007f81284fe37f:   add    %edi,%edx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││   │                   │                                                                ; - java.util.regex.Matcher::search@55 (line 1732)
          ││   │                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.63%  ││  ↗│                   │      0x00007f81284fe381:   vmovdqu %xmm0,0x10(%r9,%rdi,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                   │                                                                ; - java.util.regex.Matcher::search@61 (line 1732)
          ││  ││                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.24%  ││  ││                   │      0x00007f81284fe388:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                   │                                                                ; - java.util.regex.Matcher::search@62 (line 1731)
          ││  ││                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.43%  ││  ││                   │      0x00007f81284fe38b:   cmp    %edx,%edi
          ││  ╰│                   │      0x00007f81284fe38d:   jl     0x00007f81284fe381           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││   │                   │                                                                ; - java.util.regex.Matcher::search@65 (line 1731)
          ││   │                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%  ││   │                   │      0x00007f81284fe38f:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r10=Oop r9=Oop }
          ││   │                   │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││   │                   │                                                                ; - (reexecute) java.util.regex.Matcher::search@65 (line 1731)
          ││   │                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.26%  ││   │                   │      0x00007f81284fe396:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││   │                   │                                                                ; - java.util.regex.Matcher::search@65 (line 1731)
          ││   │                   │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          ││   │                   │                                                                ;   {poll}
   0.17%  ││   │                   │      0x00007f81284fe399:   cmp    %ecx,%edi
          ││   ╰                   │      0x00007f81284fe39b:   jl     0x00007f81284fe368
   0.02%  ││                       │      0x00007f81284fe39d:   data16 xchg %ax,%ax
   0.04%  ││                       │      0x00007f81284fe3a0:   cmp    %ebx,%edi
          ││    ╭                  │      0x00007f81284fe3a2:   jge    0x00007f81284fe3b3           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          ││    │                  │                                                                ; - java.util.regex.Matcher::search@55 (line 1732)
          ││    │                  │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.11%  ││    │↗                 │      0x00007f81284fe3a4:   movl   $0xffffffff,0x10(%r9,%rdi,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                 │                                                                ; - java.util.regex.Matcher::search@61 (line 1732)
          ││    ││                 │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.18%  ││    ││                 │      0x00007f81284fe3ad:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││    ││                 │                                                                ; - java.util.regex.Matcher::search@62 (line 1731)
          ││    ││                 │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%  ││    ││                 │      0x00007f81284fe3af:   cmp    %ebx,%edi
          ││    │╰                 │      0x00007f81284fe3b1:   jl     0x00007f81284fe3a4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││    │                  │                                                                ; - java.util.regex.Matcher::search@52 (line 1731)
          ││    │                  │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.13%  │↘    ↘                  │      0x00007f81284fe3b3:   mov    0x44(%r10),%r8d              ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@72 (line 1733)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.06%  │                        │      0x00007f81284fe3b7:   nopw   0x0(%rax,%rax,1)
   0.11%  │                        │      0x00007f81284fe3c0:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f81284fed9c
          │                        │                                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@75 (line 1733)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.08%  │                        │      0x00007f81284fe3c5:   test   %ebp,%ebp
          │                        │      0x00007f81284fe3c7:   ja     0x00007f81284feb90           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@76 (line 1733)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.17%  │                        │      0x00007f81284fe3cd:   mov    %r12d,0x18(%r10)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@105 (line 1737)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%  │                        │      0x00007f81284fe3d1:   mov    0x34(%r10),%r8d              ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@109 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.12%  │                        │      0x00007f81284fe3d5:   mov    0x34(%r12,%r8,8),%ebx        ; implicit exception: dispatches to 0x00007f81284fedb0
          │                        │                                                                ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@112 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.09%  │                        │      0x00007f81284fe3da:   mov    0x3c(%r10),%r9d              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@118 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.16%  │                        │      0x00007f81284fe3de:   xchg   %ax,%ax
   0.03%  │                        │      0x00007f81284fe3e0:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007f81284fedc4
   0.68%  │                        │      0x00007f81284fe3e5:   cmp    $0x338000,%ecx               ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
          │                        │      0x00007f81284fe3eb:   jne    0x00007f81284fea64
   0.29%  │                        │      0x00007f81284fe3f1:   mov    0x10(%r10),%ecx
   0.05%  │                        │      0x00007f81284fe3f5:   shl    $0x3,%rbx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │                        │      0x00007f81284fe3f9:   sub    0x10(%rbx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Pattern$Start::match@9 (line 3781)
          │                        │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.31%  │                        │      0x00007f81284fe3fc:   nopl   0x0(%rax)
   0.01%  │                        │      0x00007f81284fe400:   cmp    %ecx,%r11d
          │                        │      0x00007f81284fe403:   jg     0x00007f81284febac           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Pattern$Start::match@10 (line 3781)
          │                        │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.32%  │                        │      0x00007f81284fe409:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007f81284fea88
   0.01%  │                        │      0x00007f81284fe40e:   cmp    $0xe8d8,%r8d                 ;   {metadata(&apos;java/lang/String&apos;)}
          │                        │      0x00007f81284fe415:   jne    0x00007f81284fea88
   0.05%  │                        │      0x00007f81284fe41b:   nopl   0x0(%rax,%rax,1)
   0.01%  │                        │      0x00007f81284fe420:   cmp    $0x7ffffffe,%ecx
          │                        │      0x00007f81284fe426:   jg     0x00007f81284fea38
   0.31%  │                        │      0x00007f81284fe42c:   mov    %ecx,%esi
   0.01%  │                        │      0x00007f81284fe42e:   inc    %esi
   0.03%  │                        │      0x00007f81284fe430:   lea    (%r12,%r9,8),%rbp            ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Matcher::search@118 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │                        │      0x00007f81284fe434:   mov    %rbp,%rdx                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                        │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │                        │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                        │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │                        │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.29%  │                        │      0x00007f81284fe437:   mov    $0x1,%eax
   0.02%  │       ╭                │      0x00007f81284fe43c:   jmp    0x00007f81284fe45d
   0.06%  │       │    ↗           │      0x00007f81284fe43e:   mov    0x50(%rsp),%r9d
   0.72%  │       │    │           │      0x00007f81284fe443:   mov    0x54(%rsp),%ecx
   1.19%  │       │    │           │      0x00007f81284fe447:   mov    0x8(%rsp),%rbx
   0.00%  │       │    │           │      0x00007f81284fe44c:   mov    (%rsp),%esi
   0.06%  │       │    │           │      0x00007f81284fe44f:   mov    0x10(%rsp),%rbp
   0.78%  │       │    │           │      0x00007f81284fe454:   mov    0x48(%rsp),%rdx
   1.25%  │       │    │           │      0x00007f81284fe459:   mov    0x4(%rsp),%eax               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │       │    │           │                                                                ; - java.util.regex.Pattern$Start::match@37 (line 3787)
          │       │    │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │       │    │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.04%  │       ↘    │           │      0x00007f81284fe45d:   mov    0xc(%rbx),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │            │           │                                                                ; - java.util.regex.Pattern$Start::match@38 (line 3787)
          │            │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │            │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.08%  │            │           │      0x00007f81284fe461:   mov    0x8(%r12,%r8,8),%edi         ; implicit exception: dispatches to 0x00007f81284fed68
          │            │           │                                                                ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │            │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │            │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │            │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   1.93%  │            │           │      0x00007f81284fe466:   mov    %eax,0x4(%rsp)
   1.25%  │            │           │      0x00007f81284fe46a:   mov    %rdx,0x48(%rsp)
   0.02%  │            │           │      0x00007f81284fe46f:   mov    %rbp,0x10(%rsp)
   0.01%  │            │           │      0x00007f81284fe474:   mov    %esi,(%rsp)
   1.15%  │            │           │      0x00007f81284fe477:   mov    %rbx,0x8(%rsp)
   1.21%  │            │           │      0x00007f81284fe47c:   mov    %ecx,0x54(%rsp)
   0.05%  │            │           │      0x00007f81284fe480:   mov    %r9d,0x50(%rsp)
   0.02%  │            │           │      0x00007f81284fe485:   mov    %r11d,0x30(%rsp)
   1.30%  │            │           │      0x00007f81284fe48a:   mov    %r10,0x28(%rsp)
   1.21%  │            │           │      0x00007f81284fe48f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │            │           │                                                                ; - java.lang.String::charAt@8 (line 1555)
          │            │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │            │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │            │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │            │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.03%  │            │           │      0x00007f81284fe493:   mov    0x28(%rsp),%r10
   0.25%  │            │           │      0x00007f81284fe498:   mov    0x10(%r10),%r9d              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
          │            │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@4 (line 4501)
          │            │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │            │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │            │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   2.15%  │            │           │      0x00007f81284fe49c:   movsbl 0x10(%rdx),%ecx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │            │           │                                                                ; - java.lang.String::isLatin1@7 (line 4817)
          │            │           │                                                                ; - java.lang.String::charAt@1 (line 1554)
          │            │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │            │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │            │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │            │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   0.95%  │            │           │      0x00007f81284fe4a0:   lea    (%r12,%r8,8),%rbx
   0.02%  │            │           │      0x00007f81284fe4a4:   movslq %r9d,%r10
   0.98%  │            │           │      0x00007f81284fe4a7:   cmp    $0x33ea88,%edi               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
          │        ╭   │           │      0x00007f81284fe4ad:   jne    0x00007f81284fe6b0           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        │   │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │           │      0x00007f81284fe4b3:   mov    %rbx,0x20(%rsp)
          │        │   │           │      0x00007f81284fe4b8:   mov    0x30(%rsp),%r8d
          │        │   │           │      0x00007f81284fe4bd:   data16 xchg %ax,%ax
          │        │   │           │      0x00007f81284fe4c0:   cmp    %r9d,%r8d
          │        │   │           │      0x00007f81284fe4c3:   jge    0x00007f81284fe9a4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │   │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
          │        │   │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │           │      0x00007f81284fe4c9:   test   %ecx,%ecx
          │        │   │           │      0x00007f81284fe4cb:   jne    0x00007f81284fe8b8
          │        │   │           │      0x00007f81284fe4d1:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f81284fe8b8
          │        │   │           │                                                                ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │        │   │           │                                                                ; - java.lang.StringLatin1::charAt@2 (line 46)
          │        │   │           │                                                                ; - java.lang.String::charAt@12 (line 1555)
          │        │   │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │   │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │           │      0x00007f81284fe4d6:   cmp    %ecx,%r8d
          │        │   │           │      0x00007f81284fe4d9:   jae    0x00007f81284fe8b8
          │        │   │           │      0x00007f81284fe4df:   movslq %ecx,%r8
          │        │   │           │      0x00007f81284fe4e2:   dec    %r10
          │        │   │           │      0x00007f81284fe4e5:   cmp    %r8,%r10
          │        │   │           │      0x00007f81284fe4e8:   jae    0x00007f81284fe8b8
          │        │   │           │      0x00007f81284fe4ee:   mov    0x14(%rbx),%r8d              ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
          │        │   │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@16 (line 4502)
          │        │   │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │           │      0x00007f81284fe4f2:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f81284fe8b8
          │        │   │           │      0x00007f81284fe4f7:   nopw   0x0(%rax,%rax,1)
          │        │   │           │      0x00007f81284fe500:   cmp    $0x3a9300,%r10d              ;   {metadata(&apos;java/util/regex/CharPredicates$$Lambda+0x800000027&apos;)}
          │        │   │           │      0x00007f81284fe507:   jne    0x00007f81284fe8b8
          │        │   │           │      0x00007f81284fe50d:   lea    (%r12,%r11,8),%rdi
          │        │   │           │      0x00007f81284fe511:   mov    0x30(%rsp),%ebx
          │        │   │           │      0x00007f81284fe515:   neg    %ebx
          │        │   │           │      0x00007f81284fe517:   mov    0x30(%rsp),%r8d
          │        │   │           │      0x00007f81284fe51c:   mov    %r8d,%esi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │   │           │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@15 (line 4502)
          │        │   │           │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │           │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │           │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ ↗         │      0x00007f81284fe51f:   mov    %esi,%r10d                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.lang.String::checkIndex@5 (line 4828)
          │        │   │ │         │                                                                ; - java.lang.StringLatin1::charAt@3 (line 46)
          │        │   │ │         │                                                                ; - java.lang.String::charAt@12 (line 1555)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe522:   mov    %r10d,0x3c(%rsp)
          │        │   │ │         │      0x00007f81284fe527:   movsbl 0x10(%rdi,%r10,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.lang.StringLatin1::charAt@8 (line 47)
          │        │   │ │         │                                                                ; - java.lang.String::charAt@12 (line 1555)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe52d:   movzbl %cl,%r11d                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.lang.StringLatin1::charAt@12 (line 47)
          │        │   │ │         │                                                                ; - java.lang.String::charAt@12 (line 1555)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe531:   cmp    $0x80,%r11d
          │        │   │ │         │      0x00007f81284fe538:   jge    0x00007f81284fe950           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@4 (line 427)
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe53e:   and    $0x80,%ecx                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::getType@3 (line 199)
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::isType@1 (line 203)
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe544:   test   %ecx,%ecx
          │        │   │ │         │      0x00007f81284fe546:   jne    0x00007f81284fe8fc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::getType@4 (line 199)
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::isType@1 (line 203)
          │        │   │ │         │                                                                ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
          │        │   │ │         │                                                                ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
          │        │   │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │   │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │   │ │         │      0x00007f81284fe54c:   cmp    $0x80,%r11d
          │        │   │ │         │      0x00007f81284fe553:   jae    0x00007f81284fe865
          │        │   │ │         │      0x00007f81284fe559:   movabs $0x7ff052dd8,%r10            ;   {oop([I{0x00000007ff052dd8})}
          │        │   │ │         │      0x00007f81284fe563:   mov    $0x800,%ecx
          │        │   │ │         │      0x00007f81284fe568:   test   %ecx,0x10(%r10,%r11,4)
          │        │╭  │ │         │      0x00007f81284fe56d:   jne    0x00007f81284fe620           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││  │ │         │      0x00007f81284fe573:   mov    %esi,%r10d
          │        ││  │ │         │      0x00007f81284fe576:   add    %ebx,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@15 (line 4502)
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││  │ │         │      0x00007f81284fe579:   mov    %r10d,0x38(%rsp)
          │        ││  │ │         │      0x00007f81284fe57e:   mov    0x3c(%rsp),%r10d
          │        ││  │ │         │      0x00007f81284fe583:   cmp    %r9d,%r10d
          │        ││  │ │         │      0x00007f81284fe586:   jge    0x00007f81284fe9e8           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@46 (line 4505)
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││  │ │         │      0x00007f81284fe58c:   mov    0x20(%rsp),%r10
          │        ││  │ │         │      0x00007f81284fe591:   mov    0x10(%r10),%r10d             ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@57 (line 4508)
          │        ││  │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││  │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││  │ │         │      0x00007f81284fe595:   mov    0x38(%rsp),%r8d
          │        ││  │ │         │      0x00007f81284fe59a:   nopw   0x0(%rax,%rax,1)
          │        ││  │ │         │      0x00007f81284fe5a0:   cmp    %r10d,%r8d
          │        ││╭ │ │         │      0x00007f81284fe5a3:   jge    0x00007f81284fe658           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │ │         │                                                                ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@60 (line 4508)
          │        │││ │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││ │ │         │      0x00007f81284fe5a9:   xor    %eax,%eax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │ │         │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │││ │ │         │                                                                ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │ │         │                                                                ; - java.util.regex.Matcher::find@65 (line 758)
   1.94%  │        │││ │ │↗       ↗│   ↗  0x00007f81284fe5ab:   mov    0x28(%rsp),%r10
   0.27%  │        │││ │ ││       ││   │  0x00007f81284fe5b0:   mov    0x20(%r10),%r8d              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
          │        │││ │ ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
          │        │││ │ ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││ │ ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.29%  │        │││ │ ││       ││   │  0x00007f81284fe5b4:   test   %eax,%eax
          │        │││╭│ ││       ││   │  0x00007f81284fe5b6:   jne    0x00007f81284fe5db           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.74%  │        │││││ ││       ││   │  0x00007f81284fe5b8:   mov    0x30(%rsp),%r11d
   1.32%  │        │││││ ││       ││   │  0x00007f81284fe5bd:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@77 (line 3786)
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││││ ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │││││ ││       ││   │  0x00007f81284fe5c0:   cmp    (%rsp),%r11d
          │        ││││╰ ││       ││   │  0x00007f81284fe5c4:   jl     0x00007f81284fe43e           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@34 (line 3786)
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││  ││       ││   │  0x00007f81284fe5ca:   movl   $0xffffffff,0x1c(%r10)       ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::search@131 (line 1740)
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │        ││││  ││       ││   │  0x00007f81284fe5d2:   movb   $0x1,0x30(%r10)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@85 (line 3794)
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        ││││  ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        ││││  ││       ││   │  0x00007f81284fe5d7:   xor    %eax,%eax
          │        ││││ ╭││       ││   │  0x00007f81284fe5d9:   jmp    0x00007f81284fe605
   0.32%  │        │││↘ │││       ││   │  0x00007f81284fe5db:   mov    0x30(%rsp),%r9d
   0.00%  │        │││  │││       ││   │  0x00007f81284fe5e0:   mov    %r9d,0x1c(%r10)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@52 (line 3788)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │        │││  │││       ││   │  0x00007f81284fe5e4:   mov    0x38(%r10),%ebp              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@56 (line 3789)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.06%  │        │││  │││       ││   │  0x00007f81284fe5e8:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f81284fede4
   0.44%  │        │││  │││       ││   │  0x00007f81284fe5ed:   cmp    $0x1,%r11d
          │        │││  │││       ││   │  0x00007f81284fe5f1:   jbe    0x00007f81284feab4
   0.06%  │        │││  │││       ││   │  0x00007f81284fe5f7:   mov    %r9d,0x10(%r12,%rbp,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.13%  │        │││  │││       ││   │  0x00007f81284fe5fc:   mov    %r8d,0x14(%r12,%rbp,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@74 (line 3790)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.15%  │        │││  │││       ││   │  0x00007f81284fe601:   mov    0x4(%rsp),%eax               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::search@134 (line 1741)
          │        │││  │││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.23%  │        │││  ↘││       ││   │  0x00007f81284fe605:   mov    %r8d,0x24(%r10)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
          │        │││   ││       ││   │                                                            ; - java.util.regex.Matcher::search@139 (line 1741)
          │        │││   ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │        │││   ││       ││   │  0x00007f81284fe609:   incl   0x2c(%r10)                   ;*synchronization entry
          │        │││   ││       ││   │                                                            ; - java.util.regex.Matcher::find@-1 (line 744)
   0.41%  │        │││   ││       ││   │  0x00007f81284fe60d:   add    $0x70,%rsp
   0.00%  │        │││   ││       ││   │  0x00007f81284fe611:   pop    %rbp
   0.06%  │        │││   ││       ││   │  0x00007f81284fe612:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │        │││   ││       ││   │  0x00007f81284fe619:   ja     0x00007f81284fee54
   0.31%  │        │││   ││       ││   │  0x00007f81284fe61f:   ret    
          │        │↘│   ││       ││   │  0x00007f81284fe620:   mov    %r9d,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe623:   sub    %r8d,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe626:   xor    %r11d,%r11d
          │        │ │   ││       ││   │  0x00007f81284fe629:   cmp    %r8d,%r9d
          │        │ │   ││       ││   │  0x00007f81284fe62c:   cmovl  %r11d,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe630:   cmp    $0x3e8,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe637:   mov    $0x3e8,%r11d
          │        │ │   ││       ││   │  0x00007f81284fe63d:   cmova  %r11d,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe641:   add    %r8d,%r10d
          │        │ │   ││       ││   │  0x00007f81284fe644:   mov    %esi,%eax
          │        │ │   ││       ││   │  0x00007f81284fe646:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@34 (line 4503)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │ │   ││       ││   │  0x00007f81284fe648:   cmp    %r10d,%eax
          │        │ │   ││       ││   │  0x00007f81284fe64b:   jge    0x00007f81284febcc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │ │   ││       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │ │   ││       ││   │  0x00007f81284fe651:   mov    %eax,%esi
          │        │ │   ╰│       ││   │  0x00007f81284fe653:   jmp    0x00007f81284fe51f
          │        │ ↘    │       ││   │  0x00007f81284fe658:   mov    0x20(%rsp),%r10
          │        │      │       ││   │  0x00007f81284fe65d:   mov    0xc(%r10),%ebp               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@64 (line 4509)
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │      │       ││   │  0x00007f81284fe661:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f81284fedfc
          │        │      │       ││   │  0x00007f81284fe666:   cmp    $0x33f2c8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
          │        │      │       ││   │  0x00007f81284fe66d:   jne    0x00007f81284feacc           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@63 (line 4509)
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │      │       ││   │  0x00007f81284fe673:   lea    (%r12,%rbp,8),%rsi
          │        │      │       ││   │  0x00007f81284fe677:   mov    0x28(%rsp),%rdx
          │        │      │       ││   │  0x00007f81284fe67c:   mov    0x3c(%rsp),%ecx
          │        │      │       ││   │  0x00007f81284fe680:   mov    0x48(%rsp),%r8
          │        │      │       ││   │  0x00007f81284fe685:   mov    %rdx,%rbp
          │        │      │       ││   │  0x00007f81284fe688:   data16 xchg %ax,%ax
          │        │      │       ││   │  0x00007f81284fe68b:   call   0x00007f8127f85380           ; ImmutableOopMap {rbp=Oop [8]=Oop [16]=Oop [32]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
          │        │      │       ││   │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │      │       ││   │                                                            ;   {optimized virtual_call}
          │        │      │       ││   │  0x00007f81284fe690:   nopl   0x1000680(%rax,%rax,1)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │      │       ││   │                                                            ;   {other}
          │        │      │       ││   │  0x00007f81284fe698:   test   %eax,%eax
          │        │      │       ││   │  0x00007f81284fe69a:   nopw   0x0(%rax,%rax,1)
          │        │      │       ││   │  0x00007f81284fe6a0:   je     0x00007f81284fec05           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@73 (line 4509)
          │        │      │       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │        │      │       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │        │      │       ││   │  0x00007f81284fe6a6:   mov    $0x1,%eax
          │        │      ╰       ││   │  0x00007f81284fe6ab:   jmp    0x00007f81284fe5ab
   0.56%  │        ↘              ││   │  0x00007f81284fe6b0:   cmp    $0x3389f0,%edi               ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
          │                       ││   │  0x00007f81284fe6b6:   jne    0x00007f81284fec4c
   0.87%  │                       ││   │  0x00007f81284fe6bc:   mov    %rbx,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                       ││   │  0x00007f81284fe6bf:   mov    %r8,%rax
   0.86%  │                       ││   │  0x00007f81284fe6c2:   mov    0x10(%r8),%ebx               ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                       ││   │                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │                       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.84%  │                       ││   │  0x00007f81284fe6c6:   mov    0xc(%r12,%rbx,8),%r8d        ; implicit exception: dispatches to 0x00007f81284fee26
          │                       ││   │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                       ││   │                                                            ; - java.util.regex.Pattern$Slice::match@8 (line 4259)
          │                       ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                       ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                       ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.25%  │                       ││   │  0x00007f81284fe6cb:   mov    %r8d,%r13d
   0.01%  │                       ││   │  0x00007f81284fe6ce:   test   %r8d,%r8d
          │                ╭      ││   │  0x00007f81284fe6d1:   jbe    0x00007f81284fe817           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.29%  │                │      ││   │  0x00007f81284fe6d7:   dec    %r8d
   0.71%  │                │      ││   │  0x00007f81284fe6da:   nopw   0x0(%rax,%rax,1)
   0.73%  │                │      ││   │  0x00007f81284fe6e0:   cmp    %r13d,%r8d
          │                │      ││   │  0x00007f81284fe6e3:   jae    0x00007f81284fec88
   0.94%  │                │      ││   │  0x00007f81284fe6e9:   test   %ecx,%ecx
          │                │      ││   │  0x00007f81284fe6eb:   jne    0x00007f81284fec88
   0.44%  │                │      ││   │  0x00007f81284fe6f1:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f81284fec88
          │                │      ││   │                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
          │                │      ││   │                                                            ; - java.lang.String::charAt@12 (line 1555)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.40%  │                │      ││   │  0x00007f81284fe6f6:   mov    0x30(%rsp),%ecx
   0.73%  │                │      ││   │  0x00007f81284fe6fa:   nopw   0x0(%rax,%rax,1)
   0.95%  │                │      ││   │  0x00007f81284fe700:   cmp    %r8d,%ecx
          │                │      ││   │  0x00007f81284fe703:   jae    0x00007f81284fec88
   0.51%  │                │      ││   │  0x00007f81284fe709:   movslq %r8d,%r8
   0.43%  │                │      ││   │  0x00007f81284fe70c:   movslq %ecx,%rdx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
          │                │      ││   │                                                            ; - java.lang.String::charAt@12 (line 1555)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.62%  │                │      ││   │  0x00007f81284fe70f:   movslq %r13d,%rbp
   1.15%  │                │      ││   │  0x00007f81284fe712:   lea    (%rdx,%rbp,1),%rcx
   0.47%  │                │      ││   │  0x00007f81284fe716:   dec    %rcx
   0.44%  │                │      ││   │  0x00007f81284fe719:   cmp    %r8,%rcx
   0.75%  │                │      ││   │  0x00007f81284fe71c:   nopl   0x0(%rax)
   0.82%  │                │      ││   │  0x00007f81284fe720:   jae    0x00007f81284fec88
   0.57%  │                │      ││   │  0x00007f81284fe726:   mov    0x30(%rsp),%ecx
   0.33%  │                │      ││   │  0x00007f81284fe72a:   cmp    %r9d,%ecx
          │                │      ││   │  0x00007f81284fe72d:   jge    0x00007f81284feccc           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.67%  │                │      ││   │  0x00007f81284fe733:   mov    0x10(%r12,%rbx,8),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.86%  │                │      ││   │  0x00007f81284fe738:   lea    (%r12,%r11,8),%rdi
   0.64%  │                │      ││   │  0x00007f81284fe73c:   movzbl 0x10(%rdi,%rdx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                │      ││   │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                │      ││   │                                                            ; - java.lang.String::charAt@12 (line 1555)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │                │      ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │      ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.37%  │                │      ││   │  0x00007f81284fe741:   cmp    %ecx,%r8d
          │                │╭     ││   │  0x00007f81284fe744:   jne    0x00007f81284fe7ce           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                ││     ││   │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │                ││     ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                ││     ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                ││     ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   1.94%  │                ││     ││   │  0x00007f81284fe74a:   sub    %rdx,%r10
   2.56%  │                ││     ││   │  0x00007f81284fe74d:   lea    (%r12,%rbx,8),%rsi           ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                ││     ││   │                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
          │                ││     ││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                ││     ││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                ││     ││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.02%  │                ││     ││   │  0x00007f81284fe751:   mov    $0xffffffff80000000,%r11
   0.01%  │                ││     ││   │  0x00007f81284fe758:   cmp    $0xffffffff80000000,%r10
   0.01%  │                ││     ││   │  0x00007f81284fe75f:   cmovl  %r11,%r10
   0.33%  │                ││     ││   │  0x00007f81284fe763:   cmp    %rbp,%r10
   0.98%  │                ││     ││   │  0x00007f81284fe766:   cmovl  %r10,%rbp
   0.01%  │                ││     ││   │  0x00007f81284fe76a:   mov    %ebp,%r10d
   0.03%  │                ││     ││   │  0x00007f81284fe76d:   cmp    $0x1,%r10d
          │                ││╭    ││   │  0x00007f81284fe771:   jle    0x00007f81284fe7dd
   0.01%  │                │││    ││   │  0x00007f81284fe777:   mov    $0x1,%r8d
   0.53%  │                │││   ↗││   │  0x00007f81284fe77d:   mov    %r8d,%r11d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                │││   │││   │                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
          │                │││   │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │││   │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │││   │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │                │││ ↗ │││   │  0x00007f81284fe780:   movslq %r11d,%rcx
   0.02%  │                │││ │ │││   │  0x00007f81284fe783:   mov    0x10(%rsi,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                │││ │ │││   │                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
          │                │││ │ │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │││ │ │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │││ │ │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.28%  │                │││ │ │││   │  0x00007f81284fe787:   add    %rdx,%rcx
   0.02%  │                │││ │ │││   │  0x00007f81284fe78a:   movzbl 0x10(%rdi,%rcx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                │││ │ │││   │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                │││ │ │││   │                                                            ; - java.lang.String::charAt@12 (line 1555)
          │                │││ │ │││   │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
          │                │││ │ │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │││ │ │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │││ │ │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.32%  │                │││ │ │││   │  0x00007f81284fe78f:   cmp    %ecx,%ebx
          │                │││╭│ │││   │  0x00007f81284fe791:   jne    0x00007f81284fe7ce           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ │││   │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
          │                │││││ │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │││││ │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │││││ │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.36%  │                │││││ │││   │  0x00007f81284fe793:   mov    %r10d,%ebp
   0.00%  │                │││││ │││   │  0x00007f81284fe796:   sub    %r8d,%ebp
   0.01%  │                │││││ │││   │  0x00007f81284fe799:   xor    %ecx,%ecx
   0.01%  │                │││││ │││   │  0x00007f81284fe79b:   cmp    %r8d,%r10d
   0.36%  │                │││││ │││   │  0x00007f81284fe79e:   cmovl  %ecx,%ebp
   0.01%  │                │││││ │││   │  0x00007f81284fe7a1:   cmp    $0x3e8,%ebp
   0.03%  │                │││││ │││   │  0x00007f81284fe7a7:   mov    $0x3e8,%ebx
   0.00%  │                │││││ │││   │  0x00007f81284fe7ac:   cmova  %ebx,%ebp
   0.34%  │                │││││ │││   │  0x00007f81284fe7af:   add    %r8d,%ebp                    ;   {no_reloc}
   0.02%  │                │││││ │││   │  0x00007f81284fe7b2:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ │││   │                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
          │                │││││ │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                │││││ │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                │││││ │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │                │││││ │││   │  0x00007f81284fe7b5:   cmp    %ebp,%r11d
          │                ││││╰ │││   │  0x00007f81284fe7b8:   jl     0x00007f81284fe780           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::search@65 (line 1731)
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.37%  │                ││││  │││   │  0x00007f81284fe7ba:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rdi=Oop rsi=Oop rax=Oop [8]=Oop [16]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
          │                ││││  │││   │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                ││││  │││   │                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@62 (line 4260)
          │                ││││  │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%  │                ││││  │││   │  0x00007f81284fe7c1:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                ││││  │││   │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4260)
          │                ││││  │││   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
          │                ││││  │││   │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
          │                ││││  │││   │                                                            ;   {poll}
   0.64%  │                ││││  │││   │  0x00007f81284fe7c4:   cmp    %r10d,%r11d
          │                ││││ ╭│││   │  0x00007f81284fe7c7:   jge    0x00007f81284fe7e3
          │                ││││ ││││   │  0x00007f81284fe7c9:   mov    %r11d,%r8d
          │                ││││ │╰││   │  0x00007f81284fe7cc:   jmp    0x00007f81284fe77d
   0.85%  │                │↘│↘ │ ││ ↗ │  0x00007f81284fe7ce:   xor    %eax,%eax
   0.82%  │                │ │  │ ╰│ │ │  0x00007f81284fe7d0:   jmp    0x00007f81284fe5ab
          ↘                │ │  │  │ │ │  0x00007f81284fe7d5:   mov    %r11d,%r9d
                           │ │  │  ╰ │ │  0x00007f81284fe7d8:   jmp    0x00007f81284fe2e9
                           │ ↘  │    │ │  0x00007f81284fe7dd:   mov    $0x1,%r11d
   0.01%                   │    ↘    │ │  0x00007f81284fe7e3:   cmp    %r13d,%r11d
                           │        ╭│ │  0x00007f81284fe7e6:   jge    0x00007f81284fe817           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                           │        ││ │                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4261)
                           │        ││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        ││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        ││ │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        ││↗│  0x00007f81284fe7e8:   mov    %r11d,%ebp
                           │        ││││  0x00007f81284fe7eb:   add    0x30(%rsp),%ebp              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                           │        ││││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
                           │        ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        ││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        ││││  0x00007f81284fe7ef:   cmp    %r9d,%ebp
                           │        ││││  0x00007f81284fe7f2:   jge    0x00007f81284fecce           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                           │        ││││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
                           │        ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        ││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        ││││  0x00007f81284fe7f8:   movslq %r11d,%r10
                           │        ││││  0x00007f81284fe7fb:   mov    0x10(%rsi,%r10,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                           │        ││││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
                           │        ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        ││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        ││││  0x00007f81284fe800:   lea    (%rdx,%r10,1),%rcx
                           │        ││││  0x00007f81284fe804:   movzbl 0x10(%rdi,%rcx,1),%r10d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
                           │        ││││                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
                           │        ││││                                                            ; - java.lang.String::charAt@12 (line 1555)
                           │        ││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
                           │        ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        ││││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        ││││  0x00007f81284fe80a:   cmp    %r10d,%r8d
                           │        │╰││  0x00007f81284fe80d:   jne    0x00007f81284fe7ce           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                           │        │ ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
                           │        │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        │ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        │ ││  0x00007f81284fe80f:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                           │        │ ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
                           │        │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        │ ││                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                           │        │ ││  0x00007f81284fe812:   cmp    %r13d,%r11d
                           │        │ ╰│  0x00007f81284fe815:   jl     0x00007f81284fe7e8           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                           │        │  │                                                            ; - java.util.regex.Pattern$Slice::match@65 (line 4268)
                           │        │  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                           │        │  │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                           │        │  │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.35%                   ↘        ↘  │  0x00007f81284fe817:   mov    0x30(%rsp),%r11d
                                       │  0x00007f81284fe81c:   lea    (%r11,%r13,1),%r9d
                                       │  0x00007f81284fe820:   mov    0xc(%rax),%ebp               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                       │                                                            ; - java.util.regex.Pattern$Slice::match@66 (line 4268)
                                       │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                       │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                                       │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                                       │  0x00007f81284fe823:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f81284fee38
   0.40%                               │  0x00007f81284fe828:   cmp    $0x33f2c8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
                                       │  0x00007f81284fe82f:   jne    0x00007f81284fecf0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                       │                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
                                       │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                       │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                                       │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
   0.01%                               │  0x00007f81284fe835:   lea    (%r12,%rbp,8),%rsi
                                       │  0x00007f81284fe839:   mov    0x28(%rsp),%rdx
                                       │  0x00007f81284fe83e:   mov    %r9d,%ecx
   0.34%                               │  0x00007f81284fe841:   mov    0x10(%rsp),%r8
   0.01%                               │  0x00007f81284fe846:   mov    %rdx,%r10
                                       │  0x00007f81284fe849:   mov    %r10,0x18(%rsp)
   0.00%                               │  0x00007f81284fe84e:   nop
   0.41%                               │  0x00007f81284fe84f:   call   0x00007f8127f85380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop [40]=Oop [72]=Oop [80]=NarrowOop }
                                       │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                       │                                                            ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                       │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                       │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                                       │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                                       │                                                            ;   {optimized virtual_call}
   3.03%                               │  0x00007f81284fe854:   nopl   0x3000844(%rax,%rax,1)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                       │                                                            ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
                                       │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                       │                                                            ; - java.util.regex.Matcher::search@121 (line 1738)
                                       │                                                            ; - java.util.regex.Matcher::find@65 (line 758)
                                       │                                                            ;   {other}
   0.00%                               │  0x00007f81284fe85c:   nopl   0x0(%rax)
   0.03%                               ╰  0x00007f81284fe860:   jmp    0x00007f81284fe5ab           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                    ; - java.util.regex.ASCII::getType@11 (line 199)
                                                                                                    ; - java.util.regex.ASCII::isType@1 (line 203)
                                                                                                    ; - java.util.regex.ASCII::isSpace@4 (line 235)
                                                                                                    ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
                                                                                                    ; - java.util.regex.CharPredicates$$Lambda/0x800000027::is@1
                                                                                                    ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
                                                                                                    ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                                    ; - java.util.regex.Matcher::search@121 (line 1738)
                                                                                                    ; - java.util.regex.Matcher::find@65 (line 758)
                                          0x00007f81284fe865:   mov    %esi,%r10d
....................................................................................................
  70.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 5, compile id 715 

 <region is too big to display, has 2077 lines, but threshold is 1000>
....................................................................................................
  15.29%  <total for region 2>

....[Hottest Regions]...............................................................................
  70.67%           c2, level 4  java.util.regex.Matcher::find, version 2, compile id 687 
  15.29%           c2, level 4  java.util.regex.Pattern::split, version 5, compile id 715 
   5.08%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.95%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 688 
   1.84%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.54%                kernel  [unknown] 
   0.48%           c2, level 4  java.util.ArrayList::grow, version 2, compile id 733 
   0.32%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   1.80%  <...other 302 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.67%           c2, level 4  java.util.regex.Matcher::find, version 2, compile id 687 
  15.29%           c2, level 4  java.util.regex.Pattern::split, version 5, compile id 715 
   5.08%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.95%           c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 688 
   2.68%                kernel  [unknown] 
   1.84%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.48%           c2, level 4  java.util.ArrayList::grow, version 2, compile id 733 
   0.09%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%             libjvm.so  ElfSymbolTable::lookup 
   0.05%           c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 758 
   0.04%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceClassLoaderKlass, narrowOop> 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.02%           c2, level 4  java.util.regex.Pattern::atom, version 2, compile id 762 
   0.02%             libc.so.6  __memset_avx2_unaligned_erms 
   0.02%             libjvm.so  HeapRegionManager::par_iterate 
   0.02%             libjvm.so  G1ParScanThreadState::steal_and_trim_queue 
   0.02%             libjvm.so  G1BarrierSet::invalidate 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%                [vdso]  [unknown] 
   0.57%  <...other 155 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.50%           c2, level 4
   6.92%          runtime stub
   2.68%                kernel
   0.69%             libjvm.so
   0.13%             libc.so.6
   0.03%           interpreter
   0.02%                [vdso]
   0.01%        hsdis-amd64.so
   0.01%                      
   0.01%  ld-linux-x86-64.so.2
   0.00%         perf-5761.map
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:08:10

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

Benchmark                                      (regexp)  Mode  Cnt    Score     Error  Units
StringPatternSplitBenchmark.pattern_split             _  avgt    5  656.774 ± 139.036  us/op
StringPatternSplitBenchmark.pattern_split:asm         _  avgt           NaN              ---
StringPatternSplitBenchmark.pattern_split            __  avgt    5  471.522 ±   5.428  us/op
StringPatternSplitBenchmark.pattern_split:asm        __  avgt           NaN              ---
StringPatternSplitBenchmark.string_split              _  avgt    5  170.414 ±   3.271  us/op
StringPatternSplitBenchmark.string_split:asm          _  avgt           NaN              ---
StringPatternSplitBenchmark.string_split             __  avgt    5  477.724 ±  15.303  us/op
StringPatternSplitBenchmark.string_split:asm         __  avgt           NaN              ---
