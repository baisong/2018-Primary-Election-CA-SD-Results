tail -n +2 orig.txt | split -l 500000 - split_
for file in split_*
do
    head -n 1 orig.txt > tmp_file
    cat $file >> tmp_file
    mv -f tmp_file $file
done