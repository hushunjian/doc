graphviz_mk_svg(){
    for file in `find . | grep -E "\.gv$"`; do
        svgFile=${file/%gv/svg}
        echo $svgFile
        dot -Tsvg $file -o $svgFile
    done
}
graphviz_mk_svg
python generate.py --cms > index.md
