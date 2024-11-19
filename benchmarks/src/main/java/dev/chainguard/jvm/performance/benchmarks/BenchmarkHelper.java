package dev.chainguard.jvm.performance.benchmarks;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.WordFrequencyBenchmark;

import java.io.IOException;
import java.io.InputStream;
import java.io.UncheckedIOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Objects;

import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;

public class BenchmarkHelper {

    private BenchmarkHelper() {
    }

    public static String copyResource(String path) {
        try (InputStream input = WordFrequencyBenchmark.class.getResourceAsStream("/" + path)) {
            Objects.requireNonNull(input, "Resource not found: '%s'".formatted(path));
            Path tmpFile = Files.createTempFile(path, "");
            Files.copy(input, tmpFile, REPLACE_EXISTING);
            return tmpFile.toString();
        } catch (IOException e) {
            throw new UncheckedIOException(e);
        }
    }
}
