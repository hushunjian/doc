ansible jetty     -m shell -a "sh /data/jetty/jetty.sh stop"
ansible jetty     -m shell -a "sh /data/tomcat/tomcat.sh stop"
ansible apps      -m shell -a "sh /data/app.sh stop"
ansible iosms      -m shell -a "sh /data/app.sh stop_iosms"

