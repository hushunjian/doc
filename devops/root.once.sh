\cp hosts.once /etc/ansible/hosts
\cp ansible.cfg /etc/ansible/ansible.cfg

ssh-keygen -t rsa -P "" -f "/root/.ssh/id_rsa"
cat ~/.ssh/id_rsa.pub > ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys

ansible once -m copy -a "src=/root/.ssh/authorized_keys dest=/root/.ssh/authorized_keys force=yes"
ansible once -m file -a 'path=/root/.ssh/authorized_keys mode=600 owner=root group=root'

if [ -e ~/.ssh/known_hosts ]; then rm ~/.ssh/known_hosts; fi
hosts=(lb-t zookeeper-t jetty-t-1 server-t-1 server-t-2) 
for host in ${hosts[*]} 
do
    ssh -o StrictHostKeyChecking=no $host 'uptime'
done

#finally
\cp hosts.ansible /etc/ansible/hosts
