start(){
cd /data/redis/default
./src/redis-server ./redis.conf
cd -
}

stop(){
cd /data/redis/default
./src/redis-cli shutdown
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

