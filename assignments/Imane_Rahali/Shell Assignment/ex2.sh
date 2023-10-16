total_lines=0
while IFS= read file; do
    lines=$(wc -l < "$file")
    total_lines=$((total_lines + lines))
done < <(find . -name "*.txt")
echo "Total number of lines in text files: $total_lines"
