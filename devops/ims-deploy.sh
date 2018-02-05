#stop
ansible jetty     -m shell -a "sh /data/tomcat/tomcat.sh stop"

#deploy
ansible jetty -m copy -a "src=./target/mgmt.war dest=/data"
ansible jetty -m shell -a "rm -rf /data/tomcat/default/webapps/* && cp /data/mgmt.war /data/tomcat/default/webapps/ROOT.war"

#start
ansible jetty     -m shell -a "sh /data/tomcat/tomcat.sh start"