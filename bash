# split a string into an array
IN="one;two"
Array=(${IN//;/ })
echo "${Array[@]}"; echo "${Array[0]}"; echo "${Array[1]}"; 

# iterate through array
array=(one two three)
for i in "${array[@]}"; do
  echo $i
done

# iterate through a file line by line
while read p; do
  echo $p
done < peptides.txt

# sum output from columns containing numbers only
cat ~/temp | grep --color=never 'TiB\|GiB' | sort -n | cut -d ' ' -f 1 | awk '{s+=$1} END {print s}'

if [ -d "$DIRECTORY" ]; then

# list functions
typeset -f

# list functions names
typeset -F
