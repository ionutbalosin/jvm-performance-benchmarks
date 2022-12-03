#!/usr/bin/sudo bash

DRY_RUN="$1"

set_cpu_isolation() {
  grub_file='/etc/default/grub'
  grub_file_backup='/etc/default/grub.backup'
  echo "Please specify which physical CPU core(s) you want to isolate, as a comma separated list without spaces (e.g., 1,2)"
  read -p 'Physical CPU core(s) to isolate: ' isolated_cpus
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

rollback_cpu_isolation() {
    grub_file='/etc/default/grub'
    grub_file_backup='/etc/default/grub.backup'
    echo "Restore the GRUB configuration from the backup copy (e.g., $grub_file_backup)"
    echo ""
    if [ "$DRY_RUN" != "--dry-run" ]; then
      cp $grub_file_backup $grub_file
      echo "New GRUB configuration: "$(cat $grub_file | grep GRUB_CMDLINE_LINUX_DEFAULT)
      echo ""
      echo "Update the GRUB configuration ..."
      sudo update-grub
      echo ""
      read -r -p "WARNING: To apply these changes the system must be restarted! Press any key to continue ..."
      shutdown -r now
    else
      echo "New GRUB configuration: "$(cat $grub_file_backup | grep GRUB_CMDLINE_LINUX_DEFAULT)
    fi
}

configure_cpu_isolation() {
  isolated_cpus=$(cat /sys/devices/system/cpu/isolated)
  if [ "$isolated_cpus" == "" ]; then
    while :
    do
      echo "Number of available physical CPU core(s): "$(lscpu -b -p=Core,Socket | grep -v '^#' | sort -u | wc -l)
      read -p "Do you want to set the CPU core(s) isolation? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        set_cpu_isolation
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
    echo "WARNING: CPU(s) isolation is already set to physical core(s): "$isolated_cpus
    while :
    do
      read -p "Do you want to reset it to the initial value? (yes/no) " INPUT_KEY
      case $INPUT_KEY in
      yes)
        rollback_cpu_isolation
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

disable_aslr() {
  aslr="/proc/sys/kernel/randomize_va_space"
  echo "Current ASLR configuration: "$(cat "$aslr")
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo "Disabling ASLR ..."
    echo 0 > $aslr
  fi
  echo "New ASLR configuration: "$(cat "$aslr")
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

if [ "Linux" != "$(uname -s)" ]; then
  echo ""
  echo "ERROR: Not a Linux OS, unable to further apply any configuration."
  exit 1
fi

if [[ "$DRY_RUN" != "--dry-run" && $EUID != 0 ]]; then
    read -r -p "WARNING: sudo admin rights are needed! Press CRTL+C and run it again (e.g., $ sudo ./run-benchmarks.sh), otherwise the OS might not be properly configured."
fi

echo ""
echo "+------------------------------------+"
echo "| Set CPU(s) isolation with isolcpus |"
echo "+------------------------------------+"
# isolcpus - isolate a given set of CPUs from the kernel scheduler
# Limitations:
# - 1. the CPUs are isolated from the general SMP balancing and load scheduling algorithms. Since the tasks are not (implicitly) load-balanced on isolated CPUs, this might be a limitation/issue for the the multi-threaded applications
# - 2. the list of isolated CPUs is static and only rebooting with a different isolcpus value changes it
# When to use it:
# - isolcpus should be used when the application cannot afford to be interrupted, not even by the kernel scheduler tick. Nevertheless, the tasks distribution among the isolated CPUs needs to be manually assigned with taskset command
# In all the other situations it is recommended to use cpusets instead.
configure_cpu_isolation

echo ""
echo "+-----------------------------------+"
echo "| Set CPU(s) isolation with cpusets |"
echo "+-----------------------------------+"
# TODO

echo ""
echo "+---------------------------------------------------+"
echo "| Disable address space layout randomization (ASLR) |"
echo "+---------------------------------------------------+"
disable_aslr

echo ""
echo "+--------------------------+"
echo "| Disable turbo boost mode |"
echo "+--------------------------+"
disable_turbo_boost

echo ""
echo "+---------------------------------+"
echo "| Set CPU governor to performance |"
echo "+---------------------------------+"
set_scaling_governor

echo ""
echo "+-----------------------------+"
echo "| Disable CPU hyper-threading |"
echo "+-----------------------------+"
disable_hyper_threading