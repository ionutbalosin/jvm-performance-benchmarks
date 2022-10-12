package com.ionutbalosin.jvm.performance.benchmarks.jit.lambda;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests chaining anonymous class optimizations (capture + invocation) for different depth levels.
 * Benchmark use cases are similar to the ones from ChainingLambdaBenchmark, however, instead of lambdas, there are anonymous classes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ChainingAnonymousClassBenchmark {

  @Param({"42"})
  public static int value;

  // java -jar benchmarks/target/benchmarks.jar ".*ChainingAnonymousClassBenchmark.*"

  @Benchmark
  public int baseline() {
    return value;
  }

  @Benchmark
  public int depth_1() {
    return l23().next().get();
  }

  @Benchmark
  public int depth_2() {
    return l22().next().next().get();
  }

  @Benchmark
  public int depth_3() {
    return l21().next().next().next().get();
  }

  @Benchmark
  public int depth_4() {
    return l20().next().next().next().next().get();
  }

  @Benchmark
  public int depth_5() {
    return l19().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_6() {
    return l18().next().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_8() {
    return l16().next().next().next().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_12() {
    return l12()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }

  @Benchmark
  public int depth_16() {
    return l8().next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }

  @Benchmark
  public int depth_24() {
    return l0().next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }

  private TailLevel l24() {
    return () -> value;
  }

  private Level23 l23() {
    return new Level23() {
      @Override
      public TailLevel next() {
        return l24();
      }
    };
  }

  private Level22 l22() {
    return new Level22() {
      @Override
      public Level23 next() {
        return l23();
      }
    };
  }

  private Level21 l21() {
    return new Level21() {
      @Override
      public Level22 next() {
        return l22();
      }
    };
  }

  private Level20 l20() {
    return new Level20() {
      @Override
      public Level21 next() {
        return l21();
      }
    };
  }

  private Level19 l19() {
    return new Level19() {
      @Override
      public Level20 next() {
        return l20();
      }
    };
  }

  private Level18 l18() {
    return new Level18() {
      @Override
      public Level19 next() {
        return l19();
      }
    };
  }

  private Level17 l17() {
    return new Level17() {
      @Override
      public Level18 next() {
        return l18();
      }
    };
  }

  private Level16 l16() {
    return new Level16() {
      @Override
      public Level17 next() {
        return l17();
      }
    };
  }

  private Level15 l15() {
    return new Level15() {
      @Override
      public Level16 next() {
        return l16();
      }
    };
  }

  private Level14 l14() {
    return new Level14() {
      @Override
      public Level15 next() {
        return l15();
      }
    };
  }

  private Level13 l13() {
    return new Level13() {
      @Override
      public Level14 next() {
        return l14();
      }
    };
  }

  private Level12 l12() {
    return new Level12() {
      @Override
      public Level13 next() {
        return l13();
      }
    };
  }

  private Level11 l11() {
    return new Level11() {
      @Override
      public Level12 next() {
        return l12();
      }
    };
  }

  private Level10 l10() {
    return new Level10() {
      @Override
      public Level11 next() {
        return l11();
      }
    };
  }

  private Level9 l9() {
    return new Level9() {
      @Override
      public Level10 next() {
        return l10();
      }
    };
  }

  private Level8 l8() {
    return new Level8() {
      @Override
      public Level9 next() {
        return l9();
      }
    };
  }

  private Level7 l7() {
    return new Level7() {
      @Override
      public Level8 next() {
        return l8();
      }
    };
  }

  private Level6 l6() {
    return new Level6() {
      @Override
      public Level7 next() {
        return l7();
      }
    };
  }

  private Level5 l5() {
    return new Level5() {
      @Override
      public Level6 next() {
        return l6();
      }
    };
  }

  private Level4 l4() {
    return new Level4() {
      @Override
      public Level5 next() {
        return l5();
      }
    };
  }

  private Level3 l3() {
    return new Level3() {
      @Override
      public Level4 next() {
        return l4();
      }
    };
  }

  private Level2 l2() {
    return new Level2() {
      @Override
      public Level3 next() {
        return l3();
      }
    };
  }

  private Level1 l1() {
    return new Level1() {
      @Override
      public Level2 next() {
        return l2();
      }
    };
  }

  private Level0 l0() {
    return new Level0() {
      @Override
      public Level1 next() {
        return l1();
      }
    };
  }
}
