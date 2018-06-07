#!/usr/bin/nawk -f
# Transform a space-separated, double-quote-encased TXT file into CSV.
# Usage: txt2csv.awk [in.txt] > [out.csv]
# Note: Assumes that [in.txt] contains no `~`  
{#MAIN
  s=$0;c=0;f=0;         # Reset varibles for each line
  while (c<length(s)){  # Loop thru characters in line
    c++;                # Incement character position
    a=substr(s,c,1);    # Get current character
    if (a=="\"")f++;    # Increment quote counter
    if (f%2==1&&a==" ") # If inside pair of quotes, look for SPACE
      s= repl("~",c,s); # Temporarily replace SPACE with `~`
  }#end while c
  gsub(" ",",",s);      # Replace unencased SPACE with `,`
  gsub("~"," ",s);      # Put SPACE back in encased strings
print s
}#end MAIN
function repl(r,n,t){   # Replace single character in string
  s1=substr(t,1,n-1);   # Get first part of string
  s2=substr(t,n+1);     # Get last part of string
  return(s1 r s2);      # Return changed string
}#end repl()