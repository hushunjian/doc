marked-with-style cost.md > tmp.html
cat tmp.html | sed 's/790px/100%/g' > cost.html
rm -f tmp.html
