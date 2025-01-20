package dev.chainguard.jvm.performance.benchmarks;

import java.io.File;
import java.nio.file.Path;
import org.apache.commons.cli.*;
import org.openjdk.jmh.infra.BenchmarkParams;
import org.openjdk.jmh.infra.IterationParams;
import org.openjdk.jmh.results.BenchmarkResult;
import org.openjdk.jmh.results.IterationResult;
import org.openjdk.jmh.results.RunResult;
import org.openjdk.jmh.runner.BenchmarkList;
import org.openjdk.jmh.runner.BenchmarkListEntry;
import org.openjdk.jmh.runner.Runner;
import org.openjdk.jmh.runner.RunnerException;
import org.openjdk.jmh.runner.format.OutputFormat;
import org.openjdk.jmh.runner.options.OptionsBuilder;
import org.openjdk.jmh.runner.options.TimeValue;

import java.io.IOException;
import java.util.*;
import java.util.function.Consumer;
import java.util.stream.IntStream;
import java.util.stream.Stream;

import static dev.chainguard.jvm.performance.benchmarks.JmhReflections.cloneWithParams;
import static java.util.Locale.ENGLISH;
import static org.openjdk.jmh.results.format.ResultFormatType.JSON;

public class BenchmarkRunner {
    public static final String REGEXP_ALL = ".";
    public static final String DEFAULT_RESULTS_FILE = "/tmp/results.json";

    public static final Option OPTION_NAME = Option.builder()
            .option("n")
            .longOpt("name")
            .desc("Name(s) of benchmark(s) to run. All available parameter combinations will be run." +
                    "Supported syntax: <class> or <class>.<method>")
            .hasArgs()
            .build();

    public static final Option OPTION_SPLIT = Option.builder()
            .option("s")
            .longOpt("split")
            .desc("Argument: [x]/[y]. Split workload into [y] chunks and run chunk with id [x]")
            .hasArg()
            .build();

    public static final Option OPTION_PROFILE = Option.builder()
            .option("p")
            .longOpt("profile")
            .desc("Profile containing jmh parameters. One of: " + Arrays.toString(Profile.values()))
            .hasArg()
            .build();

    public static final Option OPTION_FILE = Option.builder()
        .option("f")
        .longOpt("file")
        .desc("Results file location. Default: " + DEFAULT_RESULTS_FILE)
        .hasArg()
        .build();

    public static void main(String[] args) throws RunnerException, IOException, ParseException {
        Options options = new Options()
                .addOption(OPTION_NAME)
                .addOption(OPTION_SPLIT)
                .addOption(OPTION_PROFILE)
                .addOption(OPTION_FILE);

        if (args.length == 0) {
            printHelp(options);
            return;
        }

        List<BenchmarkListEntry> benchmarks =
                BenchmarkList.defaultList()
                        .find(new NoopOutputFormat(), List.of(REGEXP_ALL), List.of())
                        .stream()
                        .flatMap(BenchmarkRunner::splitParams)
                        .toList();
        switch (args[0]) {
            case "help" -> printHelp(options);
            case "count" -> System.out.println(benchmarks.size());
            case "list" -> list(benchmarks);
            case "run" -> run(options, args, benchmarks);
            default -> {
                System.err.println("Unknown command: " + args[0]);
                printHelp(options);
            }
        }
    }

    private static void run(Options options, String[] args, List<BenchmarkListEntry> benchmarks) throws ParseException, RunnerException {
        CommandLineParser parser = new DefaultParser();
        CommandLine cmdline = parser.parse(options, args);
        Profile profile = Profile.valueOf(cmdline.getOptionValue(OPTION_PROFILE, Profile.STANDARD.toString())
                .toUpperCase(ENGLISH).trim());
        if (cmdline.hasOption(OPTION_NAME) && cmdline.hasOption(OPTION_SPLIT)) {
            throw new ParseException("Only one of %s and %s can be used".formatted(OPTION_NAME, OPTION_SPLIT));
        }
        if (cmdline.hasOption(OPTION_SPLIT)) {
            benchmarks = splitBenchmarks(benchmarks, cmdline);
        }
        if (cmdline.hasOption(OPTION_NAME)) {
            benchmarks = filterBenchmarks(benchmarks, cmdline);
        }
        File resultsPath = new File(DEFAULT_RESULTS_FILE);
        if (cmdline.hasOption(OPTION_FILE)) {
            resultsPath = new File(cmdline.getOptionValue(OPTION_FILE));
        }

        OptionsBuilder jmhOptions = new OptionsBuilder();
        jmhOptions
                .resultFormat(JSON)
                .result(resultsPath.getAbsolutePath());
        profile.apply(jmhOptions);

        Runner runner = new JmhReflections.HijackedRunner(jmhOptions, benchmarks);
        System.out.printf("Running %s benchmarks%n", benchmarks.size());
        runner.run();
    }

    private static List<BenchmarkListEntry> filterBenchmarks(List<BenchmarkListEntry> benchmarks, CommandLine cmdline) {
        benchmarks = benchmarks.stream()
                .filter(benchmark -> {
                    for (String param : cmdline.getOptionValues(OPTION_NAME)) {
                        if (param.contains(".")) {
                            if (benchmark.getUsername().endsWith(param)) {
                                return true;
                            }
                        } else {
                            if (benchmark.getUserClassQName().endsWith(param)) {
                                return true;
                            }
                        }
                    }
                    return false;
                })
                .toList();
        return benchmarks;
    }

    private static List<BenchmarkListEntry> splitBenchmarks(List<BenchmarkListEntry> benchmarks, CommandLine cmdline)
            throws ParseException {
        String param = cmdline.getOptionValue(OPTION_SPLIT);
        int slashIndex = param.indexOf("/");
        if (slashIndex == -1) {
            throw new ParseException("Incorrect %s format. Should be [x]/[y], where [x] and [y] are numbers"
                    .formatted(OPTION_SPLIT));
        }
        int instanceId = Integer.parseInt(param.substring(0, slashIndex));
        int instanceCount = Integer.parseInt(param.substring(slashIndex + 1));
        if (instanceCount > benchmarks.size()) {
            throw new ParseException("Instance count must be lesser or equal to the number of benchmarks, which is "
                    + benchmarks.size());
        }
        if (instanceId >= instanceCount) {
            throw new ParseException("Instance id (%s) must be smaller than instance count(%s)"
                    .formatted(instanceId, instanceCount));
        }
        benchmarks =
                IntStream.range(0, benchmarks.size())
                        .filter(i -> i % instanceCount == instanceId)
                        .mapToObj(benchmarks::get)
                        .toList();
        return benchmarks;
    }

    private static void list(List<BenchmarkListEntry> benchmarks) {
        for (BenchmarkListEntry entry : benchmarks) {
            StringBuilder line = new StringBuilder(entry.getUsername());
            for (Map.Entry<String, String[]> param : entry.getParams().orElse(Map.of()).entrySet()) {
                line.append(",").append(param.getKey()).append("=").append(param.getValue()[0]);
            }
            System.out.println(line);
        }
    }

    private static void printHelp(Options options) {
        HelpFormatter formatter = HelpFormatter.builder().get();
        formatter.printHelp("""
                Usage: action [options]
                Actions:
                help - prints this message
                count - prints number of benchmarks available
                list - lists available benchmarks
                run [options] - runs benchmarks, options:
                """, options);
    }

    private static Stream<BenchmarkListEntry> splitParams(BenchmarkListEntry benchmark) {
        if (!benchmark.getParams().hasValue()) {
            return Stream.of(benchmark);
        }
        Map<String, String[]> params = benchmark.getParams().get();
        if (params.isEmpty()) {
            return Stream.of(benchmark);
        }

        List<Map<String, String[]>> results = List.of(params);
        for (String paramKey : params.keySet()) {
            results = results.stream()
                    .flatMap(param -> Arrays.stream(param.get(paramKey))
                            .map(value -> {
                                Map<String, String[]> newParams = new HashMap<>(param);
                                newParams.replace(paramKey, new String[]{value});
                                return newParams;
                            }))
                    .toList();
        }

        return results.stream().map(param -> cloneWithParams(benchmark, param));
    }

    private enum Profile {
        STANDARD(options -> {
        }),
        FAST(options -> options
                .forks(3)
                .warmupIterations(3)
                .warmupTime(TimeValue.seconds(3))
                .measurementIterations(5)
                .measurementTime(TimeValue.seconds(3))
        ),
        DUMMY(options -> options
                .forks(1)
                .warmupIterations(1)
                .warmupTime(TimeValue.milliseconds(1))
                .measurementIterations(1)
                .measurementTime(TimeValue.milliseconds(1))
        ),
        ;

        private final Consumer<OptionsBuilder> modifier;

        Profile(Consumer<OptionsBuilder> modifier) {
            this.modifier = modifier;
        }

        public void apply(OptionsBuilder options) {
            modifier.accept(options);
        }
    }

    private static class NoopOutputFormat implements OutputFormat {

        @Override
        public void iteration(BenchmarkParams benchParams, IterationParams params, int iteration) {
        }

        @Override
        public void iterationResult(
                BenchmarkParams benchParams, IterationParams params, int iteration, IterationResult data) {
        }

        @Override
        public void startBenchmark(BenchmarkParams benchParams) {
        }

        @Override
        public void endBenchmark(BenchmarkResult result) {
        }

        @Override
        public void startRun() {
        }

        @Override
        public void endRun(Collection<RunResult> result) {
        }

        @Override
        public void print(String s) {
        }

        @Override
        public void println(String s) {
        }

        @Override
        public void flush() {
        }

        @Override
        public void close() {
        }

        @Override
        public void verbosePrintln(String s) {
        }

        @Override
        public void write(int b) {
        }

        @Override
        public void write(byte[] b) {
        }
    }
}
