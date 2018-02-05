start(){
cd /data/kafka/default/bin
nohup sh kafka-server-start.sh ../config/server.properties &
cd -
}

stop(){
kill `ps -ef | grep -E "kafka\.Kafka" | awk '{print $2}'`
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

