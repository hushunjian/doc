#stop
ansible jetty     -m shell -a "sh /data/jetty/jetty.sh stop"

#deploy
ansible jetty -m copy -a "src=./target/root.war dest=/data"
ansible jetty -m shell -a "cp /data/root.war /data/jetty/default/webapps"

#start
ansible jetty     -m shell -a "sh /data/jetty/jetty.sh start"