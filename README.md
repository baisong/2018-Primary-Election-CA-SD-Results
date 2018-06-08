# 2018 Election Results - San Diego County, CA

The original file published [here](http://www.sdvote.com/content/dam/rov/en/election/2018June/Semifinal%20Official%20Results%2006-05-2018.txt) was too big (over 200 MB) and in an un-openable format (space-separated, double-quote-encased TXT file).

The script (txt2csv.awk) allowed me to get them into reasonably-sized, standard formatted CSV files.

I've included the partial TXT files in this repo as examples of the format. The original file was too large to host on GitHub.

### Usage

```
split -l 500000 -d Semifinal\ Official\ Results\ 06-05-2018.txt results-part --additional-suffix=.txt
./txt2csv.awk results-part1.txt > results-part1.csv
./txt2csv.awk results-part2.txt > results-part2.csv
./txt2csv.awk results-part3.txt > results-part3.csv
./txt2csv.awk results-part4.txt > results-part4.csv
```