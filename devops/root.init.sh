yum install -y lrzsz dos2unix ansible vim

\cp hosts.os /etc/hosts
\cp hosts.ansible /etc/ansible/hosts
\cp ansible.cfg /etc/ansible/ansible.cfg
\cp test-app.conf /etc/nginx/conf.d

useradd -m -p saaPqozet7ogc m2m
if [ ! -d /home/m2m/.ssh ]; then
    su m2m -l -c 'ssh-keygen -t rsa'
fi
if [ ! -e /home/m2m/.ssh/authorized_keys ]; then
    su m2m -l -c 'cat /home/m2m/.ssh/id_rsa.pub > /home/m2m/.ssh/authorized_keys'
    su m2m -l -c 'chmod 600 /home/m2m/.ssh/authorized_keys'
fi

ansible all -a 'yum install -y java-1.8.0-openjdk*'
ansible all -a 'java -version'
ansible all -m copy -a "src=hosts.os dest=/etc/hosts force=yes"
ansible all -a 'useradd -m -p saaPqozet7ogc m2m'
ansible all -m copy -a "src=/home/m2m/.ssh/authorized_keys dest=/home/m2m/.ssh/authorized_keys force=yes owner=m2m group=m2m"
ansible all -m file -a 'path=/home/m2m/.ssh/authorized_keys mode=600 owner=m2m group=m2m'
ansible all -a 'mkdir -p /data'
ansible all -m file -a 'path=/data mode=777 owner=root group=root'
ansible all -m shell -a "mkdir /alidata"
ansible all -m file -a "path=/alidata mode=777 owner=root group=root"
