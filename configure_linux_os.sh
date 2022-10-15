#!/usr/bin/sudo bash

DRY_RUN="$1"

if [ "Linux" != "$(uname -s)" ]; then
  echo ""
  echo "WARNING: Not a Linux OS, unable to further apply any configuration."
  exit 1
fi

if [[ "$DRY_RUN" != "--dry-run" && $EUID != 0 ]]; then
    read -r -p "WARNING: sudo admin rights are needed! Press CRTL+C and run it again (e.g., $ sudo ./run-benchmarks.sh), otherwise the OS might not be properly configured."
fi

echo ""
echo "+--------------------------------------------+"
echo "| Disable address space randomization (ASLR) |"
echo "+--------------------------------------------+"
aslr="/proc/sys/kernel/randomize_va_space"
echo "Disable $aslr"
if [ "$DRY_RUN" != "--dry-run" ]; then
  echo 0 > $aslr
fi
echo " > $aslr: "$(cat "$aslr")

echo ""
echo "+--------------------------+"
echo "| Disable turbo boost mode |"
echo "+--------------------------+"
# Intel
no_turbo="/sys/devices/system/cpu/intel_pstate/no_turbo"
if [ -f $no_turbo ]; then
  echo "Enable $no_turbo"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo 1 > $no_turbo
  fi
  echo " > $no_turbo: "$(cat "$no_turbo")
fi
# AMD
boost="/sys/devices/system/cpu/cpufreq/boost"
if [ -f $boost ]; then
  echo "Disable $boost"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo 0 > $boost
  fi
  echo " > $boost: "$(cat "$boost")
fi

echo ""
echo "+---------------------------------------+"
echo "| Set 'scaling_governor' to performance |"
echo "+---------------------------------------+"
for governor in /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor
do
  echo "Set $governor to performance"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo "performance" > $governor
  fi
  echo " > $governor: "$(cat "$governor")
done

echo ""
echo "+-------------------------+"
echo "| Disable hyper-threading |"
echo "+-------------------------+"
siblings=$(grep -F , /sys/devices/system/cpu/cpu*/topology/thread_siblings_list | cut -d, -f2 | sort -u)
for sibling in $siblings
do
  cpu="/sys/devices/system/cpu/cpu$sibling/online"
  echo "Disable $cpu"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    echo 0 > $cpu
  fi
  echo " > $cpu: "$(cat "$cpu")
done

echo ""
echo "+------------------------+"
echo "| TODO: Set CPU affinity |"
echo "+------------------------+"
cpus=$(grep -c processor /proc/cpuinfo)
if [ "$cpus" -lt "4" ]; then
  echo "ERROR: Not enough number of CPUs. Found $cpus, expected at least 4. Unable to continue."
  exit
fi

echo ""
echo "+----------------------------+"
echo "| TODO: Set process priority |"
echo "+----------------------------+"

if [ "$DRY_RUN" != "--dry-run" ]; then
  echo ""
  echo "WARNING: You need a restart to resume all the above OS configurations!"
fi