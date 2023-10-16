delete_empty_directories() {
    for dir in "$1"/*; do
        if [ -d "$dir" ]; then
            delete_empty_directories "$dir"
            rmdir "$dir" 2>/dev/null
            if [ $? -eq 0 ]; then
                echo "Deleted empty directory: $dir"
            fi
        fi
    done
}
delete_empty_directories .