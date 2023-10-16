echo "Hostname: $(hostname)"
echo "Kernel Version: $(uname -r)"
echo "CPU Information:"
echo $(cat /proc/cpuinfo | grep 'model name' | uniq) 
echo $(cat /proc/cpuinfo | grep 'cpu MHz' | uniq)
echo "$(grep MemTotal /proc/meminfo)"
echo "Current Date and Time: $(date)"