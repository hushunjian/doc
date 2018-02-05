#services
ansible iosms -m copy -a "src=./app.sh dest=/data mode=777"
ansible iosms -m copy -a "src=./target/apps-test.tar dest=/data"
ansible iosms -m shell -a "cd /data && tar -xvf apps-test.tar && chmod -R 755 app"

ansible apps -m copy -a "src=./app.sh dest=/data mode=777"
ansible apps -m copy -a "src=./target/apps-test.tar dest=/data"
ansible apps -m shell -a "cd /data && tar -xvf apps-test.tar && chmod -R 755 app"

#root
ansible jetty -m copy -a "src=./target/root.war dest=/data"
ansible jetty -m shell -a "cp /data/root.war /data/jetty/default/webapps"

#mgmt
ansible jetty -m copy -a "src=./target/mgmt.war dest=/data"
ansible jetty -m shell -a "rm -rf /data/tomcat/default/webapps/* && cp /data/mgmt.war /data/tomcat/default/webapps/ROOT.war"

