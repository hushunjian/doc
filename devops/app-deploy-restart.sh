#stop
ansible apps      -m shell -a "sh /data/app.sh stop"
ansible iosms      -m shell -a "sh /data/app.sh stop_iosms"

#deploy
ansible iosms -m copy -a "src=./app.sh dest=/data mode=777"
ansible iosms -m copy -a "src=./target/apps-test.tar dest=/data"
ansible iosms -m shell -a "cd /data && tar -xvf apps-test.tar && chmod -R 755 app"

ansible apps -m copy -a "src=./app.sh dest=/data mode=777"
ansible apps -m copy -a "src=./target/apps-test.tar dest=/data"
ansible apps -m shell -a "cd /data && tar -xvf apps-test.tar && chmod -R 755 app"

#start
ansible apps      -m shell -a "sh /data/app.sh start"
ansible iosms      -m shell -a "sh /data/app.sh start_iosms"