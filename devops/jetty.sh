start(){
cd /data/jetty/default/bin
nohup sh jetty.sh start &
cd -
}

stop(){
cd /data/jetty/default/bin
sh jetty.sh stop
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

