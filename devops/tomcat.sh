start(){
cd /data/tomcat/default/bin
nohup sh startup.sh &
cd -
}

stop(){
cd /data/tomcat/default/bin
sh shutdown.sh
cd -
}

case $1 in
    start)
        start
        ;;
    stop)
        stop
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
    ;;
esac

