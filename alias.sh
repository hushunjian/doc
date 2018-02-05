md2html(){
    target=${1/.md/}
    if [ -e $target.md ]; then
        marked-with-style $target.md > $target.html
        sed -i 's/790px/100%/g' $target.html
    else
        echo "usage: md2html target.md"
    fi
}

