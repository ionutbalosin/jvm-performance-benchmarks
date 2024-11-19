package dev.chainguard.jvm.performance.benchmarks;

import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.profile.ProfilerException;
import org.openjdk.jmh.profile.ProfilerFactory;
import org.openjdk.jmh.results.RunResult;
import org.openjdk.jmh.results.format.ResultFormatFactory;
import org.openjdk.jmh.runner.*;
import org.openjdk.jmh.runner.options.Options;
import org.openjdk.jmh.runner.options.ProfilerConfig;
import org.openjdk.jmh.util.FileUtils;
import org.openjdk.jmh.util.Optional;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.*;

/**
 * Hacks around jmh to access non-public stuff
 */
public class JmhReflections {
    private static final Field GENERATED_CLASS_Q_NAME_FIELD;
    private static final Field METHOD_FIELD;
    private static final Field LIST_FIELD;
    private static final Method RUN_BENCHMARKS_METHOD;

    static {
        try {
            GENERATED_CLASS_Q_NAME_FIELD =
                    BenchmarkListEntry.class.getDeclaredField("generatedClassQName");
            GENERATED_CLASS_Q_NAME_FIELD.setAccessible(true);
            METHOD_FIELD = BenchmarkListEntry.class.getDeclaredField("method");
            METHOD_FIELD.setAccessible(true);
            LIST_FIELD = Runner.class.getDeclaredField("list");
            LIST_FIELD.setAccessible(true);
            RUN_BENCHMARKS_METHOD = Runner.class.getDeclaredMethod("runBenchmarks", SortedSet.class);
            RUN_BENCHMARKS_METHOD.setAccessible(true);
        } catch (NoSuchFieldException | NoSuchMethodException e) {
            throw new RuntimeException(e);
        }
    }

    public static BenchmarkListEntry cloneWithParams(
            BenchmarkListEntry entry, Map<String, String[]> params) {
        try {
            String generatedClassQName = (String) GENERATED_CLASS_Q_NAME_FIELD.get(entry);
            String method = (String) METHOD_FIELD.get(entry);
            return new BenchmarkListEntry(
                    entry.getUserClassQName(),
                    generatedClassQName,
                    method,
                    entry.getMode(),
                    entry.getThreads(),
                    entry.getThreadGroups(),
                    entry.getThreadGroupLabels(),
                    entry.getWarmupIterations(),
                    entry.getWarmupTime(),
                    entry.getWarmupBatchSize(),
                    entry.getMeasurementIterations(),
                    entry.getMeasurementTime(),
                    entry.getMeasurementBatchSize(),
                    entry.getForks(),
                    entry.getWarmupForks(),
                    entry.getJvm(),
                    entry.getJvmArgs(),
                    entry.getJvmArgsPrepend(),
                    entry.getJvmArgsAppend(),
                    Optional.of(params),
                    entry.getTimeUnit(),
                    entry.getOperationsPerInvocation(),
                    entry.getTimeout());
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }
    }

    /**
     * This is an ugly part-copy of the runner class.
     * It supports running benchmark for only a single combination of parameters
     */
    public static class HijackedRunner extends Runner {
        private static final String JMH_LOCK_FILE = System.getProperty("java.io.tmpdir") + "/jmh.lock";

        private final Collection<BenchmarkListEntry> list;

        public HijackedRunner(Options options, Collection<BenchmarkListEntry> list) {
            super(options);
            this.list = list;
        }

        public Collection<RunResult> run() throws RunnerException {
            final String tailMsg = " the JMH lock (" + JMH_LOCK_FILE + "), exiting. Use -Djmh.ignoreLock=true to forcefully continue.";

            File lockFile;
            try {
                lockFile = new File(JMH_LOCK_FILE);
                lockFile.createNewFile();

                // Make sure the lock file is world-writeable, otherwise the lock file created by current
                // user would not work for any other user, always failing the run.
                lockFile.setWritable(true, false);
            } catch (IOException e) {
                throw new RunnerException("ERROR: Unable to create" + tailMsg, e);
            }

            try (RandomAccessFile raf = new RandomAccessFile(lockFile, "rw");
                 FileLock lock = raf.getChannel().tryLock()) {
                if (lock == null) {
                    // Lock acquisition failed, pretend this was the overlap.
                    throw new OverlappingFileLockException();
                }
                return internalRun();
            } catch (OverlappingFileLockException e) {
                throw new RunnerException("ERROR: Another JMH instance might be running. Unable to acquire" + tailMsg);
            } catch (IOException e) {
                throw new RunnerException("ERROR: Unexpected exception while trying to acquire" + tailMsg, e);
            }
        }


        private Collection<RunResult> internalRun() throws RunnerException {
            Set<String> profilerClasses = new HashSet<>();
            ProfilersFailedException failedException = null;
            for (ProfilerConfig p : options.getProfilers()) {
                if (!profilerClasses.add(p.getKlass())) {
                    throw new RunnerException("Cannot instantiate the same profiler more than once: " + p.getKlass());
                }
                try {
                    ProfilerFactory.getProfilerOrException(p);
                } catch (ProfilerException e) {
                    if (failedException == null) {
                        failedException = new ProfilersFailedException(e);
                    } else {
                        failedException.addSuppressed(e);
                    }
                }
            }
            if (failedException != null) {
                throw failedException;
            }

            // If user requested the result file in one way or the other, touch the result file,
            // and prepare to write it out after the run.
            String resultFile = null;
            if (options.getResult().hasValue() || options.getResultFormat().hasValue()) {
                resultFile = options.getResult().orElse(
                        Defaults.RESULT_FILE_PREFIX + "." +
                                options.getResultFormat().orElse(Defaults.RESULT_FORMAT).toString().toLowerCase()
                );
                try {
                    FileUtils.touch(resultFile);
                } catch (IOException e) {
                    throw new RunnerException("Can not touch the result file: " + resultFile);
                }
            }

            List<BenchmarkListEntry> benchmarks = new ArrayList<>(list);
            //list.find(out, options.getIncludes(), options.getExcludes());

            if (benchmarks.isEmpty()) {
                out.flush();
                out.close();
                throw new NoBenchmarksException();
            }

            // override the benchmark types;
            // this may yield new benchmark records
            if (!options.getBenchModes().isEmpty()) {
                List<BenchmarkListEntry> newBenchmarks = new ArrayList<>();
                for (BenchmarkListEntry br : benchmarks) {
                    for (Mode m : options.getBenchModes()) {
                        newBenchmarks.add(br.cloneWith(m));
                    }

                }

                benchmarks.clear();
                benchmarks.addAll(newBenchmarks);
            }

            // clone with all the modes
            {
                List<BenchmarkListEntry> newBenchmarks = new ArrayList<>();
                for (BenchmarkListEntry br : benchmarks) {
                    if (br.getMode() == Mode.All) {
                        for (Mode mode : Mode.values()) {
                            if (mode == Mode.All) continue;
                            newBenchmarks.add(br.cloneWith(mode));
                        }
                    } else {
                        newBenchmarks.add(br);
                    }
                }

                benchmarks.clear();
                benchmarks.addAll(newBenchmarks);
            }

            // clone with all parameters
            {
                List<BenchmarkListEntry> newBenchmarks = new ArrayList<>();
                int index = 0;
                for (BenchmarkListEntry br : benchmarks) {
                    // Below is the commented original code. We do not, however need to "explode" params since,
                    // at this point, all entries have a single param value only
//                    if (br.getParams().hasValue()) {
//                        for (WorkloadParams p : explodeAllParams(br)) {
//                            newBenchmarks.add(br.cloneWith(p));
//                        }
//                    } else {
//                        newBenchmarks.add(br);
//                    }
                    WorkloadParams workloadParams = new WorkloadParams();
                    for (Map.Entry<String, String[]> param : br.getParams().orElse(Map.of()).entrySet()) {
                        // Make index different for every parameter, as it is the only field used in compareTo method
                        workloadParams.put(param.getKey(), param.getValue()[0], index++);
                    }
                    newBenchmarks.add(br.cloneWith(workloadParams));
                }
                benchmarks.clear();
                benchmarks.addAll(newBenchmarks);
            }

            // The `runBenchmarks` method is private, so we need to invoke it by reflection
            Collection<RunResult> results;
            try {
                results = (Collection<RunResult>) RUN_BENCHMARKS_METHOD.invoke(this, new TreeSet<>(benchmarks));
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new RuntimeException(e);
            }

            // If user requested the result file, write it out.
            if (resultFile != null) {
                ResultFormatFactory.getInstance(
                        options.getResultFormat().orElse(Defaults.RESULT_FORMAT),
                        resultFile
                ).writeOut(results);

                out.println("");
                out.println("Benchmark result is saved to " + resultFile);
            }

            out.flush();
            out.close();

            return results;
        }
    }
}
