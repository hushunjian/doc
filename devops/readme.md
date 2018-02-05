## 前提
 - 测试环境自动化发布脚本使用规则如下（_脚本在lb-t的/data/m2m-doc/devops/ansible目录下，请使用m2m用户执行

## 打包
 - 提交代码到git上
 - 执行package.sh  --从git上拉取最新代码并编译test

## 发布
 - 如果只需要发布dubbo环境，则执行app-deploy-restart.sh  
 - 关闭服务，转发编译包到相应服务器，启动服务，这里一共涉及3个模块，2台非外网组件模块，1台外网组件模块io和sms
 - 如果只发布jetty环境，则执行root-deploy-restart.sh  
 - 关闭jetty，转发war包，启动jetty
 - 如果需要发布dubbo环境和jetty环境，则执行app-all-deploy-restart.sh  
 - 关闭服务，转发编译包到相应服务器，启动服务，这里一共涉及4个模块，1个jetty模块，还有3个模块同3.1）
 - 如果需要单独发布IMS环境，则执行ims-deploy.sh 
 - 关闭tomcat，转发war包，启动tomcat
