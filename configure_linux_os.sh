#!/usr/bin/sudo bash

set_environment_variables() {
  export ARCH="$(uname -i)"
  export JQ="jq/jq-linux64"
  echo "Operating system: Linux OS"
  echo "Architecture: $ARCH"
  echo "JSON processor executable: $JQ"
  echo ""
  read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "
}

set_isolcpus() {
  grub_file='/etc/default/grub'
  grub_file_backup='/etc/default/grub.backup'
  echo "Number of available physical CPU core(s): "$(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l)
  echo "Please specify which CPU core(s) you want to isolate, as a comma separated list without spaces (e.g., 1,2)"
  read -p 'CPU core(s) to isolate: ' isolated_cpus
  echo ""
  echo "Current GRUB configuration: "$(cat $grub_file | grep GRUB_CMDLINE_LINUX_DEFAULT)
  echo "WARNING: For safety reasons, a GRUB configuration backup copy is created (e.g., $grub_file_backup) ..."
  cp $grub_file $grub_file_backup
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo ""
    echo "IMPORTANT: The GRUB configuration file '$grub_file' will be updated and the system will be restarted. This has a permanent effect and to reset it please follow the appropriate option from this menu."
    echo ""
    sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*/& isolcpus=$isolated_cpus/" $grub_file
    echo "New GRUB configuration: "$(cat $grub_file | grep GRUB_CMDLINE_LINUX_DEFAULT)
    echo ""
    echo "Updating the GRUB configuration ..."
    sudo update-grub
    echo ""
    read -r -p "WARNING: To apply these changes the system must be restarted! Press any key to continue ..."
    shutdown -r now
  else
    echo ""
    sed -i "s/GRUB_CMDLINE_LINUX_DEFAULT=\"[^\"]*/& isolcpus=$isolated_cpus/" $grub_file_backup
    echo "New GRUB configuration: "$(cat $grub_file_backup | grep GRUB_CMDLINE_LINUX_DEFAULT)
  fi
}

rollback_isolcpus() {
    grub_file='/etc/default/grub'
    grub_file_backup='/etc/default/grub.backup'
    echo "Restoring the GRUB configuration from the backup copy (e.g., $grub_file_backup) ..."
    echo ""
    if [ "$DRY_RUN" != "--dry-run" ]; then
      cp $grub_file_backup $grub_file
      echo "New GRUB configuration: "$(cat $grub_file | grep GRUB_CMDLINE_LINUX_DEFAULT)
      echo ""
      echo "Updating the GRUB configuration ..."
      sudo update-grub
      echo ""
      read -r -p "WARNING: To apply these changes the system must be restarted! Press any key to continue ..."
      shutdown -r now
    else
      echo "New GRUB configuration: "$(cat $grub_file_backup | grep GRUB_CMDLINE_LINUX_DEFAULT)
    fi
}

configure_isolcpus() {
  isolated_cpus=$(cat /sys/devices/system/cpu/isolated)
  if [ "$isolated_cpus" == "" ]; then
    while :
    do
      read -p "Do you want to set the CPU core(s) isolation with isolcpus? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        set_isolcpus
        break
        ;;
      no)
        break
        ;;
      *)
        echo "Sorry, I don't understand. Try again!"
        ;;
      esac
    done
  else
    echo "WARNING: CPU(s) isolation with isolcpus is already configured for the CPU core(s): "$isolated_cpus
    while :
    do
      read -p "Do you want to reset it to the initial value? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        rollback_isolcpus
        break
        ;;
      no)
        echo "WARNING: Please use this value (e.g., $isolated_cpus) while configuring the CPU(s) affinity"
        break
        ;;
      *)
        echo "Sorry, I don't understand. Try again!"
        ;;
      esac
    done
  fi
}

set_cgroups() {
  cgroup='jvm-performance-benchmarks'
  echo "Available cgroup controllers: "$(cat /sys/fs/cgroup/cgroup.controllers)
  cgroupv2=$(mount -l | grep cgroup2)
  if [ "$cgroupv2" == "" ]; then
    echo "ERROR: cgroup v2 needs to be configured. This is available since Linux 4.5"
    return 1
  fi
  sudo echo "+cpu" >> /sys/fs/cgroup/cgroup.subtree_control
  sudo echo "+cpuset" >> /sys/fs/cgroup/cgroup.subtree_control
  echo "Assigned cgroup subtree control: "$(cat /sys/fs/cgroup/cgroup.subtree_control)
  echo ""
  echo "Creating cgroup $cgroup ..."
  sudo mkdir /sys/fs/cgroup/$cgroup/
  sudo echo "+cpu" >> /sys/fs/cgroup/$cgroup/cgroup.subtree_control
  sudo echo "+cpuset" >> /sys/fs/cgroup/$cgroup/cgroup.subtree_control
  echo "Assigned cgroup $cgroup subtree control: "$(cat /sys/fs/cgroup/$cgroup/cgroup.subtree_control)
  echo ""
  sudo mkdir /sys/fs/cgroup/$cgroup/tasks/
  echo "Number of available physical CPU core(s): "$(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l)
  echo "Number of available effective (i.e., physical and logical) CPU core(s): "$(cat /sys/fs/cgroup/cpuset.cpus.effective)
  echo "Please specify which CPU core(s) you want to isolate, as a comma separated list without spaces (e.g., 1,2)"
  read -p 'CPU core(s) to isolate: ' cgroup_cpus
  echo "$cgroup_cpus" > /sys/fs/cgroup/$cgroup/tasks/cpuset.cpus
  echo "Assigned CPU(s) to the $cgroup cgroup: "$(cat /sys/fs/cgroup/$cgroup/tasks/cpuset.cpus)
  echo ""
  echo "Assign the current shell process to the $cgroup cgroup, so all subsequent processes started from the same shell will belong to the same cgroup."
  echo $$ > /sys/fs/cgroup/$cgroup/tasks/cgroup.procs
  echo "Assigned cgroup PID(s) process(es): "$(cat /sys/fs/cgroup/$cgroup/tasks/cgroup.procs)
}

rollback_cgroups() {
  cgroup='jvm-performance-benchmarks'
  if [ $(dpkg-query -W -f='${Status}' cgroup-tools 2>/dev/null | grep -c "ok installed") -eq 0 ];
  then
    echo "WARNING: cgroup-tools is not installed. Trying to install it ..."
    apt-get install cgroup-tools
  fi
  echo "Deleting the cgroup $cgroup ..."
  sudo cgdelete -r cpu,cpuset:/$cgroup
}

configure_cgroups() {
  cgroup='jvm-performance-benchmarks'
  if [ ! -d "/sys/fs/cgroup/$cgroup" ]; then
    while :
    do
      read -p "Do you want to set the CPU core(s) isolation with cgroups? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        set_cgroups
        break
        ;;
      no)
        break
        ;;
      *)
        echo "Sorry, I don't understand. Try again!"
        ;;
      esac
    done
  else
    echo "WARNING: cgroup $cgroup already exists."
    while :
    do
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
        echo "Sorry, I don't understand. Try again!"
        ;;
      esac
    done
  fi
}

disable_aslr() {
  aslr="/proc/sys/kernel/randomize_va_space"
  echo "Current ASLR configuration: "$(cat "$aslr")
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo "Disabling ASLR ..."
    echo 0 > $aslr
  fi
  echo "New ASLR configuration: "$(cat "$aslr")
}

configure_aslr() {
  while :
  do
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
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

disable_turbo_boost() {
  # Intel
  no_turbo="/sys/devices/system/cpu/intel_pstate/no_turbo"
  if [ -f $no_turbo ]; then
    echo "Current turbo boost configuration for Intel: "$(cat "$no_turbo")
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Enabling turbo boost ..."
      echo 1 > $no_turbo
    fi
    echo "New turbo boost configuration: "$(cat "$no_turbo")
  fi
  # AMD
  boost="/sys/devices/system/cpu/cpufreq/boost"
  if [ -f $boost ]; then
    echo "Current turbo boost configuration for AMD: "$(cat "$no_turbo")
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Disabling turbo boost ..."
      echo 0 > $boost
    fi
    echo "New turbo boost configuration: "$(cat "$boost")
  fi
}

configure_turbo_boost() {
  while :
  do
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
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

set_scaling_governor() {
  cat /sys/bus/cpu/drivers/processor/cpu*/cpufreq/affected_cpus | grep -v '^[[:space:]]*$' | while IFS= read -r cpu
  do
    echo "Available CPU$cpu governors: "$(cat /sys/bus/cpu/drivers/processor/cpu$cpu/cpufreq/scaling_available_governors)
    if [ "$DRY_RUN" != "--dry-run" ]; then
      echo "Setting CPU$cpu governor to performance ..."
      echo "performance" > /sys/devices/system/cpu/cpu$cpu/cpufreq/scaling_governor
    fi
    echo "New CPU$cpu governor configuration: "$(cat /sys/devices/system/cpu/cpu$cpu/cpufreq/scaling_governor)
    echo ""
  done
}

configure_scaling_governor() {
  while :
  do
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
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

disable_hyper_threading() {
  siblings=$(grep -F , /sys/devices/system/cpu/cpu*/topology/thread_siblings_list | cut -d, -f2 | sort -u)
  if [ "$siblings" == "" ]; then
    echo "WARNING: no logical CPU(s) siblings found. Hyper-threading was probably disabled."
  else
    for sibling in $siblings
    do
      cpu="/sys/devices/system/cpu/cpu$sibling/online"
      echo "Current logical CPU$sibling hyper-threading configuration: "$(cat "$cpu")
      if [ "$DRY_RUN" != "--dry-run" ]; then
        echo "Disabling logical CPU$sibling hyper-threading configuration ..."
        echo 0 > $cpu
      fi
      echo "New logical CPU$sibling hyper-threading configuration: "$(cat "$cpu")
      echo ""
    done
  fi
}

configure_hyper_threading() {
  while :
  do
    read -p "Do you want to disable the CPU hyper-threading? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      disable_hyper_threading
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

confirm_os_settings() {
  while :
  do
    read -r -p "Do you want to proceed with the OS configuration settings? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      if [[ $EUID != 0 ]]; then
        echo ""
        echo "WARNING: OS configuration requires sudo admin rights (e.g., $ sudo ./run-benchmarks.sh), otherwise the OS might not be properly configured."
        read -r -p "Press ENTER to continue or CRTL+C to abort ... "
      fi
      return 0
      ;;
    no)
      return 1
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

DRY_RUN="$1"

echo ""
echo "+--------------------------+"
echo "| OS environment variables |"
echo "+--------------------------+"
set_environment_variables

echo ""
echo "+-----------------------+"
echo "| OS benchmark settings |"
echo "+-----------------------+"
echo "In summary:"
echo " - for benchmarking to reduce, as much as possible, the noise and to get more consistent measurements a proper OS configuration is very important. Nevertheless, how to do that is very OS dependent and it might not be sufficient since it does not exclude the measurement bias."
echo " - these settings includes:"
echo "   - setting the CPU(s) isolation"
echo "   - disabling the address space layout randomization"
echo "   - disabling the turbo boost mode"
echo "   - setting the CPU governor to performance"
echo "   - disabling the CPU hyper-threading"
echo "WARNING: the current configuration relies and it was tested on a Debian-based Linux distro (e.g., Ubuntu)."
echo ""
confirm_os_settings
if [ $? -ne 0 ]
then
  return 1
fi

echo ""
echo "+------------------------------------+"
echo "| Set CPU(s) isolation with isolcpus |"
echo "+------------------------------------+"
echo "isolcpus - isolates a given set of CPUs from the kernel scheduler"
echo "Limitations:"
echo " - 1. CPUs are isolated from the general SMP balancing and load scheduling algorithms. Since the tasks are not (implicitly) load-balanced on isolated CPUs, this might be a issue for the multi-threaded applications. In such a case the tasks distribution among the isolated CPUs should be manually assigned with taskset command"
echo " - 2. the list of isolated CPUs is static and only restarting the system with a different isolcpus value changes it"
echo "Recommendations:"
echo " - 1. isolcpus should be used for latency critical applications when the application does not afford any latency jitter, not even by the kernel scheduler tick"
echo " - 2. in addition, isolcpus combined with thread affinity (e.g., taskset command) might improve the memory locality, especially in cases when the accessed data fit, most of the time, in the CPU caches"
echo "WARNING: if you do not have a real need to use isolcpus, we recommend setting the CPU(s) isolation with cgroups instead"
echo ""
configure_isolcpus

echo ""
echo "+-----------------------------------+"
echo "| Set CPU(s) isolation with cgroups |"
echo "+-----------------------------------+"
echo "cgroups - isolates the resource usage for a collection of processes/applications. Using cgroups might improve the throughput and latency (in comparison to the raw benchmarks), even with non-isolated CPUs"
echo "Recommendations:"
echo " - 1. isolating or pinning processes/applications to a particular set of CPU(s) is appropriate when you have a very good understanding of the underlying hardware and the application threads"
echo "For example, in the case of a multi-socket CPU architecture you can split the application across the sockets (i.e., one application instance per socket, where each socket might have multiple CPU cores)"
echo " - 2. in addition, to make the latency jitter to completely to disappear, an extra configuration might be needed to ignore the interrupt requests on the non-isolated CPU(s) (e.g., irqbalance with the IRQBALANCE_BANNED_CPUS option)"
echo "WARNING: we recommend setting the CPU(s) isolation with cgroups, unless you have a real need to use isolcpus instead"
echo ""
configure_cgroups

echo ""
echo "+---------------------------------------------------+"
echo "| Disable address space layout randomization (ASLR) |"
echo "+---------------------------------------------------+"
echo "ASLR - security technique involved in preventing exploitation of memory corruption vulnerabilities. It randomly arranges the address space positions of key data areas of a process, including the base of the executable and the positions of the stack, heap and libraries."
echo "WARNING: Disabling ASLR is not mandatory but often preferable (only for local test environments). It might help in certain situations (e.g., debugging, mapping shared memory objects across processes) to receive more consistent measurements"
echo ""
configure_aslr

echo ""
echo "+--------------------------+"
echo "| Disable turbo boost mode |"
echo "+--------------------------+"
echo "turbo boost mode - raises CPU operating frequency when demanding tasks are running"
echo "WARNING: we recommend disabling it to receive more consistent measurements"
echo ""
configure_turbo_boost

echo ""
echo "+---------------------------------+"
echo "| Set CPU governor to performance |"
echo "+---------------------------------+"
echo "CPU governor to performance - avoids sub-nominal clocking. If the scaling governor policy is not set to performance, the kernel might decide to save power and throttle the frequency"
echo "WARNING: we recommend setting the CPU governor to performance to receive more consistent measurements"
echo ""
configure_scaling_governor

echo ""
echo "+-----------------------------+"
echo "| Disable CPU hyper-threading |"
echo "+-----------------------------+"
echo "CPU hyper-threading - improves parallelization of computations so that one physical core can have two simultaneous threads of execution"
echo "In general, the CPU architectural state (e.g., registers) is replicated but not the execution resources (e.g., ALUs, caches, etc.)"
echo "WARNING: we recommend disabling it to receive more consistent measurements"
echo ""
configure_hyper_threading