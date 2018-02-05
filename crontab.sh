BASE_DIR=$(cd -P -- "$(dirname -- "$0")"; pwd -P)
if [ -d /usr/local/nodejs ]; then
    export PATH=$PATH:/usr/local/nodejs/bin
fi

cd $BASE_DIR
git pull
sh generate.sh
git status | grep -v "modified:" | grep -v "deleted:" | grep $'\t' | awk '{print $NF}' | xargs -i git add {}
git commit -a -m "regenerated html from md files."
git push
cd -
