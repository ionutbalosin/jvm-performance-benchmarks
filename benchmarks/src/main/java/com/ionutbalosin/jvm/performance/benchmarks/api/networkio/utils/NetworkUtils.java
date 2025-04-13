/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils;

import static java.util.Optional.empty;
import static java.util.Optional.ofNullable;

import java.io.IOException;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.ServerSocket;
import java.net.SocketException;
import java.util.Enumeration;
import java.util.Optional;

public class NetworkUtils {

  public static final int PORT = getFirstAvailablePort(8080, 256);
  public static final String HOST = getLocalIpAddress();

  public enum BufferSize {
    _1_KB(1024);

    private int sizeInBytes;

    BufferSize(int sizeInBytes) {
      this.sizeInBytes = sizeInBytes;
    }

    public int get() {
      return sizeInBytes;
    }
  }

  // Finds the first available port starting from a given port number
  // while making a maximum number of attempts
  private static Integer getFirstAvailablePort(int startPort, int maxAttempts) {
    for (int port = startPort; port < startPort + maxAttempts; port++) {
      if (isPortAvailable(port)) {
        return port;
      }
    }
    throw new RuntimeException(
        "Unable to find an available port within the range ["
            + startPort
            + ","
            + (startPort + maxAttempts)
            + "]");
  }

  // Finds a non-loopback, site-local IP address from the available network interfaces
  // Note: In the context of identifying a local IP address that can be used for communication with
  // other devices within the same network, loopback addresses are not relevant
  private static String getLocalIpAddress() {
    try {
      final Enumeration<NetworkInterface> networkInterfaces =
          NetworkInterface.getNetworkInterfaces();
      while (networkInterfaces.hasMoreElements()) {
        final NetworkInterface networkInterface = networkInterfaces.nextElement();
        if (isValidNetworkInterface(networkInterface)) {
          final Optional<String> networkInterfaceAddress = getHostAddress(networkInterface);
          if (networkInterfaceAddress.isPresent()) {
            return networkInterfaceAddress.get();
          }
        }
      }
      throw new RuntimeException("Unable to find any active local IP address");
    } catch (Exception ex) {
      throw new RuntimeException(
          "Encountered a network-related exception while searching for local IP address: "
              + ex.getMessage());
    }
  }

  private static boolean isPortAvailable(int port) {
    try (ServerSocket serverSocket = new ServerSocket(port)) {
      // The port is available if the ServerSocket is successfully created
      return true;
    } catch (IOException e) {
      return false;
    }
  }

  private static boolean isValidNetworkInterface(NetworkInterface networkInterface) {
    try {
      return networkInterface.isUp()
          && !networkInterface.isLoopback()
          && networkInterface.supportsMulticast();
    } catch (SocketException ex) {
      return false;
    }
  }

  // Tries to retrieve a site-local IP address from the available network interface
  private static Optional<String> getHostAddress(NetworkInterface networkInterface) {
    final Enumeration<InetAddress> addresses = networkInterface.getInetAddresses();
    while (addresses.hasMoreElements()) {
      InetAddress address = addresses.nextElement();
      if (address.isSiteLocalAddress()) {
        return ofNullable(address.getHostAddress());
      }
    }
    return empty();
  }
}
