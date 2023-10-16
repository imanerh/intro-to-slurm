mkdir -p large_files
log_file="moved_files.log"
> "$log_file"
find . -type f -size +10M -exec mv {} large_files/ \; -exec echo "Moved {} to large_files/" >> "$log_file"
