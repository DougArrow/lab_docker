#!/bin/bash
echo "zadanie Dugarova Danzana"
echo "Variant 11"
for ((;;))
do
echo "vse files:" $(ls)
read -p "vvedite filename: " filename
if [ -e "$filename" ]
then
echo "file naiden"
break
else
echo "file ne naiden" >&2
break
fi
done
echo ""
echo "segodnya: " $(date +"%d-%m-%y")
echo "uznaem, redakrirovalsya li file posle ukazannoy vami dati"
read -p "vvedite datu (yymmdd): " d
your_d=$(date +"%y%m%d" -d"$d")
file_d=$(date +"%y%m%d" -d"@$(stat -c%Z $filename) ")
echo "file date: $file_d"
echo "your date: $your_d"
if [[ "$your_d" -gt "$file_d" ]]