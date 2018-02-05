ansible apps      -m shell -a "sh /data/app.sh start"
ansible iosms     -m shell -a "sh /data/app.sh start_iosms"
ansible jetty     -m shell -a "sh /data/jetty/jetty.sh start"
ansible jetty     -m shell -a "sh /data/tomcat/tomcat.sh start"

