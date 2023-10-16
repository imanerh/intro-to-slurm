while true; do
    echo "Menu:"
    echo "1. List all files in the current directory"
    echo "2. List all running processes"
    echo "3. Check available disk space"
    echo "4. Exit"
    read -p "Enter your choice: " choice

    case $choice in
        1)
            ls
            ;;
        2)
            ps aux
            ;;
        3)
            df -h
            ;;
        4)
            echo "Exiting the program."
            break
            ;;
        *)
            echo "Invalid choice. Please select a valid option."
            ;;
    esac
done
