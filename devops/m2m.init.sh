if [ ! z`whoami` = "zm2m" ]; then echo "you are not m2m."; exit; fi

if [ -e ~/.ssh/known_hosts ]; then rm ~/.ssh/known_hosts; fi
hosts=(lb-t zookeeper-t jetty-t-1 server-t-1 server-t-2) 
for host in ${hosts[*]} 
do
    ssh -o StrictHostKeyChecking=no $host 'uptime'
done

#zookeeper
if [ ! -e zookeeper-3.4.10.tar.gz ]; then
wget http://mirrors.hust.edu.cn/apache/zookeeper/stable/zookeeper-3.4.10.tar.gz
fi
ansible zookeeper -m shell -a "mkdir -p /data/zookeeper"
ansible zookeeper -m copy -a "src=./zookeeper-3.4.10.tar.gz dest=/data/zookeeper"
ansible zookeeper -m shell -a "cd /data/zookeeper && tar -xvf zookeeper-3.4.10.tar.gz && ln -nsf zookeeper-3.4.10 default"
ansible zookeeper -m shell -a "cd /data/zookeeper/default && cp conf/zoo_sample.cfg conf/zoo.cfg"
ansible zookeeper -m copy -a "src=./zookeeper.sh dest=/data/zookeeper"

#kafka
if [ ! -e kafka_2.11-0.11.0.0.tgz ]; then
wget http://mirrors.tuna.tsinghua.edu.cn/apache/kafka/0.11.0.0/kafka_2.11-0.11.0.0.tgz
fi
ansible zookeeper -m shell -a "mkdir -p /data/kafka"
ansible zookeeper -m copy -a "src=./kafka_2.11-0.11.0.0.tgz dest=/data/kafka"
ansible zookeeper -m shell -a "cd /data/kafka && tar -xvf kafka_2.11-0.11.0.0.tgz && ln -nsf kafka_2.11-0.11.0.0 default"
ansible zookeeper -m copy -a "src=./kafka.sh dest=/data/kafka"

#redis
#if [ ! -e redis-4.0.1.tar.gz ]; then
#wget http://download.redis.io/releases/redis-4.0.1.tar.gz
#fi
if [ ! -e redis-3.2.0.tar.gz ]; then
wget http://share.q527.com/m2m/redis-3.2.0.tar.gz
fi
ansible zookeeper -m shell -a "mkdir -p /data/redis"
#ansible zookeeper -m copy -a "src=./redis-4.0.1.tar.gz dest=/data/redis"
#ansible zookeeper -m shell -a "cd /data/redis && tar -xvf redis-4.0.1.tar.gz && ln -nsf redis-4.0.1 default "
ansible zookeeper -m copy -a "src=./redis-3.2.0.tar.gz dest=/data/redis"
ansible zookeeper -m shell -a "cd /data/redis && tar -xvf redis-3.2.0.tar.gz && ln -nsf redis-3.2.0 default "
ansible zookeeper -m shell -a "cd /data/redis/default && make"
ansible zookeeper -m copy -a "src=./redis.conf dest=/data/redis/default"
ansible zookeeper -m copy -a "src=./redis.sh dest=/data/redis"

#install jetty
if [ ! -e jetty-distribution-9.4.6.v20170531.tar.gz ]; then
wget http://central.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.4.6.v20170531/jetty-distribution-9.4.6.v20170531.tar.gz
fi
ansible jetty -m shell -a "mkdir -p /data/jetty"
ansible jetty -m copy -a "src=./jetty-distribution-9.4.6.v20170531.tar.gz dest=/data/jetty"
ansible jetty -m shell -a "cd /data/jetty && tar -xvf jetty-distribution-9.4.6.v20170531.tar.gz && ln -nsf jetty-distribution-9.4.6.v20170531 default"
ansible jetty -m copy -a "src=./jetty.sh dest=/data/jetty"

#install tomcat
if [ ! -e apache-tomcat-8.0.46.tar.gz ]; then
wget http://mirrors.tuna.tsinghua.edu.cn/apache/tomcat/tomcat-8/v8.0.46/bin/apache-tomcat-8.0.46.tar.gz
fi
ansible jetty -m shell -a "mkdir -p /data/tomcat"
ansible jetty -m copy -a "src=./apache-tomcat-8.0.46.tar.gz dest=/data/tomcat"
ansible jetty -m shell -a "cd /data/tomcat && tar -xvf apache-tomcat-8.0.46.tar.gz && ln -nsf apache-tomcat-8.0.46 default"
ansible jetty -m copy -a "src=./server.xml dest=/data/tomcat/default/conf"
ansible jetty -m copy -a "src=./tomcat.sh dest=/data/tomcat"
