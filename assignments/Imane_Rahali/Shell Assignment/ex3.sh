input_file="input.txt"
if [ -f "$input_file" ]; then
    awk '{
	 for (i=1; i<=NF; i++) 
		words[$i]++ 
	}
	 END { 
		for (word in words) 
			print word, words[word] 
	}' "$input_file" | sort -k2,2nr | head -n 5
else
    echo "File not found: $input_file"
fi
