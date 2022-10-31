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
package com.ionutbalosin.jvm.performance.benchmarks.macro.prime.lazylist;

import java.util.function.Predicate;
import java.util.function.Supplier;

public class LazyList<T> implements AList<T> {
  private final T head;
  private final Supplier<AList<T>> tail;

  public LazyList(T head, Supplier<AList<T>> tail) {
    this.head = head;
    this.tail = tail;
  }

  public T head() {
    return head;
  }

  public AList<T> tail() {
    return tail.get();
  }

  public boolean isEmpty() {
    return head == null;
  }

  public AList<T> filter(Predicate<T> predicate) {
    return isEmpty()
        ? this
        : predicate.test(head())
            ? new LazyList<>(head(), () -> tail().filter(predicate))
            : tail().filter(predicate);
  }
}
