if [ ! -d "my_files" ]; 
then mkdir my_files 
fi

for ((i=1; i<=5; i++)); do
    echo "This is file $i." > my_files/file$i.txt
done
