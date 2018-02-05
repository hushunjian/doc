if [ ! -e node-v6.3.1-linux-x64.tar.gz ]; then 
    curl -o node-v6.3.1-linux-x64.tar.gz http://nodejs.org/dist/v6.3.1/node-v6.3.1-linux-x64.tar.gz
fi
if [ ! -d node-v6.3.1-linux-x64.tar.gz ]; then 
    rm -rf node-v6.3.1-linux-x64
fi
tar xvfz node-v6.3.1-linux-x64.tar.gz
if [ -d /usr/local/nodejs ]; then
    rm -rf /usr/local/nodejs
fi
mkdir -p /usr/local/nodejs
mv node-v6.3.1-linux-x64/* /usr/local/nodejs
if [ ! -d node-v6.3.1-linux-x64.tar.gz ]; then 
    rm -rf node-v6.3.1-linux-x64
fi

npm install -g newman
npm i -g marked-with-style
if [ ! -e node-v6.3.1-linux-x64.tar.gz ]; then 
    rm -f node-v6.3.1-linux-x64.tar.gz
fi
