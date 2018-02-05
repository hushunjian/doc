start(){
cd /data/app
./app-user-service/bin/app-user-service start
./app-monitor-service/bin/app-monitor-service start
./app-cache-service/bin/app-cache-service start
./app-activity-service/bin/app-activity-service start
./app-content-service/bin/app-content-service start
./app-live-service/bin/app-live-service start
./app-search-service/bin/app-search-service start
./app-sns-service/bin/app-sns-service start
./app-kafka-service/bin/app-kafka-service start
cd -
}
start_iosms(){
cd /data/app
./app-io-service/bin/app-io-service start
./app-sms-service/bin/app-sms-service start
cd -
}

stop(){
cd /data/app
./app-user-service/bin/app-user-service stop
./app-monitor-service/bin/app-monitor-service stop
./app-cache-service/bin/app-cache-service stop
./app-activity-service/bin/app-activity-service stop
./app-content-service/bin/app-content-service stop
./app-live-service/bin/app-live-service stop
./app-search-service/bin/app-search-service stop
./app-sns-service/bin/app-sns-service stop
./app-kafka-service/bin/app-kafka-service stop
cd - 
}
stop_iosms(){
cd /data/app
./app-io-service/bin/app-io-service stop
./app-sms-service/bin/app-sms-service stop
cd -
}

case $1 in
    start)
        start
        ;;
    stop)
        stop
        ;;
    start_iosms)
        start_iosms
        ;;
    stop_iosms)
        stop_iosms
        ;;
    *)
        echo "Usage: $0 {start|stop|start_iosms|stop_iosms}"
        exit 1
    ;;
esac

