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
package com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome.trampoline;

import java.util.stream.Stream;

@FunctionalInterface
public interface ATrampoline<T> {

  ATrampoline<T> jump();

  default boolean isComplete() {
    return false;
  }

  default T result() {
    throw new UnsupportedOperationException();
  }

  default T invoke() {
    return Stream.iterate(this, ATrampoline::jump)
        .filter(ATrampoline::isComplete)
        .findFirst()
        .get()
        .result();
  }
}
