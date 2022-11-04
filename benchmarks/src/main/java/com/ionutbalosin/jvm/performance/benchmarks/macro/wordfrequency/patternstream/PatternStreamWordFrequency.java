/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.macro.wordfrequency.patternstream;

import static java.nio.channels.FileChannel.MapMode.READ_ONLY;
import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.util.function.Function.identity;
import static java.util.stream.Collectors.counting;
import static java.util.stream.Collectors.groupingBy;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.util.Map;
import java.util.regex.Pattern;

public class PatternStreamWordFrequency {

  private static final Pattern PATTERN = Pattern.compile("[\\W]+");

  public static Map<String, Long> frequencies(String fileName) throws IOException {
    final Map<String, Long> wordFrequencies;

    try (FileChannel channel = new RandomAccessFile(fileName, "r").getChannel()) {
      final ByteBuffer byteBuffer = channel.map(READ_ONLY, 0L, channel.size());
      final CharBuffer charBuffer = ISO_8859_1.newDecoder().decode(byteBuffer);
      wordFrequencies =
          PATTERN.splitAsStream(charBuffer).collect(groupingBy(identity(), counting()));
    }

    return wordFrequencies;
  }
}
