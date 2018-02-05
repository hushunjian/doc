if [ `uname` != "Linux" ]; then echo "usage:linux only!"; exit; fi
BASE_DIR=$(cd -P -- "$(dirname -- "$0")"; pwd -P)
find_all_mds_and_htmlize_it(){
    for file in `find . | grep -E "\.md$"`; do
         md2html $file
    done
}
md2html(){
    local fileName=$1
    fileName=${fileName/%.md/}
    echo $fileName.md
    if [ -e "$fileName.md" ]; then
        marked-with-style $fileName.md > $fileName.html
        sed -i 's/790px/100%/g' $fileName.html
        sed -i '3 a <meta charset="UTF-8">' $fileName.html
    fi
}

cd $BASE_DIR/api
echo `pwd`
rm -rf *.html
python generate.py --app > app.md
python generate.py --ims > ims.md
python generate.py --cms > cms.md
find_all_mds_and_htmlize_it
cd -

cd $BASE_DIR/misc
echo `pwd`
find_all_mds_and_htmlize_it
cd -

cd $BASE_DIR/devops
echo `pwd`
find_all_mds_and_htmlize_it
cd -

cd $BASE_DIR/cost
echo `pwd`
find_all_mds_and_htmlize_it
cd -

cd $BASE_DIR
echo `pwd`
md2html m2m.md
cd -

cd $BASE_DIR/graphviz
echo `pwd`
sh generate.sh
find_all_mds_and_htmlize_it
cd -

