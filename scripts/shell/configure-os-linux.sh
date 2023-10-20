#!/bin/bash
#
# JVM Performance Benchmarks
#
# Copyright (C) 2019 - 2023 Ionut Balosin
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

set_isolcpus() {
  grub_file='/etc/default/grub'
  grub_file_backup='/etc/default/grub.backup'

  num_physical_cores=$(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l)
  echo "Number of available physical CPU cores: $num_physical_cores"
  echo "Please specify the CPU core(s) you want to isolate, as a comma-separated list without spaces (e.g., 1,2)"
  read -p 'CPU core(s) to isolate: ' isolated_cpus
  echo ""
  echo "Current GRUB configuration: $(cat "$grub_file" | grep GRUB_CMDLINE_LINUX_DEFAULT)"
  echo "WARNING: For safety reasons, a backup copy of the GRUB configuration will be created (e.g., $grub_file_backup)..."
  cp "$grub_file" "$grub_file_backup"

  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo ""
    echo "IMPORTANT: The GRUB configuration file '$grub_file' will be updated, and the system will be restarted. This change is permanent, and to reset it, please follow the appropriate option from this menu."
    echo ""
    sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*/& isolcpus=$isolated_cpus/" "$grub_file"
    echo "New GRUB configuration: $(cat "$grub_file" | grep GRUB_CMDLINE_LINUX_DEFAULT)"
    echo ""
    echo "Updating the GRUB configuration..."
    sudo update-grub
    echo ""
    read -r -p "WARNING: To apply these changes, the system must be restarted! Press any key to continue..."
    shutdown -r now
  else
    echo ""
    sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*/& isolcpus=$isolated_cpus/" "$grub_file_backup"
    echo "New GRUB configuration: $(cat "$grub_file_backup" | grep GRUB_CMDLINE_LINUX_DEFAULT)"
  fi
}

rollback_isolcpus() {
  grub_file='/etc/default/grub'
  grub_file_backup='/etc/default/grub.backup'
  echo "Restoring the GRUB configuration from the backup copy (e.g., $grub_file_backup)..."
  echo ""
  if [ "$DRY_RUN" != "--dry-run" ]; then
    cp "$grub_file_backup" "$grub_file"
    echo "New GRUB configuration: $(cat "$grub_file" | grep GRUB_CMDLINE_LINUX_DEFAULT)"
    echo ""
    echo "Updating the GRUB configuration..."
    sudo update-grub
    echo ""
    read -r -p "WARNING: To apply these changes, the system must be restarted! Press any key to continue..."
    shutdown -r now
  else
    echo "New GRUB configuration: $(cat "$grub_file_backup" | grep GRUB_CMDLINE_LINUX_DEFAULT)"
  fi
}

configure_isolcpus() {
  isolated_cpus=$(cat /sys/devices/system/cpu/isolated)
  if [ "$isolated_cpus" == "" ]; then
    while :; do
      read -p "Do you want to set CPU core(s) isolation with isolcpus? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        set_isolcpus
        break
        ;;
      no)
        break
        ;;
      *)
        echo "Sorry, I don't understand. Please try again!"
        ;;
      esac
    done
  else
    echo "WARNING: CPU(s) isolation with isolcpus is already configured for the CPU core(s): $isolated_cpus"
    while :; do
      read -p "Do you want to reset it to the initial value? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        rollback_isolcpus
        break
        ;;
      no)
        echo "WARNING: Please use this value (e.g., $isolated_cpus) while configuring CPU(s) affinity."
        break
        ;;
      *)
        echo "Sorry, I don't understand. Please try again!"
        ;;
      esac
    done
  fi
}

set_cgroups() {
  cgroup='jvm-performance-benchmarks'
  echo "Available cgroup controllers: $(cat /sys/fs/cgroup/cgroup.controllers)"
  cgroupv2=$(mount -l | grep cgroup2)
  if [ -z "$cgroupv2" ]; then
    echo "ERROR: cgroup v2 needs to be configured. This is available since Linux 4.5."
    return 1
  fi
  sudo echo "+cpu" >>/sys/fs/cgroup/cgroup.subtree_control
  sudo echo "+cpuset" >>/sys/fs/cgroup/cgroup.subtree_control
  echo "Assigned cgroup subtree control: $(cat /sys/fs/cgroup/cgroup.subtree_control)"
  echo ""
  echo "Creating cgroup $cgroup ..."
  sudo mkdir /sys/fs/cgroup/$cgroup/
  sudo echo "+cpu" >>/sys/fs/cgroup/$cgroup/cgroup.subtree_control
  sudo echo "+cpuset" >>/sys/fs/cgroup/$cgroup/cgroup.subtree_control
  echo "Assigned cgroup $cgroup subtree control: $(cat /sys/fs/cgroup/$cgroup/cgroup.subtree_control)"
  echo ""
  sudo mkdir /sys/fs/cgroup/$cgroup/tasks/
  echo "Number of available physical CPU cores: $(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l)"
  echo "Number of available effective (physical and logical) CPU cores: $(cat /sys/fs/cgroup/cpuset.cpus.effective)"
  echo "Please specify the CPU core(s) you want to isolate, as a comma-separated list without spaces (e.g., 1,2)"
  read -p 'CPU core(s) to isolate: ' cgroup_cpus
  echo "$cgroup_cpus" >/sys/fs/cgroup/$cgroup/tasks/cpuset.cpus
  echo "Assigned CPU(s) to the $cgroup cgroup: $(cat /sys/fs/cgroup/$cgroup/tasks/cpuset.cpus)"
  echo ""
  echo "Assign the current shell process to the $cgroup cgroup, so all subsequent processes started from the same shell will belong to the same cgroup."
  echo $$ >/sys/fs/cgroup/$cgroup/tasks/cgroup.procs
  echo "Assigned cgroup PID(s) process(es): $(cat /sys/fs/cgroup/$cgroup/tasks/cgroup.procs)"
}

rollback_cgroups() {
  cgroup='jvm-performance-benchmarks'
  if [ $(dpkg-query -W -f='${Status}' cgroup-tools 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    echo "WARNING: cgroup-tools is not installed. Trying to install it..."
    apt-get install cgroup-tools
  fi
  echo "Deleting the cgroup $cgroup..."
  sudo cgdelete -r cpu,cpuset:/$cgroup
}

configure_cgroups() {
  cgroup='jvm-performance-benchmarks'
  if [ ! -d "/sys/fs/cgroup/$cgroup" ]; then
    while :; do
      read -p "Do you want to set CPU core(s) isolation with cgroups? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        set_cgroups
        break
        ;;
      no)
        break
        ;;
      *)
        echo "Sorry, I don't understand. Please try again!"
        ;;
      esac
    done
  else
    echo "WARNING: cgroup $cgroup already exists."
    while :; do
      read -p "Do you want to delete the cgroup $cgroup? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        rollback_cgroups
        break
        ;;
      no)
        break
        ;;
      *)
        echo "Sorry, I don't understand. Please try again!"
        ;;
      esac
    done
  fi
}

disable_aslr() {
  aslr="/proc/sys/kernel/randomize_va_space"
  echo "Current ASLR configuration: $(cat "$aslr")"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo "Disabling ASLR..."
    echo 0 >"$aslr"
  fi
  echo "New ASLR configuration: $(cat "$aslr")"
}

configure_aslr() {
  while :; do
    read -p "Do you want to disable ASLR? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      disable_aslr
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

disable_turbo_boost() {
  # Intel
  no_turbo="/sys/devices/system/cpu/intel_pstate/no_turbo"
  if [ -f "$no_turbo" ]; then
    echo "Current turbo boost configuration for Intel: $(cat "$no_turbo")"
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Enabling turbo boost..."
      echo 1 >"$no_turbo"
    fi
    echo "New turbo boost configuration: $(cat "$no_turbo")"
  fi
  # AMD
  boost="/sys/devices/system/cpu/cpufreq/boost"
  if [ -f "$boost" ]; then
    echo "Current turbo boost configuration for AMD: $(cat "$no_turbo")"
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Disabling turbo boost..."
      echo 0 >"$boost"
    fi
    echo "New turbo boost configuration: $(cat "$boost")"
  fi
}

configure_turbo_boost() {
  while :; do
    read -p "Do you want to disable turbo boost mode? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      disable_turbo_boost
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

set_scaling_governor() {
  cat /sys/bus/cpu/drivers/processor/cpu*/cpufreq/affected_cpus | grep -v '^[[:space:]]*$' | while IFS= read -r cpu; do
    echo "Available CPU$cpu governors: $(cat /sys/bus/cpu/drivers/processor/cpu$cpu/cpufreq/scaling_available_governors)"
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Setting CPU$cpu governor to performance..."
      echo "performance" >"/sys/devices/system/cpu/cpu$cpu/cpufreq/scaling_governor"
    fi
    echo "New CPU$cpu governor configuration: $(cat /sys/devices/system/cpu/cpu$cpu/cpufreq/scaling_governor)"
    echo ""
  done
}

configure_scaling_governor() {
  while :; do
    read -p "Do you want to set the CPU governor to performance? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      set_scaling_governor
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

disable_hyper_threading() {
  siblings=$(grep -F , /sys/devices/system/cpu/cpu*/topology/thread_siblings_list | cut -d, -f2 | sort -u)
  if [ "$siblings" == "" ]; then
    echo "WARNING: No logical CPU siblings found. Hyper-threading may already be disabled."
  else
    for sibling in $siblings; do
      cpu="/sys/devices/system/cpu/cpu$sibling/online"
      echo "Current hyper-threading configuration for logical CPU$sibling: $(cat "$cpu")"
      if [ "$DRY_RUN" != "--dry-run" ]; then
        echo "Disabling hyper-threading configuration for logical CPU$sibling..."
        echo 0 >"$cpu"
      fi
      echo "New hyper-threading configuration for logical CPU$sibling: $(cat "$cpu")"
      echo ""
    done
  fi
}

configure_hyper_threading() {
  while :; do
    read -p "Do you want to disable CPU hyper-threading? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      disable_hyper_threading
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

confirm_os_settings() {
  while :; do
    read -r -p "Do you want to proceed with the OS configuration settings? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      if [[ $EUID != 0 ]]; then
        echo ""
        echo "WARNING: OS configuration requires sudo admin rights (e.g., 'sudo ./run-benchmarks.sh'). Otherwise, the configuration may fail."
        read -r -p "Press ENTER to continue, or CTRL+C to abort ... "
      fi
      return 0
      ;;
    no)
      return 1
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

DRY_RUN="$1"

echo ""
echo "+-------------------+"
echo "| Linux OS Settings |"
echo "+-------------------+"
echo "Summary:"
echo " - For reliable benchmarking and consistent measurements, a proper OS configuration is crucial. However, the effectiveness can vary across different operating systems."
echo " - This includes:"
echo "   - Setting CPU isolation"
echo "   - Disabling address space layout randomization (ASLR)"
echo "   - Disabling turbo boost mode"
echo "   - Setting the CPU governor to performance"
echo "   - Disabling CPU hyper-threading"
echo "WARNING: The current configuration has been tested on a Debian-based Linux distribution (e.g., Ubuntu)."
echo ""
if ! confirm_os_settings; then
  return 1
fi

echo ""
echo "+---------------------------------+"
echo "| Set CPU Isolation with isolcpus |"
echo "+---------------------------------+"
echo "isolcpus - isolates specific CPUs from the kernel scheduler"
echo "Considerations:"
echo " - 1. Isolated CPUs aren't automatically balanced by the scheduler, which might affect multi-threaded applications. Taskset can help manually distribute tasks."
echo " - 2. The isolated CPU list is static and requires a system restart to change."
echo "Recommendations:"
echo " - 1. Use isolcpus for latency-critical tasks where even minimal scheduler interference is unacceptable."
echo " - 2. Combining isolcpus with thread affinity (taskset) can improve memory locality."
echo "WARNING: If isolcpus isn't necessary, cgroups are recommended for CPU isolation."
echo ""
configure_isolcpus

echo ""
echo "+--------------------------------+"
echo "| Set CPU Isolation with cgroups |"
echo "+--------------------------------+"
echo "cgroups - isolates resource usage for processes. Can improve throughput and latency even with non-isolated CPUs."
echo "Recommendations:"
echo " - 1. Use cgroups when understanding hardware and application threads. Consider socket-level splitting for multi-socket CPUs."
echo " - 2. Additional configuration may be needed to ignore interrupts on non-isolated CPUs (e.g., irqbalance with IRQBALANCE_BANNED_CPUS)."
echo "WARNING: cgroups are recommended unless isolcpus is specifically needed."
echo ""
configure_cgroups

echo ""
echo "+---------------------------------------------------+"
echo "| Disable Address Space Layout Randomization (ASLR) |"
echo "+---------------------------------------------------+"
echo "ASLR - a security technique that randomizes memory addresses to prevent exploitation of memory corruption vulnerabilities."
echo "WARNING: Disabling ASLR is optional and mostly preferable for local testing environments to obtain consistent measurements."
echo ""
configure_aslr

echo ""
echo "+--------------------------+"
echo "| Disable Turbo Boost Mode |"
echo "+--------------------------+"
echo "Turbo Boost Mode - increases CPU frequency during demanding tasks."
echo "WARNING: Disabling turbo boost is recommended for consistent measurements."
echo ""
configure_turbo_boost

echo ""
echo "+---------------------------------+"
echo "| Set CPU Governor to Performance |"
echo "+---------------------------------+"
echo "CPU Governor to Performance - ensures maximum frequency and avoids underclocking."
echo "WARNING: Setting the CPU governor to performance is recommended for consistent measurements."
echo ""
configure_scaling_governor

echo ""
echo "+-----------------------------+"
echo "| Disable CPU Hyper-Threading |"
echo "+-----------------------------+"
echo "CPU Hyper-Threading - enhances parallelization by allowing one physical core to handle two threads."
echo "In general, the CPU's architectural state is replicated, not the execution resources."
echo "WARNING: Disabling hyper-threading is recommended for consistent measurements."
echo ""
configure_hyper_threading
