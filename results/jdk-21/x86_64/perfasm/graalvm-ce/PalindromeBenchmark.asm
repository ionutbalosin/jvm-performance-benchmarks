# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.430 ms/op
# Warmup Iteration   2: 10.909 ms/op
# Warmup Iteration   3: 10.839 ms/op
# Warmup Iteration   4: 10.839 ms/op
# Warmup Iteration   5: 10.882 ms/op
Iteration   1: 10.875 ms/op
Iteration   2: 10.857 ms/op
Iteration   3: 10.838 ms/op
Iteration   4: 10.867 ms/op
Iteration   5: 10.829 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional":
  10.853 ±(99.9%) 0.074 ms/op [Average]
  (min, avg, max) = (10.829, 10.853, 10.875), stdev = 0.019
  CI (99.9%): [10.779, 10.928] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional:asm":
PrintAssembly processed: 342106 total address lines.
Perf output processed (skipped 62.340 seconds):
 Column 1: cycles (52055 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f59600846b0::test, version 3, compile id 1066 

                 # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
                 #           [sp+0x20]  (sp of caller)
                 0x00007f59db252060:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                 0x00007f59db252064:   movabs $0x7f595f000000,%r12
                 0x00007f59db25206e:   add    %r12,%r10
                 0x00007f59db252071:   xor    %r12,%r12
                 0x00007f59db252074:   cmp    %r10,%rax
                 0x00007f59db252077:   jne    0x00007f59dac2f080           ;   {runtime_call ic_miss_stub}
                 0x00007f59db25207d:   data16 xchg %ax,%ax
               [Verified Entry Point]
   6.19%         0x00007f59db252080:   mov    %eax,-0x14000(%rsp)
   4.98%         0x00007f59db252087:   sub    $0x18,%rsp
                 0x00007f59db25208b:   nop
                 0x00007f59db25208c:   cmpl   $0x1,0x20(%r15)
                 0x00007f59db252094:   jne    0x00007f59db252233
   0.42%         0x00007f59db25209a:   mov    %rbp,0x10(%rsp)
                 0x00007f59db25209f:   nop
                 0x00007f59db2520a0:   test   %rdx,%rdx
          ╭      0x00007f59db2520a3:   je     0x00007f59db252171
          │      0x00007f59db2520a9:   mov    0x8(%rdx),%ecx
   0.44%  │      0x00007f59db2520ac:   movabs $0x7f595f000000,%rax
          │      0x00007f59db2520b6:   lea    (%rax,%rcx,1),%rcx           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@1
   0.01%  │   ↗  0x00007f59db2520ba:   nopw   0x0(%rax,%rax,1)
          │   │  0x00007f59db2520c0:   test   %rdx,%rdx
          │╭  │  0x00007f59db2520c3:   je     0x00007f59db2520dc
   0.39%  ││  │  0x00007f59db2520c9:   movabs $0x7f595f025c88,%rax         ;   {metadata(&apos;java/lang/Integer&apos;)}
          ││  │  0x00007f59db2520d3:   cmp    %rcx,%rax
          ││  │  0x00007f59db2520d6:   jne    0x00007f59db2521bf           ; ImmutableOopMap {rdx=Oop }
          ││  │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@0
   0.00%  │↘  │  0x00007f59db2520dc:   mov    0xc(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f59db25225a
          │   │  0x00007f59db2520e0:   test   $0xffffff00,%r10d
          │ ╭ │  0x00007f59db2520e7:   jne    0x00007f59db25217d
   0.34%  │ │ │  0x00007f59db2520ed:   movabs $0x7ffc03748,%rcx            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc03748})}
          │ │ │  0x00007f59db2520f7:   mov    0x8(%rcx),%eax
          │ │ │  0x00007f59db2520fa:   movabs $0x7f595f000000,%rsi
   0.00%  │ │ │  0x00007f59db252104:   lea    (%rsi,%rax,1),%rax
   0.37%  │ │ │  0x00007f59db252108:   cmp    -0xcf(%rip),%rax        # 0x00007f59db252040
          │ │ │                                                            ;   {section_word}
          │ │╭│  0x00007f59db25210f:   je     0x00007f59db25212b
   0.00%  │ │││  0x00007f59db252115:   cmp    -0xd4(%rip),%rax        # 0x00007f59db252048
          │ │││                                                            ;   {section_word}
          │ │││  0x00007f59db25211c:   nopl   0x0(%rax)
          │ │││  0x00007f59db252120:   je     0x00007f59db25219d
          │ │││  0x00007f59db252126:   jmp    0x00007f59db252221
   0.37%  │ │↘│  0x00007f59db25212b:   cmp    $0x100,%r10w
          │ │ │  0x00007f59db252131:   jae    0x00007f59db2521f6
   0.45%  │ │ │  0x00007f59db252137:   movabs $0x7ffc03758,%rcx            ;   {oop([I{0x00000007ffc03758})}
   0.00%  │ │ │  0x00007f59db252141:   movzwl %r10w,%eax                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          │ │ │                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │ │ │                                                            ; - java.lang.Character::getType@5 (line 11557)
          │ │ │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@7
   0.26%  │ │ │  0x00007f59db252145:   mov    $0x1f,%esi
   0.04%  │ │ │  0x00007f59db25214a:   and    0x10(%rcx,%rax,4),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
          │ │ │                                                            ; - java.lang.Character::getType@5 (line 11557)
          │ │ │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@7
   2.27%  │ │ │  0x00007f59db25214e:   mov    $0x23e,%eax
          │ │ │  0x00007f59db252153:   mov    %esi,%ecx
          │ │ │  0x00007f59db252155:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@7
   0.86%  │ │ │  0x00007f59db252157:   and    $0x1,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.Character::isLetterOrDigit@9 (line 10300)
          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@7
   0.20%  │ │ │  0x00007f59db25215a:   mov    0x10(%rsp),%rbp
   0.00%  │ │ │  0x00007f59db25215f:   add    $0x18,%rsp
          │ │ │  0x00007f59db252163:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │ │ │  0x00007f59db25216a:   ja     0x00007f59db252246
   0.16%  │ │ │  0x00007f59db252170:   ret    
          ↘ │ │  0x00007f59db252171:   mov    $0x0,%rcx
            │ ╰  0x00007f59db252178:   jmp    0x00007f59db2520ba           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@1
            ↘    0x00007f59db25217d:   mov    %r10d,%esi
                 0x00007f59db252180:   shr    $0x10,%esi                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.CharacterData::of@14 (line 81)
                                                                           ; - java.lang.Character::getType@1 (line 11557)
                                                                           ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f59600846b0::test@7
                 0x00007f59db252183:   test   %esi,%esi
....................................................................................................
  17.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1082 

               # parm0:    rdx       = int
               #           [sp+0x20]  (sp of caller)
               0x00007f59db253080:   mov    0x8(%rsi),%r10d
               0x00007f59db253084:   movabs $0x7f595f000000,%r12
               0x00007f59db25308e:   add    %r12,%r10
               0x00007f59db253091:   xor    %r12,%r12
               0x00007f59db253094:   cmp    %r10,%rax
               0x00007f59db253097:   jne    0x00007f59dac2f080           ;   {runtime_call ic_miss_stub}
               0x00007f59db25309d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   5.30%       0x00007f59db2530a0:   mov    %eax,-0x14000(%rsp)
   5.09%       0x00007f59db2530a7:   sub    $0x18,%rsp
               0x00007f59db2530ab:   nop
               0x00007f59db2530ac:   cmpl   $0x0,0x20(%r15)
               0x00007f59db2530b4:   jne    0x00007f59db253157
   0.42%       0x00007f59db2530ba:   mov    %rbp,0x10(%rsp)
   0.35%       0x00007f59db2530bf:   nop
               0x00007f59db2530c0:   cmp    $0x41,%edx
          ╭    0x00007f59db2530c3:   jl     0x00007f59db2530f4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
   0.16%  │    0x00007f59db2530c9:   mov    %edx,%r10d
   0.03%  │    0x00007f59db2530cc:   or     $0x20,%r10d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
   0.40%  │    0x00007f59db2530d0:   cmp    $0x7b,%r10d
          │╭   0x00007f59db2530d4:   jge    0x00007f59db25310e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
   0.02%  ││   0x00007f59db2530da:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
          ││   0x00007f59db2530dd:   mov    0x10(%rsp),%rbp
   1.11%  ││   0x00007f59db2530e2:   add    $0x18,%rsp
          ││   0x00007f59db2530e6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││   0x00007f59db2530ed:   ja     0x00007f59db253167
   0.05%  ││   0x00007f59db2530f3:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
   0.37%  ↘│   0x00007f59db2530f4:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@7 (line 164)
   0.06%   │   0x00007f59db2530f6:   mov    0x10(%rsp),%rbp
   0.76%   │   0x00007f59db2530fb:   add    $0x18,%rsp
           │   0x00007f59db2530ff:   nop
           │   0x00007f59db253100:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │   0x00007f59db253107:   ja     0x00007f59db25317b
   0.08%   │   0x00007f59db25310d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
   0.00%   ↘   0x00007f59db25310e:   cmp    $0xe0,%r10d
            ╭  0x00007f59db253115:   jge    0x00007f59db253134           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
            │  0x00007f59db25311b:   mov    %edx,%eax
            │  0x00007f59db25311d:   mov    0x10(%rsp),%rbp
   0.00%    │  0x00007f59db253122:   add    $0x18,%rsp
            │  0x00007f59db253126:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f59db25312d:   ja     0x00007f59db25318f
            │  0x00007f59db253133:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@43 (line 172)
            ↘  0x00007f59db253134:   movl   $0xffffffed,0x484(%r15)      ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
               0x00007f59db25313f:   movq   $0x14,0x490(%r15)
               0x00007f59db25314a:   call   0x00007f59dac3517a           ; ImmutableOopMap {}
                                                                         ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.lang.CharacterDataLatin1::toLowerCase@0 (line 163)
....................................................................................................
  14.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.lang.StringLatin1$CharsSpliterator::forEachRemaining, version 4, compile id 1111 

              0x00007f59db26175f:   nop
              0x00007f59db261760:   cmp    0x450(%r15),%rsp             ;   {poll_return}
              0x00007f59db261767:   ja     0x00007f59db2618cc
              0x00007f59db26176d:   ret                                 ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@68 (line 807)
              0x00007f59db26176e:   mov    %r11d,%r10d
          ╭   0x00007f59db261771:   jmp    0x00007f59db261813           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@49 (line 807)
          │   0x00007f59db261776:   data16 nopw 0x0(%rax,%rax,1)        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@52 (line 807)
   0.31%  │↗  0x00007f59db261780:   mov    0x10(%rdx),%esi              ; ImmutableOopMap {rdx=Oop r11=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.lang.StringLatin1$CharsSpliterator::forEachRemaining@49 (line 807)
   0.03%  ││  0x00007f59db261783:   mov    0x34(,%rsi,8),%esi           ; implicit exception: dispatches to 0x00007f59db26194d
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.lang.StringLatin1$CharsSpliterator::forEachRemaining@49 (line 807)
   1.47%  ││  0x00007f59db26178a:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r11=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
   1.87%  ││  0x00007f59db261791:   mov    0xc(%rdx),%ecx               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.lang.StringLatin1$CharsSpliterator::forEachRemaining@49 (line 807)
          ││  0x00007f59db261794:   test   %eax,0x0(,%rcx,8)            ; implicit exception: deoptimizes
          ││                                                            ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=NarrowOop r11=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
          ││  0x00007f59db26179b:   shl    $0x3,%rsi                    ;*getfield val$mapper {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@8 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
   0.35%  ││  0x00007f59db26179f:   movzbl 0x10(%r10,%r11,8),%ebx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@56 (line 807)
   0.01%  ││  0x00007f59db2617a5:   shl    $0x3,%rcx                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@1 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││  0x00007f59db2617a9:   mov    %ebx,%edx                    ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││  0x00007f59db2617ab:   mov    %r10d,0x2c(%rsp)
   0.26%  ││  0x00007f59db2617b0:   mov    %rcx,0x8(%rsp)
          ││  0x00007f59db2617b5:   nop
          ││  0x00007f59db2617b6:   data16 xchg %ax,%ax
          ││  0x00007f59db2617b9:   movabs $0x7f5960084498,%rax
   0.30%  ││  0x00007f59db2617c3:   call   0x00007f59db2527a0           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
          ││                                                            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=1}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││                                                            ;   {virtual_call}
          ││  0x00007f59db2617c8:   nopl   0xa000338(%rax,%rax,1)       ;   {other}
          ││  0x00007f59db2617d0:   mov    0x8(%rsp),%rsi
   3.12%  ││  0x00007f59db2617d5:   mov    %rax,%rdx                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││  0x00007f59db2617d8:   nop
          ││  0x00007f59db2617d9:   movabs $0x7f595f2270b0,%rax
          ││  0x00007f59db2617e3:   call   0x00007f59db250220           ; ImmutableOopMap {[16]=Oop [28]=NarrowOop [32]=Oop }
          ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││                                                            ;   {virtual_call}
   0.34%  ││  0x00007f59db2617e8:   nopl   0xb000358(%rax,%rax,1)       ;   {other}
          ││  0x00007f59db2617f0:   mov    0x2c(%rsp),%r10d
   2.87%  ││  0x00007f59db2617f5:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@62 (line 807)
   0.30%  ││  0x00007f59db2617f8:   mov    0x34(%rsp),%r8d
          ││  0x00007f59db2617fd:   data16 xchg %ax,%ax
          ││  0x00007f59db261800:   cmp    %r10d,%r8d
          ││  0x00007f59db261803:   jle    0x00007f59db261756           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@68 (line 807)
   0.33%  ││  0x00007f59db261809:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[16]=Oop [28]=NarrowOop [32]=Oop }
          ││                                                            ;*return {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.stream.IntPipeline$1$1::accept@22 (line 181)
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││  0x00007f59db261810:   test   %eax,(%r11)                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@49 (line 807)
          ││                                                            ;   {poll}
   1.22%  ↘│  0x00007f59db261813:   mov    0x30(%rsp),%r9d
           │  0x00007f59db261818:   mov    0x1c(%rsp),%r11d
           │  0x00007f59db26181d:   mov    0x20(%rsp),%rdx
           │  0x00007f59db261822:   cmp    %r10d,%r9d
           ╰  0x00007f59db261825:   ja     0x00007f59db261780
              0x00007f59db26182b:   jmp    0x00007f59db261867           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@52 (line 807)
              0x00007f59db261830:   mov    $0x294,%r11
              0x00007f59db261837:   mov    $0xffffffed,%r10d
....................................................................................................
  12.79%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1060 

          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007f595f227558} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReferencePipeline$2$1&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x30]  (sp of caller)
   0.39%    0x00007f59db250220:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   1.19%    0x00007f59db250224:   movabs $0x7f595f000000,%r12
            0x00007f59db25022e:   add    %r12,%r10
   0.38%    0x00007f59db250231:   xor    %r12,%r12
            0x00007f59db250234:   cmp    %r10,%rax
            0x00007f59db250237:   jne    0x00007f59dac2f080           ;   {runtime_call ic_miss_stub}
   0.49%    0x00007f59db25023d:   data16 xchg %ax,%ax
          [Verified Entry Point]
            0x00007f59db250240:   mov    %eax,-0x14000(%rsp)
   0.05%    0x00007f59db250247:   sub    $0x28,%rsp
   0.36%    0x00007f59db25024b:   nop
            0x00007f59db25024c:   cmpl   $0x1,0x20(%r15)
            0x00007f59db250254:   jne    0x00007f59db2507c4
   0.05%    0x00007f59db25025a:   mov    %rbp,0x20(%rsp)
   0.80%    0x00007f59db25025f:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                      ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@0 (line 178)
   0.02%    0x00007f59db250263:   mov    0x34(,%r10,8),%r10d          ; implicit exception: dispatches to 0x00007f59db2507e8
   1.27%    0x00007f59db25026b:   test   %r10d,%r10d
            0x00007f59db25026e:   je     0x00007f59db25079e           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
   0.34%    0x00007f59db250274:   mov    %rsi,0x10(%rsp)
   0.05%    0x00007f59db250279:   shl    $0x3,%r10                    ;*getfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@4 (line 178)
   0.20%    0x00007f59db25027d:   mov    %r10,%rsi                    ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
            0x00007f59db250280:   mov    %rdx,%r10
   0.14%    0x00007f59db250283:   mov    %r10,0x8(%rsp)
   0.05%    0x00007f59db250288:   nop
   0.19%    0x00007f59db250289:   movabs $0x7f59600846b0,%rax
            0x00007f59db250293:   call   0x00007f59d38c2ce0           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                                                                      ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ;   {virtual_call}
   0.26%    0x00007f59db250298:   nopl   0x1000288(%rax,%rax,1)       ;   {other}
   0.01%    0x00007f59db2502a0:   test   %eax,%eax
            0x00007f59db2502a2:   je     0x00007f59db250368           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   0.08%    0x00007f59db2502a8:   mov    0x8(%rsp),%r10
   1.95%    0x00007f59db2502ad:   mov    0x10(%rsp),%rsi
            0x00007f59db2502b2:   mov    0xc(%rsi),%r11d              ; ImmutableOopMap {rsi=Oop r10=Oop r11=NarrowOop }
                                                                      ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
   1.03%    0x00007f59db2502b6:   mov    0x8(,%r11,8),%edx            ; implicit exception: dispatches to 0x00007f59db25080d
   1.38%    0x00007f59db2502be:   movabs $0x7f595f000000,%rcx
            0x00007f59db2502c8:   lea    (%rcx,%rdx,1),%rdx
   0.27%    0x00007f59db2502cc:   mov    %r11d,%r8d
            0x00007f59db2502cf:   shl    $0x3,%r8                     ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
            0x00007f59db2502d3:   mov    %r10,%r9
            0x00007f59db2502d6:   shr    $0x3,%r9
   0.30%    0x00007f59db2502da:   cmp    -0x101(%rip),%rdx        # 0x00007f59db2501e0
                                                                      ;   {section_word}
            0x00007f59db2502e1:   je     0x00007f59db250325
            0x00007f59db2502e7:   cmp    -0x106(%rip),%rdx        # 0x00007f59db2501e8
                                                                      ;   {section_word}
            0x00007f59db2502ee:   je     0x00007f59db25037f
            0x00007f59db2502f4:   cmp    -0x10b(%rip),%rdx        # 0x00007f59db2501f0
                                                                      ;   {section_word}
            0x00007f59db2502fb:   nopl   0x0(%rax,%rax,1)
            0x00007f59db250300:   je     0x00007f59db250389
            0x00007f59db250306:   cmp    -0x115(%rip),%rdx        # 0x00007f59db2501f8
....................................................................................................
  11.26%  <total for region 4>

....[Hottest Regions]...............................................................................
  17.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f59600846b0::test, version 3, compile id 1066 
  14.20%       jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1082 
  12.79%       jvmci, level 4  java.lang.StringLatin1$CharsSpliterator::forEachRemaining, version 4, compile id 1111 
  11.26%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1060 
   6.38%                       <unknown> 
   5.07%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1060 
   4.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f5960084498::apply, version 3, compile id 1067 
   4.28%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1068 
   4.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f5960084b10::accept, version 3, compile id 1069 
   3.38%       jvmci, level 4  java.lang.StringUTF16$CharsSpliterator::forEachRemaining, version 4, compile id 1185 
   3.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f5960084498::apply, version 3, compile id 1067 
   2.74%                       <unknown> 
   1.29%       jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1130 
   0.90%       jvmci, level 4  java.util.stream.IntPipeline::forEachWithCancel, version 4, compile id 1166 
   0.79%       jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1049 
   0.55%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 1369 
   0.52%               kernel  [unknown] 
   0.35%               kernel  [unknown] 
   0.25%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.23%               kernel  [unknown] 
   5.02%  <...other 1144 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  17.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f59600846b0::test, version 3, compile id 1066 
  16.32%       jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1060 
  14.20%       jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1082 
  12.80%       jvmci, level 4  java.lang.StringLatin1$CharsSpliterator::forEachRemaining, version 4, compile id 1111 
   9.41%                       <unknown> 
   8.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f5960084498::apply, version 3, compile id 1067 
   4.37%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1068 
   4.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f5960084b10::accept, version 3, compile id 1069 
   3.38%       jvmci, level 4  java.lang.StringUTF16$CharsSpliterator::forEachRemaining, version 4, compile id 1185 
   3.05%               kernel  [unknown] 
   1.35%       jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1130 
   0.90%       jvmci, level 4  java.util.stream.IntPipeline::forEachWithCancel, version 4, compile id 1166 
   0.81%       jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1049 
   0.68%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 1369 
   0.25%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.13%       jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1449 
   0.09%       jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1018 
   0.07%       jvmci, level 4  java.lang.String::&lt;init&gt;, version 3, compile id 1305 
   0.06%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.04%         libc-2.31.so  __memset_avx2_erms 
   2.08%  <...other 552 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  85.36%       jvmci, level 4
   9.41%                     
   3.05%               kernel
   1.09%  libjvmcicompiler.so
   0.41%            libjvm.so
   0.25%         libc-2.31.so
   0.25%         runtime stub
   0.06%   libpthread-2.31.so
   0.03%       hsdis-amd64.so
   0.02%           ld-2.31.so
   0.02%           libjava.so
   0.02%          c1, level 3
   0.02%     Unknown, level 0
   0.01%          interpreter
   0.01%     perf-2118466.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative

# Run progress: 25.00% complete, ETA 00:05:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.913 ms/op
# Warmup Iteration   2: 3.181 ms/op
# Warmup Iteration   3: 3.165 ms/op
# Warmup Iteration   4: 3.159 ms/op
# Warmup Iteration   5: 3.159 ms/op
Iteration   1: 3.158 ms/op
Iteration   2: 3.159 ms/op
Iteration   3: 3.161 ms/op
Iteration   4: 3.161 ms/op
Iteration   5: 3.161 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative":
  3.160 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (3.158, 3.160, 3.161), stdev = 0.001
  CI (99.9%): [3.155, 3.166] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative:asm":
PrintAssembly processed: 319690 total address lines.
Perf output processed (skipped 62.016 seconds):
 Column 1: cycles (51223 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome, version 4, compile id 1120 

                   0x00007f77ab259b9a:   mov    %r11,0x8(%rsp)
                   0x00007f77ab259b9f:   movabs $0x7fec6e7d8,%r9             ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007fec6e7d8})}
                   0x00007f77ab259ba9:   mov    %r9,(%rsp)
                   0x00007f77ab259bad:   mov    %r8d,%ebx
                   0x00007f77ab259bb0:   mov    %ecx,%r8d
          ╭        0x00007f77ab259bb3:   jmp    0x00007f77ab259db1           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
          │        0x00007f77ab259bb8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@2 (line 38)
          │  ↗     0x00007f77ab259bc0:   mov    %ebx,0x34(%rsp)
   0.11%  │  │     0x00007f77ab259bc4:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop r9=Oop r10=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop }
          │  │                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
   0.88%  │  │     0x00007f77ab259bc7:   mov    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f77ab25a4b4
   2.45%  │  │     0x00007f77ab259bce:   cmpb   $0x0,0x10(%rdx)
          │  │     0x00007f77ab259bd2:   jne    0x00007f77ab25a0ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.String::charAt@4 (line 1554)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │  │     0x00007f77ab259bd8:   nopl   0x0(%rax,%rax,1)
          │  │     0x00007f77ab259be0:   cmp    %r8d,%esi
          │  │     0x00007f77ab259be3:   jbe    0x00007f77ab25a40b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.StringLatin1::charAt@8 (line 47)
          │  │                                                               ; - java.lang.String::charAt@12 (line 1555)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
   0.39%  │  │     0x00007f77ab259be9:   movzbl 0x10(%r8,%rcx,8),%ecx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
          │  │                                                               ; - java.lang.String::charAt@12 (line 1555)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
   0.12%  │  │     0x00007f77ab259bef:   test   $0xffffff00,%ecx
          │  │     0x00007f77ab259bf5:   jne    0x00007f77ab25a118           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.CharacterData::of@4 (line 78)
          │  │                                                               ; - java.lang.Character::getType@1 (line 11557)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
   0.41%  │  │     0x00007f77ab259bfb:   mov    %r11,%rsi
          │  │     0x00007f77ab259bfe:   mov    0x8(%rsi),%edi
   0.01%  │  │     0x00007f77ab259c01:   movabs $0x7f772f000000,%rax
   0.10%  │  │     0x00007f77ab259c0b:   lea    (%rax,%rdi,1),%rdi
   0.39%  │  │     0x00007f77ab259c0f:   cmp    -0xf6(%rip),%rdi        # 0x00007f77ab259b20
          │  │                                                               ;   {section_word}
          │╭ │     0x00007f77ab259c16:   je     0x00007f77ab259c2e
   0.00%  ││ │     0x00007f77ab259c1c:   cmp    -0xfb(%rip),%rdi        # 0x00007f77ab259b28
          ││ │                                                               ;   {section_word}
          ││ │     0x00007f77ab259c23:   je     0x00007f77ab25a16d
          ││ │     0x00007f77ab259c29:   jmp    0x00007f77ab25a39a
          │↘ │     0x00007f77ab259c2e:   cmp    $0x100,%ecx
          │  │     0x00007f77ab259c34:   jae    0x00007f77ab25a349           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          │  │                                                               ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │  │                                                               ; - java.lang.Character::getType@5 (line 11557)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
   0.42%  │  │     0x00007f77ab259c3a:   mov    $0x1f,%esi
   0.02%  │  │     0x00007f77ab259c3f:   and    0x10(%r10,%rcx,4),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
          │  │                                                               ; - java.lang.Character::getType@5 (line 11557)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
   1.40%  │  │     0x00007f77ab259c44:   mov    $0x23e,%edi
          │  │     0x00007f77ab259c49:   mov    %esi,%ecx
          │  │     0x00007f77ab259c4b:   shr    %cl,%edi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
   1.44%  │  │     0x00007f77ab259c4d:   test   $0x1,%edi
          │  │     0x00007f77ab259c53:   je     0x00007f77ab259f85           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
   0.36%  │  │     0x00007f77ab259c59:   mov    %r8d,0x2c(%rsp)
   0.55%  │  │     0x00007f77ab259c5e:   xchg   %ax,%ax
          │  │     0x00007f77ab259c60:   cmp    %r8d,%ebx
          │ ╭│     0x00007f77ab259c63:   jg     0x00007f77ab259dbf           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@29 (line 42)
   0.52%  │ ││ ↗   0x00007f77ab259c69:   cmp    0x2c(%rsp),%ebx
          │ ││ │   0x00007f77ab259c6d:   jle    0x00007f77ab25a1f2           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@51 (line 45)
   0.61%  │ ││ │   0x00007f77ab259c73:   mov    0x10(%rsp),%rdx
   0.38%  │ ││ │   0x00007f77ab259c78:   mov    %ebx,0x28(%rsp)
   0.00%  │ ││ │   0x00007f77ab259c7c:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [0]=Oop [8]=Oop [16]=Oop }
          │ ││ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@49 (line 45)
   0.21%  │ ││ │   0x00007f77ab259c7f:   mov    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f77ab25a4d7
   0.50%  │ ││ │   0x00007f77ab259c86:   cmpb   $0x0,0x10(%rdx)
   0.30%  │ ││ │   0x00007f77ab259c8a:   jne    0x00007f77ab25a0fc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.String::charAt@4 (line 1554)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
   0.01%  │ ││ │   0x00007f77ab259c90:   cmp    0x2c(%rsp),%eax
          │ ││ │   0x00007f77ab259c94:   jbe    0x00007f77ab25a275           ;* unwind (locked if synchronized)
          │ ││ │                                                             ; - jdk.internal.util.Preconditions::checkIndex@-3
          │ ││ │                                                             ; - java.lang.String::checkIndex@5 (line 4828)
          │ ││ │                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
          │ ││ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
   0.13%  │ ││ │   0x00007f77ab259c9a:   movzbl 0x10(%r8,%rsi,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
          │ ││ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
   0.08%  │ ││ │   0x00007f77ab259ca0:   test   $0xffffff00,%esi
          │ ││ │   0x00007f77ab259ca6:   jne    0x00007f77ab25a149           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.CharacterData::of@4 (line 78)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
   0.33%  │ ││ │   0x00007f77ab259cac:   mov    0x8(%rsp),%r11
   0.00%  │ ││ │   0x00007f77ab259cb1:   mov    0x8(%r11),%eax
   0.21%  │ ││ │   0x00007f77ab259cb5:   movabs $0x7f772f000000,%r10
   0.08%  │ ││ │   0x00007f77ab259cbf:   lea    (%r10,%rax,1),%rax
   0.34%  │ ││ │   0x00007f77ab259cc3:   mov    0x220(%rax),%rax
   1.32%  │ ││ │   0x00007f77ab259cca:   mov    0x40(%rax),%r10
   1.82%  │ ││ │   0x00007f77ab259cce:   mov    %esi,%r9d
          │ ││ │   0x00007f77ab259cd1:   mov    %r11,%rsi
   0.00%  │ ││ │   0x00007f77ab259cd4:   mov    %r9d,%edx
          │ ││ │   0x00007f77ab259cd7:   mov    %rax,%rbx
   0.47%  │ ││ │   0x00007f77ab259cda:   mov    %r10,%rax                    ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
   0.00%  │ ││ │   0x00007f77ab259cdd:   mov    %r9d,0x24(%rsp)
   0.00%  │ ││ │   0x00007f77ab259ce2:   call   *%rax                        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop }
          │ ││ │                                                             ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
   2.42%  │ ││ │   0x00007f77ab259ce4:   nopl   0x0(%rax,%rax,1)
          │ ││ │   0x00007f77ab259cec:   mov    0x10(%rsp),%rdx
   1.01%  │ ││ │   0x00007f77ab259cf1:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [0]=Oop [8]=Oop [16]=Oop }
          │ ││ │                                                             ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
   2.03%  │ ││ │   0x00007f77ab259cf4:   mov    0xc(,%rsi,8),%ebx            ; implicit exception: dispatches to 0x00007f77ab25a4fa
   2.47%  │ ││ │   0x00007f77ab259cfb:   nopl   0x0(%rax,%rax,1)
          │ ││ │   0x00007f77ab259d00:   cmpb   $0x0,0x10(%rdx)
          │ ││ │   0x00007f77ab259d04:   jne    0x00007f77ab25a0dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.String::charAt@4 (line 1554)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │ ││ │   0x00007f77ab259d0a:   cmp    0x28(%rsp),%ebx
          │ ││ │   0x00007f77ab259d0e:   jbe    0x00007f77ab25a24e           ;* unwind (locked if synchronized)
          │ ││ │                                                             ; - jdk.internal.util.Preconditions::checkIndex@-3
          │ ││ │                                                             ; - java.lang.String::checkIndex@5 (line 4828)
          │ ││ │                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
          │ ││ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
   0.37%  │ ││ │   0x00007f77ab259d14:   mov    0x28(%rsp),%ebx
          │ ││ │   0x00007f77ab259d18:   movzbl 0x10(%rbx,%rsi,8),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
          │ ││ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │ ││ │                                                             ;   {no_reloc}
          │ ││ │   0x00007f77ab259d1d:   mov    %ebx,%r10d
   0.10%  │ ││ │   0x00007f77ab259d20:   test   $0xffffff00,%esi
          │ ││ │   0x00007f77ab259d26:   jne    0x00007f77ab25a159           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.CharacterData::of@4 (line 78)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
   0.46%  │ ││ │   0x00007f77ab259d2c:   mov    0x8(%rsp),%r11
          │ ││ │   0x00007f77ab259d31:   mov    0x8(%r11),%r10d
          │ ││ │   0x00007f77ab259d35:   movabs $0x7f772f000000,%r8
   0.12%  │ ││ │   0x00007f77ab259d3f:   lea    (%r8,%r10,1),%r10
   0.36%  │ ││ │   0x00007f77ab259d43:   mov    0x220(%r10),%r10
   0.67%  │ ││ │   0x00007f77ab259d4a:   mov    0x40(%r10),%r8               ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
   1.90%  │ ││ │   0x00007f77ab259d4e:   movzwl %ax,%r9d                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │ ││ │   0x00007f77ab259d52:   mov    %esi,%ecx
          │ ││ │   0x00007f77ab259d54:   mov    %r11,%rsi
          │ ││ │   0x00007f77ab259d57:   mov    %ecx,%edx
   0.50%  │ ││ │   0x00007f77ab259d59:   mov    %r10,%rbx
          │ ││ │   0x00007f77ab259d5c:   mov    %eax,0x1c(%rsp)
          │ ││ │   0x00007f77ab259d60:   mov    %r8,%rax                     ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │ ││ │   0x00007f77ab259d63:   mov    %r9d,0x18(%rsp)
   0.49%  │ ││ │   0x00007f77ab259d68:   mov    %ecx,0x20(%rsp)
          │ ││ │   0x00007f77ab259d6c:   call   *%rax                        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop }
          │ ││ │                                                             ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ ││ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
   2.46%  │ ││ │   0x00007f77ab259d6e:   nopl   0x0(%rax,%rax,1)
          │ ││ │   0x00007f77ab259d76:   data16 nopw 0x0(%rax,%rax,1)
          │ ││ │   0x00007f77ab259d80:   cmp    0x1c(%rsp),%ax
          │ ││ │   0x00007f77ab259d85:   jne    0x00007f77ab25a22e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@72 (line 48)
   1.97%  │ ││ │   0x00007f77ab259d8b:   mov    0x28(%rsp),%ebx
          │ ││ │   0x00007f77ab259d8f:   dec    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@80 (line 52)
   0.55%  │ ││ │   0x00007f77ab259d91:   mov    0x2c(%rsp),%r8d
          │ ││ │   0x00007f77ab259d96:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@77 (line 51)
   0.35%  │ ││ │   0x00007f77ab259d99:   mov    (%rsp),%r9
          │ ││ │   0x00007f77ab259d9d:   mov    0x8(%rsp),%r11
   0.10%  │ ││ │   0x00007f77ab259da2:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
          │ ││ │   0x00007f77ab259dac:   mov    0x10(%rsp),%rdx              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
   0.30%  ↘ ││ │   0x00007f77ab259db1:   cmp    %r8d,%ebx
            │╰ │   0x00007f77ab259db4:   jg     0x00007f77ab259bc0
   0.00%    │  │   0x00007f77ab259dba:   jmp    0x00007f77ab25a20e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@2 (line 38)
   0.34%    ↘  │   0x00007f77ab259dbf:   mov    0x10(%rsp),%rdx
   0.01%       │   0x00007f77ab259dc4:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop [0]=Oop [8]=Oop [16]=Oop }
               │                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
               │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@27 (line 42)
   0.38%       │   0x00007f77ab259dc7:   mov    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f77ab25a51d
   1.00%       │   0x00007f77ab259dce:   cmpb   $0x0,0x10(%rdx)
   0.02%       │   0x00007f77ab259dd2:   jne    0x00007f77ab25a0c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.String::charAt@4 (line 1554)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
               │   0x00007f77ab259dd8:   cmp    %ebx,%esi
               │   0x00007f77ab259dda:   jbe    0x00007f77ab25a2ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
               │                                                             ; - java.lang.String::charAt@12 (line 1555)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
   0.39%       │   0x00007f77ab259de0:   movzbl 0x10(%rbx,%rcx,8),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
               │                                                             ; - java.lang.String::charAt@12 (line 1555)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
   0.10%       │   0x00007f77ab259de5:   test   $0xffffff00,%ecx
               │   0x00007f77ab259deb:   jne    0x00007f77ab25a138           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.CharacterData::of@4 (line 78)
               │                                                             ; - java.lang.Character::getType@1 (line 11557)
               │                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
               │                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
   0.35%       │   0x00007f77ab259df1:   mov    0x8(%rsp),%r11
               │   0x00007f77ab259df6:   mov    0x8(%r11),%esi
   0.16%       │   0x00007f77ab259dfa:   movabs $0x7f772f000000,%r10
   0.09%       │   0x00007f77ab259e04:   lea    (%r10,%rsi,1),%rsi
   0.41%       │   0x00007f77ab259e08:   cmp    -0x2ef(%rip),%rsi        # 0x00007f77ab259b20
               │                                                             ;   {section_word}
   0.36%      ╭│   0x00007f77ab259e0f:   je     0x00007f77ab259e2b
   0.00%      ││   0x00007f77ab259e15:   cmp    -0x2f4(%rip),%rsi        # 0x00007f77ab259b28
              ││                                                             ;   {section_word}
              ││   0x00007f77ab259e1c:   nopl   0x0(%rax)
              ││   0x00007f77ab259e20:   je     0x00007f77ab25a1b3
              ││   0x00007f77ab259e26:   jmp    0x00007f77ab25a3b1
   0.36%      ↘│   0x00007f77ab259e2b:   cmp    $0x100,%ecx
               │   0x00007f77ab259e31:   jae    0x00007f77ab25a416
   0.09%       │   0x00007f77ab259e37:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
   0.05%       │   0x00007f77ab259e41:   mov    $0x1f,%esi
               │   0x00007f77ab259e46:   and    0x10(%r10,%rcx,4),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
               │                                                             ; - java.lang.Character::getType@5 (line 11557)
               │                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
               │                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
   1.02%       │   0x00007f77ab259e4b:   mov    $0x23e,%r11d
               │   0x00007f77ab259e51:   mov    %esi,%ecx
   0.01%       │   0x00007f77ab259e53:   shr    %cl,%r11d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
               │                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
               │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
   1.16%       │   0x00007f77ab259e56:   data16 nopw 0x0(%rax,%rax,1)
   0.00%       │   0x00007f77ab259e60:   test   $0x1,%r11d
               ╰   0x00007f77ab259e67:   jne    0x00007f77ab259c69           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
   0.65%           0x00007f77ab259e6d:   dec    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@43 (line 43)
   0.41%           0x00007f77ab259e6f:   mov    (%rsp),%r9
   0.29%           0x00007f77ab259e73:   mov    0x8(%rsp),%r11
                   0x00007f77ab259e78:   jmp    0x00007f77ab259f0e           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@27 (line 42)
                   0x00007f77ab259e7d:   data16 xchg %ax,%ax                 ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@29 (line 42)
   0.12%           0x00007f77ab259e80:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop r9=Oop r10=Oop r11=Oop [0]=Oop [8]=Oop [16]=Oop }
                                                                             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@27 (line 42)
   0.16%           0x00007f77ab259e83:   mov    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f77ab25a540
   0.43%           0x00007f77ab259e8a:   cmpb   $0x0,0x10(%rdx)
   0.04%           0x00007f77ab259e8e:   jne    0x00007f77ab259f1c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.String::charAt@4 (line 1554)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
   0.04%           0x00007f77ab259e94:   cmp    %ebx,%esi
                   0x00007f77ab259e96:   jbe    0x00007f77ab25a371           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
                                                                             ; - java.lang.String::charAt@12 (line 1555)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
   0.05%           0x00007f77ab259e9c:   movzbl 0x10(%rbx,%rcx,8),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                             ; - java.lang.String::charAt@12 (line 1555)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
   0.07%           0x00007f77ab259ea1:   test   $0xffffff00,%ecx
                   0x00007f77ab259ea7:   jne    0x00007f77ab259f36           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.CharacterData::of@4 (line 78)
                                                                             ; - java.lang.Character::getType@1 (line 11557)
                                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
   0.10%           0x00007f77ab259ead:   mov    %r11,%rsi
   0.05%           0x00007f77ab259eb0:   mov    0x8(%rsi),%edi
   0.01%           0x00007f77ab259eb3:   movabs $0x7f772f000000,%rax
   0.07%           0x00007f77ab259ebd:   lea    (%rax,%rdi,1),%rdi
   0.09%           0x00007f77ab259ec1:   cmp    -0x3a8(%rip),%rdi        # 0x00007f77ab259b20
                                                                             ;   {section_word}
   0.07%        ╭  0x00007f77ab259ec8:   je     0x00007f77ab259ee0
                │  0x00007f77ab259ece:   cmp    -0x3ad(%rip),%rdi        # 0x00007f77ab259b28
                │                                                            ;   {section_word}
                │  0x00007f77ab259ed5:   je     0x00007f77ab259f3e
                │  0x00007f77ab259edb:   jmp    0x00007f77ab25a2c2
                ↘  0x00007f77ab259ee0:   cmp    $0x100,%ecx
                   0x00007f77ab259ee6:   jae    0x00007f77ab25a425           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
                                                                             ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
                                                                             ; - java.lang.Character::getType@5 (line 11557)
....................................................................................................
  43.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1081 

              # parm0:    rdx       = int
              #           [sp+0x20]  (sp of caller)
              0x00007f77ab250900:   mov    0x8(%rsi),%r10d
              0x00007f77ab250904:   movabs $0x7f772f000000,%r12
              0x00007f77ab25090e:   add    %r12,%r10
              0x00007f77ab250911:   xor    %r12,%r12
              0x00007f77ab250914:   cmp    %r10,%rax
              0x00007f77ab250917:   jne    0x00007f77aac2f080           ;   {runtime_call ic_miss_stub}
              0x00007f77ab25091d:   data16 xchg %ax,%ax
            [Verified Entry Point]
  13.71%      0x00007f77ab250920:   mov    %eax,-0x14000(%rsp)
  12.32%      0x00007f77ab250927:   sub    $0x18,%rsp
              0x00007f77ab25092b:   nop
              0x00007f77ab25092c:   cmpl   $0x0,0x20(%r15)
              0x00007f77ab250934:   jne    0x00007f77ab2509d7
   0.95%      0x00007f77ab25093a:   mov    %rbp,0x10(%rsp)
   0.96%      0x00007f77ab25093f:   nop
              0x00007f77ab250940:   cmp    $0x41,%edx
          ╭   0x00007f77ab250943:   jl     0x00007f77ab250974           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │   0x00007f77ab250949:   mov    %edx,%r10d
   0.00%  │   0x00007f77ab25094c:   or     $0x20,%r10d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
   0.93%  │   0x00007f77ab250950:   cmp    $0x7b,%r10d
          │╭  0x00007f77ab250954:   jge    0x00007f77ab25098e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
          ││  0x00007f77ab25095a:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
          ││  0x00007f77ab25095d:   mov    0x10(%rsp),%rbp
   3.81%  ││  0x00007f77ab250962:   add    $0x18,%rsp
          ││  0x00007f77ab250966:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f77ab25096d:   ja     0x00007f77ab2509e7
   0.00%  ││  0x00007f77ab250973:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          ↘│  0x00007f77ab250974:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@7 (line 164)
           │  0x00007f77ab250976:   mov    0x10(%rsp),%rbp
   0.01%   │  0x00007f77ab25097b:   add    $0x18,%rsp
           │  0x00007f77ab25097f:   nop
           │  0x00007f77ab250980:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │  0x00007f77ab250987:   ja     0x00007f77ab2509fb
           │  0x00007f77ab25098d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
           ↘  0x00007f77ab25098e:   cmp    $0xe0,%r10d
              0x00007f77ab250995:   jge    0x00007f77ab2509b4           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
              0x00007f77ab25099b:   mov    %edx,%eax
              0x00007f77ab25099d:   mov    0x10(%rsp),%rbp
....................................................................................................
  32.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  43.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome, version 4, compile id 1120 
  32.68%       jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1081 
   5.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome, version 4, compile id 1120 
   4.26%       jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1129 
   2.69%       jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1051 
   2.02%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1313 
   1.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome, version 4, compile id 1120 
   0.69%               kernel  [unknown] 
   0.62%               kernel  [unknown] 
   0.48%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.46%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1313 
   0.43%               kernel  [unknown] 
   0.37%               kernel  [unknown] 
   0.28%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1313 
   0.25%               kernel  [unknown] 
   0.23%               kernel  [unknown] 
   0.23%               kernel  [unknown] 
   0.22%       jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1069 
   0.12%       jvmci, level 4  java.lang.String::&lt;init&gt;, version 2, compile id 1315 
   0.12%       jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1389 
   3.43%  <...other 657 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome, version 4, compile id 1120 
  32.68%       jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1081 
   4.41%               kernel  [unknown] 
   4.33%       jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1129 
   2.80%       jvmci, level 4  java.lang.AbstractStringBuilder::append, version 3, compile id 1313 
   2.75%       jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1051 
   0.48%         runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.29%                       <unknown> 
   0.23%       jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1069 
   0.20%       jvmci, level 4  java.lang.String::&lt;init&gt;, version 2, compile id 1315 
   0.12%       jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1389 
   0.09%       jvmci, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 1085 
   0.09%         libc-2.31.so  __memset_avx2_erms 
   0.09%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.05%       jvmci, level 4  sun.nio.cs.UTF_8$Decoder::isMalformed3, version 2, compile id 1151 
   0.04%       jvmci, level 4  sun.nio.cs.StreamDecoder::read, version 3, compile id 1289 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 1400 
   0.03%       jvmci, level 4  java.io.BufferedReader$1::hasNext, version 3, compile id 1228 
   0.03%            libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.03%       jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 1366 
   0.80%  <...other 181 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.90%       jvmci, level 4
   4.41%               kernel
   0.49%         runtime stub
   0.39%            libjvm.so
   0.30%         libc-2.31.so
   0.29%                     
   0.07%   libpthread-2.31.so
   0.04%  libjvmcicompiler.so
   0.02%           libjava.so
   0.02%          interpreter
   0.02%     perf-2118539.map
   0.02%     Unknown, level 0
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive

# Run progress: 50.00% complete, ETA 00:03:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.431 ms/op
# Warmup Iteration   2: 3.737 ms/op
# Warmup Iteration   3: 3.738 ms/op
# Warmup Iteration   4: 3.720 ms/op
# Warmup Iteration   5: 3.729 ms/op
Iteration   1: 3.731 ms/op
Iteration   2: 3.728 ms/op
Iteration   3: 3.732 ms/op
Iteration   4: 3.730 ms/op
Iteration   5: 3.729 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive":
  3.730 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (3.728, 3.730, 3.732), stdev = 0.001
  CI (99.9%): [3.725, 3.735] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive:asm":
PrintAssembly processed: 323893 total address lines.
Perf output processed (skipped 62.428 seconds):
 Column 1: cycles (50950 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1077 

                             # parm2:    r8        = int
                             #           [sp+0x50]  (sp of caller)
                             0x00007f11ff2594e0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                             0x00007f11ff2594e4:   movabs $0x7f1183000000,%r12
                             0x00007f11ff2594ee:   add    %r12,%r10
                             0x00007f11ff2594f1:   xor    %r12,%r12
                             0x00007f11ff2594f4:   cmp    %r10,%rax
                             0x00007f11ff2594f7:   jne    0x00007f11fec2f080           ;   {runtime_call ic_miss_stub}
                             0x00007f11ff2594fd:   data16 xchg %ax,%ax
                           [Verified Entry Point]
   0.02%    ↗                0x00007f11ff259500:   mov    %eax,-0x14000(%rsp)
   1.52%    │                0x00007f11ff259507:   sub    $0x48,%rsp
            │                0x00007f11ff25950b:   nop
   0.02%    │                0x00007f11ff25950c:   cmpl   $0x1,0x20(%r15)
   0.01%    │                0x00007f11ff259514:   jne    0x00007f11ff259e2a
   0.42%    │                0x00007f11ff25951a:   mov    %rbp,0x40(%rsp)
   0.12%    │                0x00007f11ff25951f:   mov    %rsi,0x18(%rsp)
   1.37%    │                0x00007f11ff259524:   mov    %rdx,0x10(%rsp)
            │                0x00007f11ff259529:   mov    %r8d,0x34(%rsp)
   0.24%    │                0x00007f11ff25952e:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
            │                0x00007f11ff259538:   movabs $0x7ffc03748,%r11            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc03748})}
   0.13%    │                0x00007f11ff259542:   mov    %r11,0x8(%rsp)
   0.01%    │                0x00007f11ff259547:   cmp    %ecx,%r8d
          ╭ │                0x00007f11ff25954a:   jg     0x00007f11ff2596bb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@2 (line 38)
   0.27%  │ │ ↗              0x00007f11ff259550:   mov    %ecx,0x30(%rsp)
   0.53%  │ │ │              0x00007f11ff259554:   cmp    %ecx,%r8d
          │╭│ │              0x00007f11ff259557:   jg     0x00007f11ff25975d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@24 (line 41)
   0.42%  │││ │ ↗     ↗↗     0x00007f11ff25955d:   data16 xchg %ax,%ax
   0.11%  │││ │ │     ││     0x00007f11ff259560:   cmp    0x30(%rsp),%r8d
          │││ │ │     ││     0x00007f11ff259565:   jle    0x00007f11ff259be5           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@46 (line 44)
   0.65%  │││ │ │     ││     0x00007f11ff25956b:   mov    0x10(%rsp),%rdx
   0.05%  │││ │ │     ││     0x00007f11ff259570:   mov    %r8d,0x34(%rsp)              ; ImmutableOopMap {rdx=Oop [8]=Oop [16]=Oop [24]=Oop }
          │││ │ │     ││                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@44 (line 44)
   0.02%  │││ │ │     ││     0x00007f11ff259575:   mov    0x14(%rdx),%esi              ; implicit exception: dispatches to 0x00007f11ff259e7a
   0.14%  │││ │ │     ││     0x00007f11ff259578:   movsbl 0x10(%rdx),%ebx              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
          │││ │ │     ││                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@44 (line 44)
   0.29%  │││ │ │     ││     0x00007f11ff25957c:   mov    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f11ff259e9d
   0.33%  │││ │ │     ││     0x00007f11ff259583:   test   %bl,%bl
          │││ │ │     ││     0x00007f11ff259585:   jne    0x00007f11ff259aba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.String::charAt@4 (line 1554)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.02%  │││ │ │     ││     0x00007f11ff25958b:   cmp    0x30(%rsp),%eax
          │││ │ │     ││     0x00007f11ff25958f:   jbe    0x00007f11ff259c1d           ;* unwind (locked if synchronized)
          │││ │ │     ││                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
          │││ │ │     ││                                                               ; - java.lang.String::checkIndex@5 (line 4828)
          │││ │ │     ││                                                               ; - java.lang.StringLatin1::charAt@3 (line 46)
          │││ │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.08%  │││ │ │     ││     0x00007f11ff259595:   mov    0x30(%rsp),%ecx
   0.18%  │││ │ │     ││     0x00007f11ff259599:   movzbl 0x10(%rcx,%rsi,8),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
          │││ │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.15%  │││ │ │     ││     0x00007f11ff25959e:   xchg   %ax,%ax
   0.01%  │││ │ │     ││     0x00007f11ff2595a0:   test   $0xffffff00,%esi
          │││ │ │     ││     0x00007f11ff2595a6:   jne    0x00007f11ff259b1c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.CharacterData::of@4 (line 78)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.10%  │││ │ │     ││     0x00007f11ff2595ac:   mov    0x8(%rsp),%r11
   0.28%  │││ │ │     ││     0x00007f11ff2595b1:   mov    0x8(%r11),%ebx
   0.10%  │││ │ │     ││     0x00007f11ff2595b5:   movabs $0x7f1183000000,%rax
   0.01%  │││ │ │     ││     0x00007f11ff2595bf:   lea    (%rax,%rbx,1),%rbx
   0.11%  │││ │ │     ││     0x00007f11ff2595c3:   mov    0x220(%rbx),%rbx
   0.88%  │││ │ │     ││     0x00007f11ff2595ca:   mov    0x40(%rbx),%rax
   1.43%  │││ │ │     ││     0x00007f11ff2595ce:   mov    %esi,%r10d
          │││ │ │     ││     0x00007f11ff2595d1:   mov    %r11,%rsi
          │││ │ │     ││     0x00007f11ff2595d4:   mov    %r10d,%edx                   ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.00%  │││ │ │     ││     0x00007f11ff2595d7:   mov    %r10d,0x2c(%rsp)
   0.37%  │││ │ │     ││     0x00007f11ff2595dc:   call   *%rax                        ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
          │││ │ │     ││                                                               ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   1.99%  │││ │ │     ││     0x00007f11ff2595de:   nopl   0x0(%rax,%rax,1)
          │││ │ │     ││     0x00007f11ff2595e6:   mov    0x10(%rsp),%rdx
   0.83%  │││ │ │     ││     0x00007f11ff2595eb:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
          │││ │ │     ││                                                               ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   1.85%  │││ │ │     ││     0x00007f11ff2595ee:   mov    0xc(,%rsi,8),%ebx            ; implicit exception: dispatches to 0x00007f11ff259ec0
   2.05%  │││ │ │     ││     0x00007f11ff2595f5:   cmpb   $0x0,0x10(%rdx)
   0.00%  │││ │ │     ││     0x00007f11ff2595f9:   jne    0x00007f11ff259a9b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.String::charAt@4 (line 1554)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
          │││ │ │     ││     0x00007f11ff2595ff:   nop
          │││ │ │     ││     0x00007f11ff259600:   cmp    0x34(%rsp),%ebx
          │││ │ │     ││     0x00007f11ff259604:   jbe    0x00007f11ff259c40           ;* unwind (locked if synchronized)
          │││ │ │     ││                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
          │││ │ │     ││                                                               ; - java.lang.String::checkIndex@5 (line 4828)
          │││ │ │     ││                                                               ; - java.lang.StringLatin1::charAt@3 (line 46)
          │││ │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.31%  │││ │ │     ││     0x00007f11ff25960a:   mov    0x34(%rsp),%r8d
          │││ │ │     ││     0x00007f11ff25960f:   movzbl 0x10(%r8,%rsi,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
          │││ │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.20%  │││ │ │     ││     0x00007f11ff259615:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││ │ │     ││     0x00007f11ff259620:   test   $0xffffff00,%esi
          │││ │ │     ││     0x00007f11ff259626:   jne    0x00007f11ff259b36           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.CharacterData::of@4 (line 78)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.33%  │││ │ │     ││     0x00007f11ff25962c:   mov    0x8(%rsp),%r11
          │││ │ │     ││     0x00007f11ff259631:   mov    0x8(%r11),%ebx
   0.11%  │││ │ │     ││     0x00007f11ff259635:   movabs $0x7f1183000000,%r10         ;   {no_reloc}
          │││ │ │     ││     0x00007f11ff25963f:   lea    (%r10,%rbx,1),%rbx
   0.29%  │││ │ │     ││     0x00007f11ff259643:   mov    0x220(%rbx),%rbx
   0.50%  │││ │ │     ││     0x00007f11ff25964a:   mov    0x40(%rbx),%r10              ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   1.73%  │││ │ │     ││     0x00007f11ff25964e:   movzwl %ax,%r9d                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@4 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.00%  │││ │ │     ││     0x00007f11ff259652:   mov    %esi,%ecx
   0.00%  │││ │ │     ││     0x00007f11ff259654:   mov    %r11,%rsi
          │││ │ │     ││     0x00007f11ff259657:   mov    %ecx,%edx
   0.45%  │││ │ │     ││     0x00007f11ff259659:   mov    %eax,0x24(%rsp)
   0.00%  │││ │ │     ││     0x00007f11ff25965d:   mov    %r10,%rax                    ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
          │││ │ │     ││     0x00007f11ff259660:   mov    %r9d,0x20(%rsp)
          │││ │ │     ││     0x00007f11ff259665:   mov    %ecx,0x28(%rsp)
   0.43%  │││ │ │     ││     0x00007f11ff259669:   call   *%rax                        ; ImmutableOopMap {[16]=Oop [24]=Oop }
          │││ │ │     ││                                                               ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │││ │ │     ││                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   2.21%  │││ │ │     ││     0x00007f11ff25966b:   nopl   0x0(%rax,%rax,1)
          │││ │ │     ││     0x00007f11ff259673:   cmp    0x24(%rsp),%ax
          │││ │ │     ││     0x00007f11ff259678:   jne    0x00007f11ff259c01           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@67 (line 47)
   1.17%  │││ │ │     ││     0x00007f11ff25967e:   mov    0x30(%rsp),%ecx
   0.02%  │││ │ │     ││     0x00007f11ff259682:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@74 (line 50)
   0.35%  │││ │ │     ││     0x00007f11ff259684:   mov    0x34(%rsp),%r8d
   0.00%  │││ │ │     ││     0x00007f11ff259689:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@79 (line 51)
   0.00%  │││ │ │     ││     0x00007f11ff25968c:   mov    0x18(%rsp),%rsi
   0.03%  │││ │ │     ││     0x00007f11ff259691:   mov    0x10(%rsp),%rdx              ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
          │││ │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.36%  │││ │ │     ││     0x00007f11ff259696:   nop
          ││╰ │ │     ││     0x00007f11ff259697:   call   0x00007f11ff259500           ; ImmutableOopMap {}
          ││  │ │     ││                                                               ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
          ││  │ │     ││                                                               ;   {optimized virtual_call}
   6.37%  ││  │ │     ││     0x00007f11ff25969c:   nopl   0x500040c(%rax,%rax,1)       ;   {other}
   0.32%  ││  │ │     ││     0x00007f11ff2596a4:   mov    0x40(%rsp),%rbp
   7.32%  ││  │ │     ││     0x00007f11ff2596a9:   add    $0x48,%rsp
   0.01%  ││  │ │     ││     0x00007f11ff2596ad:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │ │     ││     0x00007f11ff2596b4:   ja     0x00007f11ff259e3a
   0.04%  ││  │ │     ││     0x00007f11ff2596ba:   ret                                 ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││  │ │     ││                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││  │ │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@0 (line 38)
   0.28%  ↘│  │ │     ││     0x00007f11ff2596bb:   mov    0x14(%rdx),%r9d              ; implicit exception: dispatches to 0x00007f11ff259ee3
   0.02%   │  │ │     ││     0x00007f11ff2596bf:   movsbl 0x10(%rdx),%ebx              ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
           │  │ │     ││                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@0 (line 38)
   0.17%   │  │ │     ││     0x00007f11ff2596c3:   mov    0xc(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007f11ff259f06
   0.24%   │  │ │     ││     0x00007f11ff2596cb:   test   %bl,%bl
           │  │ │     ││     0x00007f11ff2596cd:   jne    0x00007f11ff259a65           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.String::charAt@4 (line 1554)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.03%   │  │ │     ││     0x00007f11ff2596d3:   cmp    %ecx,%edi
           │  │ │     ││     0x00007f11ff2596d5:   jbe    0x00007f11ff259e05           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.StringLatin1::charAt@8 (line 47)
           │  │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.27%   │  │ │     ││     0x00007f11ff2596db:   movzbl 0x10(%rcx,%r9,8),%r9d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
           │  │ │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.17%   │  │ │     ││     0x00007f11ff2596e1:   test   $0xffffff00,%r9d
           │  │ │     ││     0x00007f11ff2596e8:   jne    0x00007f11ff259ad6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.CharacterData::of@4 (line 78)
           │  │ │     ││                                                               ; - java.lang.Character::getType@1 (line 11557)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.35%   │  │ │     ││     0x00007f11ff2596ee:   mov    %r11,%rbx
   0.01%   │  │ │     ││     0x00007f11ff2596f1:   mov    0x8(%rbx),%edi
   0.02%   │  │ │     ││     0x00007f11ff2596f4:   movabs $0x7f1183000000,%rax
   0.09%   │  │ │     ││     0x00007f11ff2596fe:   lea    (%rax,%rdi,1),%rdi
   0.30%   │  │ │     ││     0x00007f11ff259702:   cmp    -0x249(%rip),%rdi        # 0x00007f11ff2594c0
           │  │ │     ││                                                               ;   {section_word}
   0.03%   │ ╭│ │     ││     0x00007f11ff259709:   je     0x00007f11ff259725
           │ ││ │     ││     0x00007f11ff25970f:   cmp    -0x24e(%rip),%rdi        # 0x00007f11ff2594c8
           │ ││ │     ││                                                               ;   {section_word}
           │ ││ │     ││     0x00007f11ff259716:   je     0x00007f11ff259b54
           │ ││ │     ││     0x00007f11ff25971c:   nopl   0x0(%rax)
           │ ││ │     ││     0x00007f11ff259720:   jmp    0x00007f11ff259c67
   0.02%   │ ↘│ │     ││     0x00007f11ff259725:   cmp    $0x100,%r9d
           │  │ │     ││     0x00007f11ff25972c:   jae    0x00007f11ff259cb9           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
           │  │ │     ││                                                               ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
           │  │ │     ││                                                               ; - java.lang.Character::getType@5 (line 11557)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.32%   │  │ │     ││     0x00007f11ff259732:   mov    $0x1f,%ebx
   0.06%   │  │ │     ││     0x00007f11ff259737:   and    0x10(%r10,%r9,4),%ebx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
           │  │ │     ││                                                               ; - java.lang.Character::getType@5 (line 11557)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.77%   │  │ │     ││     0x00007f11ff25973c:   mov    $0x23e,%r9d
   0.01%   │  │ │     ││     0x00007f11ff259742:   mov    %ecx,%edi
           │  │ │     ││     0x00007f11ff259744:   mov    %ebx,%ecx
           │  │ │     ││     0x00007f11ff259746:   shr    %cl,%r9d                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
           │  │ │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   1.20%   │  │ │     ││     0x00007f11ff259749:   test   $0x1,%r9d
           │  │ │     ││     0x00007f11ff259750:   je     0x00007f11ff259930           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │ │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
   0.22%   │  │ │     ││     0x00007f11ff259756:   mov    %edi,%ecx
   0.09%   │  ╰ │     ││     0x00007f11ff259758:   jmp    0x00007f11ff259550           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
           │    │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   0.15%   ↘    │     ││     0x00007f11ff25975d:   mov    0x10(%rsp),%rdx              ; ImmutableOopMap {rdx=Oop [8]=Oop [16]=Oop [24]=Oop }
                │     ││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   0.01%        │     ││     0x00007f11ff259762:   mov    0x14(%rdx),%esi              ; implicit exception: dispatches to 0x00007f11ff259f2d
   0.12%        │     ││     0x00007f11ff259765:   movsbl 0x10(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
                │     ││                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                │     ││                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   0.19%        │     ││     0x00007f11ff25976a:   mov    0xc(,%rsi,8),%r11d           ; implicit exception: dispatches to 0x00007f11ff259f50
   1.35%        │     ││     0x00007f11ff259772:   test   %r10b,%r10b
                │     ││     0x00007f11ff259775:   jne    0x00007f11ff259a7e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.String::charAt@4 (line 1554)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
                │     ││     0x00007f11ff25977b:   nopl   0x0(%rax,%rax,1)
                │     ││     0x00007f11ff259780:   cmp    %r8d,%r11d
                │     ││     0x00007f11ff259783:   jbe    0x00007f11ff259df6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.StringLatin1::charAt@8 (line 47)
                │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.29%        │     ││     0x00007f11ff259789:   movzbl 0x10(%r8,%rsi,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
                │     ││                                                               ; - java.lang.String::charAt@12 (line 1555)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.21%        │     ││     0x00007f11ff25978f:   test   $0xffffff00,%esi
                │     ││     0x00007f11ff259795:   jne    0x00007f11ff259b05           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.CharacterData::of@4 (line 78)
                │     ││                                                               ; - java.lang.Character::getType@1 (line 11557)
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.27%        │     ││     0x00007f11ff25979b:   mov    0x8(%rsp),%r11
   0.00%        │     ││     0x00007f11ff2597a0:   mov    0x8(%r11),%r10d
   0.02%        │     ││     0x00007f11ff2597a4:   movabs $0x7f1183000000,%r9
   0.11%        │     ││     0x00007f11ff2597ae:   lea    (%r9,%r10,1),%r10
   0.31%        │     ││     0x00007f11ff2597b2:   cmp    -0x2f9(%rip),%r10        # 0x00007f11ff2594c0
                │     ││                                                               ;   {section_word}
   0.01%       ╭│     ││     0x00007f11ff2597b9:   je     0x00007f11ff2597d1
               ││     ││     0x00007f11ff2597bf:   cmp    -0x2fe(%rip),%r10        # 0x00007f11ff2594c8
               ││     ││                                                               ;   {section_word}
               ││     ││     0x00007f11ff2597c6:   je     0x00007f11ff259b9c
               ││     ││     0x00007f11ff2597cc:   jmp    0x00007f11ff259cc8
   0.03%       ↘│     ││     0x00007f11ff2597d1:   cmp    $0x100,%esi
                │     ││     0x00007f11ff2597d7:   jae    0x00007f11ff259daf
   0.12%        │     ││     0x00007f11ff2597dd:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
   0.25%        │     ││     0x00007f11ff2597e7:   mov    $0x1f,%r11d
                │     ││     0x00007f11ff2597ed:   and    0x10(%r10,%rsi,4),%r11d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
                │     ││                                                               ; - java.lang.Character::getType@5 (line 11557)
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.78%        │     ││     0x00007f11ff2597f2:   mov    $0x23e,%esi
   0.01%        │     ││     0x00007f11ff2597f7:   mov    %ecx,%r9d
   0.00%        │     ││     0x00007f11ff2597fa:   mov    %r11d,%ecx
                │     ││     0x00007f11ff2597fd:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
                │     ││                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                │     ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   1.27%        │     ││     0x00007f11ff2597ff:   nop
                │     ││     0x00007f11ff259800:   test   $0x1,%esi
                ╰     ││     0x00007f11ff259806:   jne    0x00007f11ff25955d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   0.60%              ││     0x00007f11ff25980c:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@38 (line 42)
   0.37%              ││     0x00007f11ff25980f:   mov    0x8(%rsp),%r11
   0.31%         ╭    ││     0x00007f11ff259814:   jmp    0x00007f11ff2598b3           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                 │    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
                 │    ││     0x00007f11ff259819:   nopl   0x0(%rax)                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                 │    ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@24 (line 41)
   0.10%         │    ││↗    0x00007f11ff259820:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
                 │    │││                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                 │    │││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   0.18%         │    │││    0x00007f11ff259823:   mov    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f11ff259f73
   0.37%         │    │││    0x00007f11ff25982a:   cmpb   $0x0,0x10(%rdx)
   0.03%         │╭   │││    0x00007f11ff25982e:   jne    0x00007f11ff2598c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                 ││   │││                                                              ; - java.lang.String::charAt@4 (line 1554)
                 ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.04%         ││   │││    0x00007f11ff259834:   cmp    %r8d,%esi
                 ││   │││    0x00007f11ff259837:   jbe    0x00007f11ff259e0d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                 ││   │││                                                              ; - java.lang.StringLatin1::charAt@8 (line 47)
                 ││   │││                                                              ; - java.lang.String::charAt@12 (line 1555)
                 ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.04%         ││   │││    0x00007f11ff25983d:   movzbl 0x10(%r8,%rcx,8),%ecx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                 ││   │││                                                              ; - java.lang.StringLatin1::charAt@12 (line 47)
                 ││   │││                                                              ; - java.lang.String::charAt@12 (line 1555)
                 ││   │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.05%         ││   │││↗   0x00007f11ff259843:   test   $0xffffff00,%ecx
                 ││╭  ││││   0x00007f11ff259849:   jne    0x00007f11ff2598df           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                 │││  ││││                                                             ; - java.lang.CharacterData::of@4 (line 78)
                 │││  ││││                                                             ; - java.lang.Character::getType@1 (line 11557)
                 │││  ││││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                 │││  ││││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                 │││  ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.08%         │││  ││││   0x00007f11ff25984f:   mov    %r11,%rsi
   0.05%         │││  ││││↗  0x00007f11ff259852:   mov    0x8(%rsi),%ebx
   0.01%         │││  │││││  0x00007f11ff259855:   movabs $0x7f1183000000,%rdi
   0.04%         │││  │││││  0x00007f11ff25985f:   lea    (%rdi,%rbx,1),%rbx
   0.09%         │││  │││││  0x00007f11ff259863:   cmp    -0x3aa(%rip),%rbx        # 0x00007f11ff2594c0
                 │││  │││││                                                            ;   {section_word}
   0.05%         │││╭ │││││  0x00007f11ff25986a:   je     0x00007f11ff259885
   0.00%         ││││ │││││  0x00007f11ff259870:   cmp    -0x3af(%rip),%rbx        # 0x00007f11ff2594c8
                 ││││ │││││                                                            ;   {section_word}
                 ││││╭│││││  0x00007f11ff259877:   je     0x00007f11ff2598ee
                 ││││││││││  0x00007f11ff25987d:   data16 xchg %ax,%ax
                 ││││││││││  0x00007f11ff259880:   jmp    0x00007f11ff259d42
   0.02%         │││↘││││││  0x00007f11ff259885:   cmp    $0x100,%ecx
                 │││ ││││││  0x00007f11ff25988b:   jae    0x00007f11ff259e18           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                 │││ ││││││                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
                 │││ ││││││                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
                 │││ ││││││                                                            ; - java.lang.Character::getType@5 (line 11557)
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                 │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.09%         │││ ││││││  0x00007f11ff259891:   mov    $0x1f,%esi
   0.05%         │││ ││││││  0x00007f11ff259896:   and    0x10(%r10,%rcx,4),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                 │││ ││││││                                                            ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
                 │││ ││││││                                                            ; - java.lang.Character::getType@5 (line 11557)
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                 │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.24%         │││ ││││││  0x00007f11ff25989b:   mov    $0x23e,%ebx
   0.01%         │││ ││││││  0x00007f11ff2598a0:   mov    %esi,%ecx
   0.01%         │││ ││││││  0x00007f11ff2598a2:   shr    %cl,%ebx                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
                 │││ ││││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                 │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.39%         │││ ││││││  0x00007f11ff2598a4:   test   $0x1,%ebx
                 │││ │╰││││  0x00007f11ff2598aa:   jne    0x00007f11ff25955d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                 │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   0.11%         │││ │ ││││  0x00007f11ff2598b0:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@38 (line 42)
   0.08%         ↘││ │ ││││  0x00007f11ff2598b3:   cmp    %r9d,%r8d
                  ││ │ ╰│││  0x00007f11ff2598b6:   jle    0x00007f11ff25955d
   0.05%          ││ │  │││  0x00007f11ff2598bc:   nopl   0x0(%rax)
   0.03%          ││ │  ╰││  0x00007f11ff2598c0:   jmp    0x00007f11ff259820           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  ││ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@24 (line 41)
   0.01%          ↘│ │   ││  0x00007f11ff2598c5:   shr    %esi                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                   │ │   ││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
                   │ │   ││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                   │ │   ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                   │ │   ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                   │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.03%           │ │   ││  0x00007f11ff2598c7:   cmp    %r8d,%esi
                   │ │   ││  0x00007f11ff2598ca:   jbe    0x00007f11ff259c8f           ;* unwind (locked if synchronized)
                   │ │   ││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                   │ │   ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                   │ │   ││                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                   │ │   ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                   │ │   ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                   │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.04%           │ │   ││  0x00007f11ff2598d0:   mov    %r8d,%esi
                   │ │   ││  0x00007f11ff2598d3:   shl    %esi
   0.00%           │ │   ││  0x00007f11ff2598d5:   movzwl 0x10(%rsi,%rcx,8),%ecx       ;* unwind (locked if synchronized)
                   │ │   ││                                                            ; - java.lang.StringUTF16::getChar@-3
                   │ │   ││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                   │ │   ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                   │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.02%           │ │   ╰│  0x00007f11ff2598da:   jmp    0x00007f11ff259843
   0.01%           ↘ │    │  0x00007f11ff2598df:   movabs $0x7fec6e7d8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007fec6e7d8})}
   0.01%             │    ╰  0x00007f11ff2598e9:   jmp    0x00007f11ff259852
                     ↘       0x00007f11ff2598ee:   mov    %r8d,0x2c(%rsp)
   0.00%                     0x00007f11ff2598f3:   mov    %ecx,%edx                    ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                                       ; - java.lang.Character::getType@5 (line 11557)
                                                                                       ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                       ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
                             0x00007f11ff2598f5:   mov    %ecx,0x28(%rsp)
   0.00%                     0x00007f11ff2598f9:   xchg   %ax,%ax
                             0x00007f11ff2598fb:   call   0x00007f11fec2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
                                                                                       ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                                       ; - java.lang.Character::getType@5 (line 11557)
                                                                                       ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                       ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
                                                                                       ;   {optimized virtual_call}
   0.00%                     0x00007f11ff259900:   nopl   0xb000670(%rax,%rax,1)       ;   {other}
                             0x00007f11ff259908:   and    $0x1f,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                       ; - java.lang.CharacterData00::getType@9 (line 85)
                                                                                       ; - java.lang.Character::getType@5 (line 11557)
....................................................................................................
  53.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1076 

              # parm0:    rdx       = int
              #           [sp+0x20]  (sp of caller)
              0x00007f11ff25b280:   mov    0x8(%rsi),%r10d
              0x00007f11ff25b284:   movabs $0x7f1183000000,%r12
              0x00007f11ff25b28e:   add    %r12,%r10
              0x00007f11ff25b291:   xor    %r12,%r12
              0x00007f11ff25b294:   cmp    %r10,%rax
              0x00007f11ff25b297:   jne    0x00007f11fec2f080           ;   {runtime_call ic_miss_stub}
              0x00007f11ff25b29d:   data16 xchg %ax,%ax
            [Verified Entry Point]
  11.38%      0x00007f11ff25b2a0:   mov    %eax,-0x14000(%rsp)
  10.79%      0x00007f11ff25b2a7:   sub    $0x18,%rsp
              0x00007f11ff25b2ab:   nop
              0x00007f11ff25b2ac:   cmpl   $0x0,0x20(%r15)
   0.00%      0x00007f11ff25b2b4:   jne    0x00007f11ff25b357
   0.83%      0x00007f11ff25b2ba:   mov    %rbp,0x10(%rsp)
   0.73%      0x00007f11ff25b2bf:   nop
              0x00007f11ff25b2c0:   cmp    $0x41,%edx
          ╭   0x00007f11ff25b2c3:   jl     0x00007f11ff25b2f4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │   0x00007f11ff25b2c9:   mov    %edx,%r10d
   0.01%  │   0x00007f11ff25b2cc:   or     $0x20,%r10d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
   0.71%  │   0x00007f11ff25b2d0:   cmp    $0x7b,%r10d
          │╭  0x00007f11ff25b2d4:   jge    0x00007f11ff25b30e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
          ││  0x00007f11ff25b2da:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
          ││  0x00007f11ff25b2dd:   mov    0x10(%rsp),%rbp
   3.42%  ││  0x00007f11ff25b2e2:   add    $0x18,%rsp
   0.00%  ││  0x00007f11ff25b2e6:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f11ff25b2ed:   ja     0x00007f11ff25b367
   0.01%  ││  0x00007f11ff25b2f3:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          ↘│  0x00007f11ff25b2f4:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@7 (line 164)
           │  0x00007f11ff25b2f6:   mov    0x10(%rsp),%rbp
   0.00%   │  0x00007f11ff25b2fb:   add    $0x18,%rsp
           │  0x00007f11ff25b2ff:   nop
           │  0x00007f11ff25b300:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │  0x00007f11ff25b307:   ja     0x00007f11ff25b37b
           │  0x00007f11ff25b30d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
           ↘  0x00007f11ff25b30e:   cmp    $0xe0,%r10d
              0x00007f11ff25b315:   jge    0x00007f11ff25b334           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
              0x00007f11ff25b31b:   mov    %edx,%eax
              0x00007f11ff25b31d:   mov    0x10(%rsp),%rbp
....................................................................................................
  27.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1077 
  27.90%      jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1076 
   4.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1077 
   3.40%      jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1093 
   2.43%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1052 
   1.47%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1052 
   0.47%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.42%              kernel  [unknown] 
   0.40%      jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1312 
   0.39%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1052 
   0.36%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.29%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.14%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1077 
   0.13%                      <unknown> 
   0.12%      jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1004 
   0.12%      jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1093 
   0.09%                      <unknown> 
   0.09%      jvmci, level 4  java.lang.String::&lt;init&gt;, version 3, compile id 1310 
   3.23%  <...other 692 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1077 
  27.90%      jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1076 
   4.38%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1052 
   3.57%      jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1093 
   3.31%              kernel  [unknown] 
   0.40%      jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1312 
   0.40%                      <unknown> 
   0.36%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.14%      jvmci, level 4  java.lang.String::&lt;init&gt;, version 3, compile id 1310 
   0.12%      jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1004 
   0.09%        libc-2.31.so  __memset_avx2_erms 
   0.08%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.08%      jvmci, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 1081 
   0.05%      jvmci, level 4  java.io.BufferedReader$1::hasNext, version 3, compile id 1247 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 1379 
   0.03%      jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 1374 
   0.03%    perf-2118602.map  [unknown] 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%           libjvm.so  jni_GetObjectField 
   0.03%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.83%  <...other 161 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.93%      jvmci, level 4
   3.31%              kernel
   0.40%                    
   0.40%           libjvm.so
   0.37%        runtime stub
   0.32%        libc-2.31.so
   0.10%  libpthread-2.31.so
   0.03%    perf-2118602.map
   0.03%          libjava.so
   0.03%              [vdso]
   0.03%    Unknown, level 0
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline

# Run progress: 75.00% complete, ETA 00:01:56
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.679 ms/op
# Warmup Iteration   2: 5.401 ms/op
# Warmup Iteration   3: 5.361 ms/op
# Warmup Iteration   4: 5.366 ms/op
# Warmup Iteration   5: 5.356 ms/op
Iteration   1: 5.356 ms/op
Iteration   2: 5.352 ms/op
Iteration   3: 5.353 ms/op
Iteration   4: 5.352 ms/op
Iteration   5: 5.370 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline":
  5.357 ±(99.9%) 0.029 ms/op [Average]
  (min, avg, max) = (5.352, 5.357, 5.370), stdev = 0.007
  CI (99.9%): [5.328, 5.385] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline:asm":
PrintAssembly processed: 329080 total address lines.
Perf output processed (skipped 62.261 seconds):
 Column 1: cycles (51463 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1085 

              # parm0:    rdx       = int
              #           [sp+0x20]  (sp of caller)
              0x00007fcecb253900:   mov    0x8(%rsi),%r10d
              0x00007fcecb253904:   movabs $0x7fce4f000000,%r12
              0x00007fcecb25390e:   add    %r12,%r10
              0x00007fcecb253911:   xor    %r12,%r12
              0x00007fcecb253914:   cmp    %r10,%rax
              0x00007fcecb253917:   jne    0x00007fcecac2f080           ;   {runtime_call ic_miss_stub}
              0x00007fcecb25391d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   7.81%      0x00007fcecb253920:   mov    %eax,-0x14000(%rsp)
   7.37%      0x00007fcecb253927:   sub    $0x18,%rsp
   0.00%      0x00007fcecb25392b:   nop
              0x00007fcecb25392c:   cmpl   $0x1,0x20(%r15)
              0x00007fcecb253934:   jne    0x00007fcecb2539d7
   0.58%      0x00007fcecb25393a:   mov    %rbp,0x10(%rsp)
   0.49%      0x00007fcecb25393f:   nop
              0x00007fcecb253940:   cmp    $0x41,%edx
          ╭   0x00007fcecb253943:   jl     0x00007fcecb253974           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │   0x00007fcecb253949:   mov    %edx,%r10d
   0.01%  │   0x00007fcecb25394c:   or     $0x20,%r10d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
   0.61%  │   0x00007fcecb253950:   cmp    $0x7b,%r10d
          │╭  0x00007fcecb253954:   jge    0x00007fcecb25398e           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
          ││  0x00007fcecb25395a:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
          ││  0x00007fcecb25395d:   mov    0x10(%rsp),%rbp
   2.11%  ││  0x00007fcecb253962:   add    $0x18,%rsp
          ││  0x00007fcecb253966:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007fcecb25396d:   ja     0x00007fcecb2539e7
   0.01%  ││  0x00007fcecb253973:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          ↘│  0x00007fcecb253974:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@7 (line 164)
           │  0x00007fcecb253976:   mov    0x10(%rsp),%rbp
   0.01%   │  0x00007fcecb25397b:   add    $0x18,%rsp
           │  0x00007fcecb25397f:   nop
           │  0x00007fcecb253980:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │  0x00007fcecb253987:   ja     0x00007fcecb2539fb
           │  0x00007fcecb25398d:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@41 (line 170)
           ↘  0x00007fcecb25398e:   cmp    $0xe0,%r10d
              0x00007fcecb253995:   jge    0x00007fcecb2539b4           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
              0x00007fcecb25399b:   mov    %edx,%eax
              0x00007fcecb25399d:   mov    0x10(%rsp),%rbp
....................................................................................................
  19.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 

            #           [sp+0x50]  (sp of caller)
            0x00007fcecb254780:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
            0x00007fcecb254784:   movabs $0x7fce4f000000,%r12
            0x00007fcecb25478e:   add    %r12,%r10
            0x00007fcecb254791:   xor    %r12,%r12
            0x00007fcecb254794:   cmp    %r10,%rax
            0x00007fcecb254797:   jne    0x00007fcecac2f080           ;   {runtime_call ic_miss_stub}
            0x00007fcecb25479d:   data16 xchg %ax,%ax
          [Verified Entry Point]
            0x00007fcecb2547a0:   mov    %eax,-0x14000(%rsp)
   0.29%    0x00007fcecb2547a7:   sub    $0x48,%rsp
   0.00%    0x00007fcecb2547ab:   nop
            0x00007fcecb2547ac:   cmpl   $0x1,0x20(%r15)
            0x00007fcecb2547b4:   jne    0x00007fcecb255238
   0.27%    0x00007fcecb2547ba:   mov    %rbp,0x40(%rsp)
            0x00007fcecb2547bf:   mov    %rsi,0x18(%rsp)
            0x00007fcecb2547c4:   mov    %rdx,0x10(%rsp)
            0x00007fcecb2547c9:   mov    %r8d,0x34(%rsp)
   0.28%    0x00007fcecb2547ce:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
   0.00%    0x00007fcecb2547d8:   movabs $0x7ffc03748,%r11            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc03748})}
            0x00007fcecb2547e2:   mov    %r11,0x8(%rsp)
            0x00007fcecb2547e7:   cmp    %ecx,%r8d
            0x00007fcecb2547ea:   jg     0x00007fcecb2549d1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@2 (line 40)
   0.16%    0x00007fcecb2547f0:   mov    %ecx,0x30(%rsp)
   0.24%    0x00007fcecb2547f4:   cmp    %ecx,%r8d
            0x00007fcecb2547f7:   jg     0x00007fcecb254a78           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@24 (line 43)
   0.25%    0x00007fcecb2547fd:   mov    %r8d,0x34(%rsp)
   0.33%    0x00007fcecb254802:   cmp    0x30(%rsp),%r8d
            0x00007fcecb254807:   jle    0x00007fcecb254f25           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@46 (line 46)
   0.34%    0x00007fcecb25480d:   mov    0x10(%rsp),%rdx              ; ImmutableOopMap {rdx=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                      ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@44 (line 46)
   0.04%    0x00007fcecb254812:   mov    0x14(%rdx),%esi              ; implicit exception: dispatches to 0x00007fcecb255286
   0.15%    0x00007fcecb254815:   movsbl 0x10(%rdx),%ebx              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
                                                                      ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@44 (line 46)
   0.01%    0x00007fcecb254819:   mov    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007fcecb2552ad
   0.46%    0x00007fcecb254820:   test   %bl,%bl
            0x00007fcecb254822:   jne    0x00007fcecb254dda           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::charAt@4 (line 1554)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
   0.00%    0x00007fcecb254828:   cmp    0x30(%rsp),%eax
            0x00007fcecb25482c:   jbe    0x00007fcecb255020           ;* unwind (locked if synchronized)
                                                                      ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                      ; - java.lang.String::checkIndex@5 (line 4828)
                                                                      ; - java.lang.StringLatin1::charAt@3 (line 46)
                                                                      ; - java.lang.String::charAt@12 (line 1555)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
   0.08%    0x00007fcecb254832:   mov    0x30(%rsp),%ecx
   0.01%    0x00007fcecb254836:   movzbl 0x10(%rcx,%rsi,8),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                      ; - java.lang.String::charAt@12 (line 1555)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
   0.17%    0x00007fcecb25483b:   nopl   0x0(%rax,%rax,1)
   0.02%    0x00007fcecb254840:   test   $0xffffff00,%esi
            0x00007fcecb254846:   jne    0x00007fcecb254e57           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.CharacterData::of@4 (line 78)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@62 (line 49)
   0.10%    0x00007fcecb25484c:   mov    0x8(%rsp),%r11
   0.01%    0x00007fcecb254851:   mov    0x8(%r11),%ebx
   0.16%    0x00007fcecb254855:   movabs $0x7fce4f000000,%rax
   0.02%    0x00007fcecb25485f:   lea    (%rax,%rbx,1),%rbx
   0.10%    0x00007fcecb254863:   mov    0x220(%rbx),%rbx
   0.57%    0x00007fcecb25486a:   mov    0x40(%rbx),%rax
   0.94%    0x00007fcecb25486e:   mov    %esi,%r10d
   0.00%    0x00007fcecb254871:   mov    %r11,%rsi
            0x00007fcecb254874:   mov    %r10d,%edx                   ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@62 (line 49)
            0x00007fcecb254877:   mov    %r10d,0x2c(%rsp)
   0.31%    0x00007fcecb25487c:   call   *%rax                        ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
                                                                      ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@62 (line 49)
   1.44%    0x00007fcecb25487e:   nopl   0x0(%rax,%rax,1)
            0x00007fcecb254886:   mov    0x10(%rsp),%rdx
   0.55%    0x00007fcecb25488b:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
                                                                      ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@62 (line 49)
   1.42%    0x00007fcecb25488e:   mov    0xc(,%rsi,8),%ebx            ; implicit exception: dispatches to 0x00007fcecb2552d0
   1.42%    0x00007fcecb254895:   cmpb   $0x0,0x10(%rdx)
            0x00007fcecb254899:   jne    0x00007fcecb254dbb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::charAt@4 (line 1554)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
            0x00007fcecb25489f:   nop
            0x00007fcecb2548a0:   cmp    0x34(%rsp),%ebx
            0x00007fcecb2548a4:   jbe    0x00007fcecb255112           ;* unwind (locked if synchronized)
                                                                      ; - jdk.internal.util.Preconditions::checkIndex@-3
                                                                      ; - java.lang.String::checkIndex@5 (line 4828)
                                                                      ; - java.lang.StringLatin1::charAt@3 (line 46)
                                                                      ; - java.lang.String::charAt@12 (line 1555)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
   0.24%    0x00007fcecb2548aa:   mov    0x34(%rsp),%r8d
            0x00007fcecb2548af:   movzbl 0x10(%r8,%rsi,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                      ; - java.lang.String::charAt@12 (line 1555)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
   0.06%    0x00007fcecb2548b5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fcecb2548c0:   test   $0xffffff00,%esi
            0x00007fcecb2548c6:   jne    0x00007fcecb254e71           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.CharacterData::of@4 (line 78)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
   0.24%    0x00007fcecb2548cc:   mov    0x8(%rsp),%r11
            0x00007fcecb2548d1:   mov    0x8(%r11),%ebx
   0.05%    0x00007fcecb2548d5:   movabs $0x7fce4f000000,%r10         ;   {no_reloc}
            0x00007fcecb2548df:   lea    (%r10,%rbx,1),%rbx
   0.19%    0x00007fcecb2548e3:   mov    0x220(%rbx),%rbx
   0.48%    0x00007fcecb2548ea:   mov    0x40(%rbx),%r10              ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
   1.14%    0x00007fcecb2548ee:   movzwl %ax,%r9d                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@4 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@62 (line 49)
            0x00007fcecb2548f2:   mov    %esi,%ecx
            0x00007fcecb2548f4:   mov    %r11,%rsi
            0x00007fcecb2548f7:   mov    %ecx,%edx
   0.29%    0x00007fcecb2548f9:   mov    %eax,0x24(%rsp)
            0x00007fcecb2548fd:   mov    %r10,%rax                    ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
   0.00%    0x00007fcecb254900:   mov    %r9d,0x20(%rsp)
            0x00007fcecb254905:   mov    %ecx,0x28(%rsp)
   0.24%    0x00007fcecb254909:   call   *%rax                        ; ImmutableOopMap {[16]=Oop [24]=Oop }
                                                                      ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
   1.47%    0x00007fcecb25490b:   nopl   0x0(%rax,%rax,1)
            0x00007fcecb254913:   mov    %eax,%r10d                   ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
            0x00007fcecb254916:   data16 nopw 0x0(%rax,%rax,1)
            0x00007fcecb254920:   cmp    0x24(%rsp),%r10w
....................................................................................................
  14.56%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@70 (line 49)
                      0x00007fcecb254916:   data16 nopw 0x0(%rax,%rax,1)
                      0x00007fcecb254920:   cmp    0x24(%rsp),%r10w
                      0x00007fcecb254926:   jne    0x00007fcecb254f81           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@73 (line 49)
   1.07%              0x00007fcecb25492c:   mov    0x1b8(%r15),%rax
                      0x00007fcecb254933:   lea    0x20(%rax),%rsi
                      0x00007fcecb254937:   nopw   0x0(%rax,%rax,1)
                      0x00007fcecb254940:   cmp    0x1c8(%r15),%rsi
                      0x00007fcecb254947:   ja     0x00007fcecb254df6
   0.25%              0x00007fcecb25494d:   mov    %rsi,0x1b8(%r15)
                      0x00007fcecb254954:   prefetchw 0xe0(%rax)
   0.79%              0x00007fcecb25495b:   movq   $0x1,(%rax)
   0.36%              0x00007fcecb254962:   movl   $0x1084248,0x8(%rax)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/TrampolinePredicate$$Lambda+0x00007fce50084248&apos;)}
   0.96%              0x00007fcecb254969:   movl   $0x0,0xc(%rax)
   0.04%              0x00007fcecb254970:   movq   $0x0,0x10(%rax)
   0.31%              0x00007fcecb254978:   movq   $0x0,0x18(%rax)
                      0x00007fcecb254980:   mov    0x10(%rsp),%rdx
   0.04%              0x00007fcecb254985:   mov    0x18(%rsp),%rsi
   0.00%              0x00007fcecb25498a:   shr    $0x3,%rdx
   0.24%              0x00007fcecb25498e:   mov    %edx,0x18(%rax)
   0.19%              0x00007fcecb254991:   shr    $0x3,%rsi
   0.04%              0x00007fcecb254995:   mov    %esi,0x14(%rax)              ;* unwind (locked if synchronized)
                                                                                ; - jdk.internal.misc.Unsafe::allocateInstance@-3
                                                                                ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                                ; - java.lang.invoke.LambdaForm$DMH/0x00007fce50080800::newInvokeSpecial@1
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fce50081000::linkToTargetMethod@9
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
   0.24%              0x00007fcecb254998:   mov    0x34(%rsp),%r8d
   0.05%              0x00007fcecb25499d:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@91 (line 53)
   0.09%              0x00007fcecb2549a0:   mov    %r8d,0x10(%rax)              ;* unwind (locked if synchronized)
                                                                                ; - jdk.internal.misc.Unsafe::allocateInstance@-3
                                                                                ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                                ; - java.lang.invoke.LambdaForm$DMH/0x00007fce50080800::newInvokeSpecial@1
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fce50081000::linkToTargetMethod@9
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
   0.15%              0x00007fcecb2549a4:   mov    0x30(%rsp),%ecx
                      0x00007fcecb2549a8:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@86 (line 52)
   0.05%              0x00007fcecb2549aa:   mov    %ecx,0xc(%rax)               ;* unwind (locked if synchronized)
                                                                                ; - jdk.internal.misc.Unsafe::allocateInstance@-3
                                                                                ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                                ; - java.lang.invoke.LambdaForm$DMH/0x00007fce50080800::newInvokeSpecial@1
                                                                                ; - java.lang.invoke.LambdaForm$MH/0x00007fce50081000::linkToTargetMethod@9
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
   0.09%              0x00007fcecb2549ad:   mov    0x40(%rsp),%rbp
   0.15%              0x00007fcecb2549b2:   add    $0x48,%rsp
   0.00%              0x00007fcecb2549b6:   data16 nopw 0x0(%rax,%rax,1)
   0.04%              0x00007fcecb2549c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                      0x00007fcecb2549c7:   ja     0x00007fcecb255248
   0.13%              0x00007fcecb2549cd:   vzeroupper 
   0.31%              0x00007fcecb2549d0:   ret                                 ; ImmutableOopMap {rdx=Oop rsi=Oop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                                ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@0 (line 40)
   0.26%              0x00007fcecb2549d1:   mov    0x14(%rdx),%r9d              ; implicit exception: dispatches to 0x00007fcecb2552f3
   0.03%              0x00007fcecb2549d5:   movsbl 0x10(%rdx),%ebx              ; ImmutableOopMap {rdx=Oop rsi=Oop r9=NarrowOop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                                ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@0 (line 40)
   0.01%              0x00007fcecb2549d9:   mov    0xc(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007fcecb255316
   0.13%              0x00007fcecb2549e1:   test   %bl,%bl
                      0x00007fcecb2549e3:   jne    0x00007fcecb254d85           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.String::charAt@4 (line 1554)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
   0.21%              0x00007fcecb2549e9:   cmp    %ecx,%edi
                      0x00007fcecb2549eb:   jbe    0x00007fcecb255198           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.StringLatin1::charAt@8 (line 47)
                                                                                ; - java.lang.String::charAt@12 (line 1555)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
   0.03%              0x00007fcecb2549f1:   movzbl 0x10(%rcx,%r9,8),%r9d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                                ; - java.lang.String::charAt@12 (line 1555)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
   0.06%              0x00007fcecb2549f7:   nopw   0x0(%rax,%rax,1)
                      0x00007fcecb254a00:   test   $0xffffff00,%r9d
                      0x00007fcecb254a07:   jne    0x00007fcecb254e1c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterData::of@4 (line 78)
                                                                                ; - java.lang.Character::getType@1 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@10 (line 40)
   0.24%              0x00007fcecb254a0d:   mov    %r11,%rbx
   0.03%              0x00007fcecb254a10:   mov    0x8(%rbx),%edi
   0.05%              0x00007fcecb254a13:   movabs $0x7fce4f000000,%rax
                      0x00007fcecb254a1d:   lea    (%rax,%rdi,1),%rdi
   0.19%              0x00007fcecb254a21:   cmp    -0x2c8(%rip),%rdi        # 0x00007fcecb254760
                                                                                ;   {section_word}
   0.03%  ╭           0x00007fcecb254a28:   je     0x00007fcecb254a40
          │           0x00007fcecb254a2e:   cmp    -0x2cd(%rip),%rdi        # 0x00007fcecb254768
          │                                                                     ;   {section_word}
          │           0x00007fcecb254a35:   je     0x00007fcecb254e8f
          │           0x00007fcecb254a3b:   jmp    0x00007fcecb255043
   0.05%  ↘           0x00007fcecb254a40:   cmp    $0x100,%r9d
                      0x00007fcecb254a47:   jae    0x00007fcecb2551d8           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
                                                                                ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
                                                                                ; - java.lang.Character::getType@5 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@10 (line 40)
                      0x00007fcecb254a4d:   mov    $0x1f,%ebx
   0.18%              0x00007fcecb254a52:   and    0x10(%r10,%r9,4),%ebx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
                                                                                ; - java.lang.Character::getType@5 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@10 (line 40)
   0.42%              0x00007fcecb254a57:   mov    $0x23e,%r9d
   0.00%              0x00007fcecb254a5d:   mov    %ecx,%edi
                      0x00007fcecb254a5f:   mov    %ebx,%ecx
   0.06%              0x00007fcecb254a61:   shr    %cl,%r9d                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@10 (line 40)
   0.65%              0x00007fcecb254a64:   test   $0x1,%r9d
                      0x00007fcecb254a6b:   je     0x00007fcecb254c50           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@13 (line 40)
   0.17%              0x00007fcecb254a71:   mov    %edi,%ecx
   0.11%              0x00007fcecb254a73:   jmp    0x00007fcecb2547f0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@22 (line 43)
   0.14%              0x00007fcecb254a78:   mov    0x10(%rsp),%rdx              ; ImmutableOopMap {rdx=Oop [8]=Oop [16]=Oop [24]=Oop }
                                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@22 (line 43)
   0.01%              0x00007fcecb254a7d:   mov    0x14(%rdx),%esi              ; implicit exception: dispatches to 0x00007fcecb255339
   0.11%              0x00007fcecb254a80:   movsbl 0x10(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop [24]=Oop }
                                                                                ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@22 (line 43)
   0.13%              0x00007fcecb254a85:   mov    0xc(,%rsi,8),%r11d           ; implicit exception: dispatches to 0x00007fcecb25535c
   0.62%              0x00007fcecb254a8d:   test   %r10b,%r10b
                      0x00007fcecb254a90:   jne    0x00007fcecb254d9e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.String::charAt@4 (line 1554)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
                      0x00007fcecb254a96:   cmp    %r8d,%r11d
                      0x00007fcecb254a99:   jbe    0x00007fcecb2550ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.StringLatin1::charAt@8 (line 47)
                                                                                ; - java.lang.String::charAt@12 (line 1555)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.18%              0x00007fcecb254a9f:   movzbl 0x10(%r8,%rsi,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.StringLatin1::charAt@12 (line 47)
                                                                                ; - java.lang.String::charAt@12 (line 1555)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.11%              0x00007fcecb254aa5:   test   $0xffffff00,%esi
                      0x00007fcecb254aab:   jne    0x00007fcecb254e45           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterData::of@4 (line 78)
                                                                                ; - java.lang.Character::getType@1 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.19%              0x00007fcecb254ab1:   mov    0x8(%rsp),%r11
   0.00%              0x00007fcecb254ab6:   mov    0x8(%r11),%r10d
   0.00%              0x00007fcecb254aba:   movabs $0x7fce4f000000,%r9
   0.08%              0x00007fcecb254ac4:   lea    (%r9,%r10,1),%r10
   0.17%              0x00007fcecb254ac8:   cmp    -0x36f(%rip),%r10        # 0x00007fcecb254760
                                                                                ;   {section_word}
           ╭          0x00007fcecb254acf:   je     0x00007fcecb254aeb
   0.00%   │          0x00007fcecb254ad5:   cmp    -0x374(%rip),%r10        # 0x00007fcecb254768
           │                                                                    ;   {section_word}
           │          0x00007fcecb254adc:   nopl   0x0(%rax)
           │          0x00007fcecb254ae0:   je     0x00007fcecb254edc
           │          0x00007fcecb254ae6:   jmp    0x00007fcecb255217
   0.00%   ↘          0x00007fcecb254aeb:   cmp    $0x100,%esi
                      0x00007fcecb254af1:   jae    0x00007fcecb255096
   0.11%              0x00007fcecb254af7:   movabs $0x7ffc03758,%r10            ;   {oop([I{0x00000007ffc03758})}
   0.18%              0x00007fcecb254b01:   mov    $0x1f,%r11d
                      0x00007fcecb254b07:   and    0x10(%r10,%rsi,4),%r11d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
                                                                                ; - java.lang.Character::getType@5 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.50%              0x00007fcecb254b0c:   mov    $0x23e,%esi
   0.01%              0x00007fcecb254b11:   mov    %ecx,%r9d
   0.01%              0x00007fcecb254b14:   mov    %r11d,%ecx
   0.00%              0x00007fcecb254b17:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.75%              0x00007fcecb254b19:   nopl   0x0(%rax)
                      0x00007fcecb254b20:   test   $0x1,%esi
                      0x00007fcecb254b26:   jne    0x00007fcecb2547fd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@35 (line 43)
   0.42%              0x00007fcecb254b2c:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@38 (line 44)
   0.25%              0x00007fcecb254b2f:   mov    0x8(%rsp),%r11
   0.17%    ╭         0x00007fcecb254b34:   jmp    0x00007fcecb254bd3           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@22 (line 43)
            │         0x00007fcecb254b39:   nopl   0x0(%rax)                    ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
            │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@24 (line 43)
   0.06%    │    ↗    0x00007fcecb254b40:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop r10=Oop r11=Oop [8]=Oop [16]=Oop [24]=Oop }
            │    │                                                              ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
            │    │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@22 (line 43)
   0.10%    │    │    0x00007fcecb254b43:   mov    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007fcecb25537f
   0.27%    │    │    0x00007fcecb254b4a:   cmpb   $0x0,0x10(%rdx)
   0.02%    │╭   │    0x00007fcecb254b4e:   jne    0x00007fcecb254be5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            ││   │                                                              ; - java.lang.String::charAt@4 (line 1554)
            ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.02%    ││   │    0x00007fcecb254b54:   cmp    %r8d,%esi
            ││   │    0x00007fcecb254b57:   jbe    0x00007fcecb2551c5           ;*baload {reexecute=0 rethrow=0 return_oop=0}
            ││   │                                                              ; - java.lang.StringLatin1::charAt@8 (line 47)
            ││   │                                                              ; - java.lang.String::charAt@12 (line 1555)
            ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.04%    ││   │    0x00007fcecb254b5d:   movzbl 0x10(%r8,%rcx,8),%ecx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
            ││   │                                                              ; - java.lang.StringLatin1::charAt@12 (line 47)
            ││   │                                                              ; - java.lang.String::charAt@12 (line 1555)
            ││   │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.03%    ││   │↗   0x00007fcecb254b63:   test   $0xffffff00,%ecx
            ││╭  ││   0x00007fcecb254b69:   jne    0x00007fcecb254bff           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │││  ││                                                             ; - java.lang.CharacterData::of@4 (line 78)
            │││  ││                                                             ; - java.lang.Character::getType@1 (line 11557)
            │││  ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │││  ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.06%    │││  ││   0x00007fcecb254b6f:   mov    %r11,%rsi
   0.03%    │││  ││↗  0x00007fcecb254b72:   mov    0x8(%rsi),%ebx
   0.02%    │││  │││  0x00007fcecb254b75:   movabs $0x7fce4f000000,%rdi
   0.02%    │││  │││  0x00007fcecb254b7f:   lea    (%rdi,%rbx,1),%rbx
   0.06%    │││  │││  0x00007fcecb254b83:   cmp    -0x42a(%rip),%rbx        # 0x00007fcecb254760
            │││  │││                                                            ;   {section_word}
   0.04%    │││╭ │││  0x00007fcecb254b8a:   je     0x00007fcecb254ba5
            ││││ │││  0x00007fcecb254b90:   cmp    -0x42f(%rip),%rbx        # 0x00007fcecb254768
            ││││ │││                                                            ;   {section_word}
            ││││╭│││  0x00007fcecb254b97:   je     0x00007fcecb254c0e
            ││││││││  0x00007fcecb254b9d:   data16 xchg %ax,%ax
            ││││││││  0x00007fcecb254ba0:   jmp    0x00007fcecb2551ea
   0.01%    │││↘││││  0x00007fcecb254ba5:   cmp    $0x100,%ecx
            │││ ││││  0x00007fcecb254bab:   jae    0x00007fcecb255229           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
            │││ ││││                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
            │││ ││││                                                            ; - java.lang.Character::getType@5 (line 11557)
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.05%    │││ ││││  0x00007fcecb254bb1:   mov    $0x1f,%esi
   0.02%    │││ ││││  0x00007fcecb254bb6:   and    0x10(%r10,%rcx,4),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - java.lang.CharacterDataLatin1::getType@9 (line 111)
            │││ ││││                                                            ; - java.lang.Character::getType@5 (line 11557)
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.19%    │││ ││││  0x00007fcecb254bbb:   mov    $0x23e,%ebx
   0.01%    │││ ││││  0x00007fcecb254bc0:   mov    %esi,%ecx
   0.01%    │││ ││││  0x00007fcecb254bc2:   shr    %cl,%ebx                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
            │││ ││││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
   0.23%    │││ ││││  0x00007fcecb254bc4:   test   $0x1,%ebx
            │││ ││││  0x00007fcecb254bca:   jne    0x00007fcecb2547fd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@35 (line 43)
   0.09%    │││ ││││  0x00007fcecb254bd0:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@38 (line 44)
   0.06%    ↘││ ││││  0x00007fcecb254bd3:   cmp    %r9d,%r8d
             ││ ││││  0x00007fcecb254bd6:   jle    0x00007fcecb2547fd
   0.03%     ││ ││││  0x00007fcecb254bdc:   nopl   0x0(%rax)
   0.01%     ││ │╰││  0x00007fcecb254be0:   jmp    0x00007fcecb254b40           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
             ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@24 (line 43)
             ↘│ │ ││  0x00007fcecb254be5:   shr    %esi                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
              │ │ ││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
              │ │ ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
              │ │ ││                                                            ; - java.lang.String::charAt@21 (line 1557)
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.02%      │ │ ││  0x00007fcecb254be7:   cmp    %r8d,%esi
              │ │ ││  0x00007fcecb254bea:   jbe    0x00007fcecb255173           ;* unwind (locked if synchronized)
              │ │ ││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
              │ │ ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
              │ │ ││                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
              │ │ ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
              │ │ ││                                                            ; - java.lang.String::charAt@21 (line 1557)
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.01%      │ │ ││  0x00007fcecb254bf0:   mov    %r8d,%esi
              │ │ ││  0x00007fcecb254bf3:   shl    %esi
   0.00%      │ │ ││  0x00007fcecb254bf5:   movzwl 0x10(%rsi,%rcx,8),%ecx       ;* unwind (locked if synchronized)
              │ │ ││                                                            ; - java.lang.StringUTF16::getChar@-3
              │ │ ││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
              │ │ ││                                                            ; - java.lang.String::charAt@21 (line 1557)
              │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
   0.00%      │ │ ╰│  0x00007fcecb254bfa:   jmp    0x00007fcecb254b63
   0.00%      ↘ │  │  0x00007fcecb254bff:   movabs $0x7fec6e7d8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007fec6e7d8})}
   0.00%        │  ╰  0x00007fcecb254c09:   jmp    0x00007fcecb254b72
   0.00%        ↘     0x00007fcecb254c0e:   mov    %r8d,0x2c(%rsp)
                      0x00007fcecb254c13:   mov    %ecx,%edx                    ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                                ; - java.lang.Character::getType@5 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
                      0x00007fcecb254c15:   mov    %ecx,0x28(%rsp)
   0.00%              0x00007fcecb254c19:   xchg   %ax,%ax
                      0x00007fcecb254c1b:   call   0x00007fcecac2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
                                                                                ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                                ; - java.lang.Character::getType@5 (line 11557)
                                                                                ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
                                                                                ;   {optimized virtual_call}
                      0x00007fcecb254c20:   nopl   0xa000710(%rax,%rax,1)       ;   {other}
                      0x00007fcecb254c28:   and    $0x1f,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  13.10%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, java.util.stream.ReferencePipeline::forEachWithCancel, version 3, compile id 1127 

                                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
                                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
                                                                            ;   {virtual_call}
                  0x00007fcecb25d208:   nopl   0x7000378(%rax,%rax,1)       ;   {other}
          ╭       0x00007fcecb25d210:   jmp    0x00007fcecb25d330           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
          │       0x00007fcecb25d215:   data16 data16 nopw 0x0(%rax,%rax,1) ;*invokeinterface cancellationRequested {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.stream.Sink$ChainedReference::cancellationRequested@4 (line 266)
          │                                                                 ; - java.util.stream.ReferencePipeline::forEachWithCancel@1 (line 129)
   0.30%  │   ↗   0x00007fcecb25d220:   movzbl 0xc(,%rsi,8),%r11d           ;*getfield hasValue {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.FindOps$FindSink::cancellationRequested@1 (line 187)
          │   │                                                             ; - java.util.stream.Sink$ChainedReference::cancellationRequested@4 (line 266)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@1 (line 129)
          │   │   0x00007fcecb25d229:   test   %r11d,%r11d
          │   │   0x00007fcecb25d22c:   jne    0x00007fcecb25d3f5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@8 (line 129)
          │   │   0x00007fcecb25d232:   cmpb   $0x0,0x1c(%rdx)
          │   │   0x00007fcecb25d236:   je     0x00007fcecb25d3e5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@9 (line 1463)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
   0.31%  │   │   0x00007fcecb25d23c:   mov    0x20(%rdx),%esi              ;*getfield prev {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@17 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d23f:   nop                                 ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=NarrowOop [16]=Oop [24]=Oop }
          │   │                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                             ; - (reexecute) java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
          │   │   0x00007fcecb25d240:   cmpl   $0x1084248,0x8(,%rsi,8)      ; implicit exception: dispatches to 0x00007fcecb25d63c
          │   │                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/TrampolinePredicate$$Lambda+0x00007fce50084248&apos;)}
   0.29%  │   │   0x00007fcecb25d24b:   jne    0x00007fcecb25d51b           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@1
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
   0.16%  │   │   0x00007fcecb25d251:   mov    0x24(%rdx),%r8d              ;*getfield val$f {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@13 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d255:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=NarrowOop [16]=Oop [24]=Oop }
          │   │                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                             ; - (reexecute) java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
          │   │   0x00007fcecb25d260:   cmpl   $0x102bc58,0x8(,%r8,8)       ; implicit exception: dispatches to 0x00007fcecb25d65f
          │   │                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/ATrampoline$$Lambda+0x00007fce5002bc58&apos;)}
   0.30%  │   │   0x00007fcecb25d26c:   jne    0x00007fcecb25d4f3           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d272:   mov    0x14(,%rsi,8),%r8d           ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                             ; - (reexecute) java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
          │   │   0x00007fcecb25d27a:   test   %eax,0x0(,%r8,8)             ; implicit exception: deoptimizes
          │   │                                                             ; ImmutableOopMap {rsi=NarrowOop r8=NarrowOop [16]=Oop [24]=Oop }
   0.87%  │   │   0x00007fcecb25d282:   mov    0x18(,%rsi,8),%r11d          ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@5
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d28a:   mov    0xc(,%rsi,8),%r9d            ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@9
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d292:   mov    0x10(,%rsi,8),%ebx           ;*getfield arg$4 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@13
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d299:   shl    $0x3,%r8                     ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@1
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
   0.27%  │   │   0x00007fcecb25d29d:   shl    $0x3,%r11                    ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@5
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d2a1:   shl    $0x3,%rsi                    ;*getfield prev {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@17 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d2a5:   mov    %rsi,0x8(%rsp)
          │   │   0x00007fcecb25d2aa:   mov    %r8,%rsi
   0.28%  │   │   0x00007fcecb25d2ad:   mov    %r11,%rdx
          │   │   0x00007fcecb25d2b0:   mov    %r9d,%ecx
          │   │   0x00007fcecb25d2b3:   mov    %ebx,%r8d                    ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@16
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │   0x00007fcecb25d2b6:   nop
   0.29%  │   │   0x00007fcecb25d2b7:   call   0x00007fcecac2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
          │   │                                                             ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=1}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fce50084248::jump@16
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fce5002bc58::apply@4
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │                                                             ;   {optimized virtual_call}
   0.36%  │   │   0x00007fcecb25d2bc:   nopl   0xb00042c(%rax,%rax,1)       ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - java.util.stream.Stream$1::tryAdvance@39 (line 1469)
          │   │                                                             ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          │   │                                                             ;   {other}
          │   │   0x00007fcecb25d2c4:   cmpb   $0x0,0x40(%r15)
   0.49%  │╭  │   0x00007fcecb25d2c9:   jne    0x00007fcecb25d356
   0.27%  ││  │   0x00007fcecb25d2cf:   mov    0x10(%rsp),%rdx
   0.54%  ││  │↗  0x00007fcecb25d2d4:   mov    %rax,%rsi
          ││  ││  0x00007fcecb25d2d7:   shr    $0x3,%rsi
   0.00%  ││  ││  0x00007fcecb25d2db:   mov    %esi,0x20(%rdx)
   1.76%  ││  ││  0x00007fcecb25d2de:   mov    %rdx,%rsi
          ││  ││  0x00007fcecb25d2e1:   xor    %rax,%rsi
          ││  ││  0x00007fcecb25d2e4:   test   $0xffffffffffe00000,%rsi
          ││╭ ││  0x00007fcecb25d2eb:   je     0x00007fcecb25d311
   0.00%  │││ ││  0x00007fcecb25d2f1:   test   %rax,%rax
          │││╭││  0x00007fcecb25d2f4:   je     0x00007fcecb25d311
   0.09%  ││││││  0x00007fcecb25d2fa:   mov    0x20(%rsp),%r10
   0.01%  ││││││  0x00007fcecb25d2ff:   mov    %rdx,%rsi
          ││││││  0x00007fcecb25d302:   shr    $0x9,%rsi
          ││││││  0x00007fcecb25d306:   cmpb   $0x2,(%rsi,%r10,1)
   0.20%  ││││││  0x00007fcecb25d30b:   jne    0x00007fcecb25d390           ;*putfield prev {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - java.util.stream.Stream$1::tryAdvance@43 (line 1469)
          ││││││                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
   0.07%  ││↘↘││  0x00007fcecb25d311:   mov    0x18(%rsp),%rsi              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
   0.18%  ││  ││  0x00007fcecb25d316:   mov    %rax,%rdx
   0.00%  ││  ││  0x00007fcecb25d319:   movabs $0xffffffffffffffff,%rax
          ││  ││  0x00007fcecb25d323:   call   0x00007fcecac2f680           ; ImmutableOopMap {[16]=Oop [24]=Oop }
          ││  ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@13 (line 129)
          ││  ││                                                            ;   {virtual_call}
   0.22%  ││  ││  0x00007fcecb25d328:   nopl   0xc000498(%rax,%rax,1)       ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
          ││  ││                                                            ;   {other}
          ↘│  ││  0x00007fcecb25d330:   mov    0x18(%rsp),%rcx
   2.76%   │  ││  0x00007fcecb25d335:   mov    0x10(%rsp),%rdx
           │  ││  0x00007fcecb25d33a:   mov    0xc(%rcx),%esi               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.stream.Sink$ChainedReference::cancellationRequested@1 (line 266)
           │  ││                                                            ; - java.util.stream.ReferencePipeline::forEachWithCancel@1 (line 129)
   1.16%   │  ││  0x00007fcecb25d33d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdx=Oop rsi=NarrowOop [16]=Oop [24]=Oop }
           │  ││                                                            ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
           │  ││                                                            ; - (reexecute) java.util.stream.ReferencePipeline::forEachWithCancel@0 (line 129)
           │  ││  0x00007fcecb25d340:   cmpl   $0x223cd8,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007fcecb25d682
           │  ││                                                            ;   {metadata(&apos;java/util/stream/FindOps$FindSink$OfRef&apos;)}
   1.70%   │  ╰│  0x00007fcecb25d34b:   je     0x00007fcecb25d220
           │   │  0x00007fcecb25d351:   jmp    0x00007fcecb25d548
           ↘   │  0x00007fcecb25d356:   mov    0x10(%rsp),%rdx
               │  0x00007fcecb25d35b:   lea    0x20(%rdx),%rsi
               │  0x00007fcecb25d35f:   mov    (%rsi),%esi
               │  0x00007fcecb25d361:   test   %esi,%esi
               ╰  0x00007fcecb25d363:   je     0x00007fcecb25d2d4
                  0x00007fcecb25d369:   mov    0x28(%r15),%r10
                  0x00007fcecb25d36d:   shl    $0x3,%rsi
                  0x00007fcecb25d371:   test   %r10,%r10
....................................................................................................
  12.88%  <total for region 4>

....[Hottest Regions]...............................................................................
  19.01%      jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1085 
  14.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
  13.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
  12.88%      jvmci, level 4  java.util.stream.ReferencePipeline::forEachWithCancel, version 3, compile id 1127 
   8.60%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda.0x00007fce50084000::test, version 2, compile id 1086 
   4.54%                      <unknown> 
   3.92%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1065 
   2.68%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1065 
   2.54%      jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1138 
   2.49%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
   2.33%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda.0x00007fce50084000::test, version 2, compile id 1086 
   2.02%    perf-2118669.map  [unknown] 
   1.54%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1048 
   1.45%              kernel  [unknown] 
   1.22%      jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 1302 
   1.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
   0.41%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
   0.34%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.31%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   4.70%  <...other 818 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  31.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1087 
  19.01%      jvmci, level 4  java.lang.CharacterDataLatin1::toLowerCase, version 6, compile id 1085 
  12.88%      jvmci, level 4  java.util.stream.ReferencePipeline::forEachWithCancel, version 3, compile id 1127 
  10.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda.0x00007fce50084000::test, version 2, compile id 1086 
   6.60%      jvmci, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 4, compile id 1065 
   4.83%                      <unknown> 
   4.51%              kernel  [unknown] 
   2.56%      jvmci, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 1138 
   2.04%    perf-2118669.map  [unknown] 
   1.65%      jvmci, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 1302 
   1.56%      jvmci, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 1048 
   0.34%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.12%      jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1023 
   0.08%      jvmci, level 4  java.lang.String::&lt;init&gt;, version 3, compile id 1366 
   0.07%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.06%      jvmci, level 4  java.lang.StringUTF16::putCharsSB, version 2, compile id 1420 
   0.05%      jvmci, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 1093 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::test, version 3, compile id 1301 
   0.03%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.88%  <...other 195 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.47%      jvmci, level 4
   4.83%                    
   4.51%              kernel
   2.04%    perf-2118669.map
   0.41%           libjvm.so
   0.34%        runtime stub
   0.24%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.04%         interpreter
   0.02%    Unknown, level 0
   0.02%          libjava.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:45

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

Benchmark                           Mode  Cnt   Score   Error  Units
PalindromeBenchmark.functional      avgt    5  10.853 ± 0.074  ms/op
PalindromeBenchmark.functional:asm  avgt          NaN            ---
PalindromeBenchmark.iterative       avgt    5   3.160 ± 0.005  ms/op
PalindromeBenchmark.iterative:asm   avgt          NaN            ---
PalindromeBenchmark.recursive       avgt    5   3.730 ± 0.005  ms/op
PalindromeBenchmark.recursive:asm   avgt          NaN            ---
PalindromeBenchmark.trampoline      avgt    5   5.357 ± 0.029  ms/op
PalindromeBenchmark.trampoline:asm  avgt          NaN            ---
