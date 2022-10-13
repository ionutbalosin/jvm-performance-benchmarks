package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import static java.util.stream.Collectors.toList;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import java.util.function.Consumer;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/**
 * This test is based on two scenarios: Scenario I - a method which returns a List and, outside of
 * the method, iterates through it using a forEach() and a target consumer Scenario II - passes the
 * target consumer into a method which internally uses a forEach() and the consumer received as an
 * argument to handle the list elements
 */

//  Pattern:
//
//      // Scenario I
//      external_for_each() {
//          callAMethodThatReturnsAList()
//              .forEach(<consumer>)
//      }
//
//      // Scenario II
//      passing_consumer() {
//          callAMethodThatAcceptsAConsumer(<consumer>)
//          // this method internally uses a forEach() and the <consumer> received as argument
//      }
//
//    where <consumer> implements the Consumer::accept method to handle every list element
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class PassingConsumerVsExternalForEachIteratorBenchmark {

  private final int size = 1_000_000;
  private final int maxNoOfProducts = 512;
  private List<Order> orders;

  @Setup
  public void setup() {
    Random random = new Random(16384);
    orders = new ArrayList<>(size);
    for (int i = 0; i < size; i++) {

      List<Product> products = new ArrayList<>();
      for (int j = 0; j < random.nextInt(9) + 1; j++) { // max 10 products per order
        products.add(
            new Product("Product Name - " + random.nextInt(maxNoOfProducts), random.nextFloat()));
      }

      orders.add(new Order(products, LocalDate.now()));
    }
  }

  // java -jar benchmarks/target/benchmarks.jar
  // ".*PassingConsumerVsExternalForEachIteratorBenchmark.*" -prof gc

  @Benchmark
  public Report external_for_each() {
    Report report = new Report();
    report.setCreationDate(LocalDate.now());
    getFrequentOrderedProducts()
        .forEach(
            new Consumer<Product>() {
              @Override
              public void accept(Product product) {
                report.addProduct(product);
              }
            });
    return report;
  }

  @Benchmark
  public Report passing_consumer() {
    Report report = new Report();
    report.setCreationDate(LocalDate.now());
    getFrequentOrderedProducts(
        (product) -> {
          report.addProduct(product);
        });
    return report;
  }

  private List<Product> getFrequentOrderedProducts(Consumer<Product> consumer) {
    return orders.stream()
        .filter(order -> order.getCreationDate().isAfter(LocalDate.now().minusYears(1)))
        .flatMap(order -> order.getProducts().stream())
        .map(
            product -> {
              consumer.accept(product);
              return product;
            })
        .collect(toList());
  }

  private List<Product> getFrequentOrderedProducts() {
    return orders.stream()
        .filter(order -> order.getCreationDate().isAfter(LocalDate.now().minusYears(1)))
        .flatMap(order -> order.getProducts().stream())
        .collect(toList());
  }

  static class Report {
    private LocalDate creationDate;
    private List<Product> products = new ArrayList<>();

    public void setCreationDate(LocalDate creationDate) {
      this.creationDate = creationDate;
    }

    public void addProduct(Product product) {
      this.products.add(product);
    }
  }

  static class Product {
    private String name;
    private float price;

    public Product(String name, float price) {
      this.name = name;
      this.price = price;
    }
  }

  static class Order {
    private List<Product> products;
    private LocalDate creationDate;

    public Order(List<Product> products, LocalDate creationDate) {
      this.products = products;
      this.creationDate = creationDate;
    }

    public List<Product> getProducts() {
      return products;
    }

    public LocalDate getCreationDate() {
      return creationDate;
    }
  }
}
