start(){
cd /data/zookeeper/default/bin
sh zkServer.sh start
cd -
}

stop(){
cd /data/zookeeper/default/bin
sh zkServer.sh stop
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

