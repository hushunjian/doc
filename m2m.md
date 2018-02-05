## 生产环境
|host                                         |usage          |outer-ip       |inner-ip        |user   |password                          |
|:--------------------------------------------|:--------------|:--------------|:---------------|:------|:---------------------------------|
|lb                                           |lb             |114.55.87.118  |10.24.155.169   |root   |密                                |
|zookeeper                                    |zookeeper      |N/A            |10.24.235.198   |root   |密                                |
|jetty-1                                      |jetty-1        |N/A            |10.24.153.152   |root   |密                                |
|jetty-2                                      |jetty-2        |N/A            |10.24.235.105   |root   |密                                |
|jetty-3                                      |jetty-3        |N/A            |10.24.155.129   |root   |密                                |
|server-1                                     |server-1       |N/A            |10.24.252.94    |root   |密                                |
|server-2                                     |server-2       |N/A            |10.24.252.163   |root   |密                                |
|server-3                                     |server-3       |N/A            |10.24.241.79    |root   |密                                |

## 测试环境
|host                                         |usage          |outer-ip       |inner-ip        |user   |password                          |
|:--------------------------------------------|:--------------|:--------------|:---------------|:------|:---------------------------------|
|lb-t                                         |测试环境入口   |120.27.160.203 |10.47.51.228    |m2m    |qwer!@#$                          |
|zookeeper-t                                  |zookeeper-t    |N/A            |10.47.54.56     |m2m    |qwer!@#$                          |
|jetty-t-1                                    |jetty-t-1      |N/A            |10.46.71.48     |m2m    |qwer!@#$                          |
|server-t-1                                   |server-t-1     |N/A            |10.28.15.136    |m2m    |qwer!@#$                          |
|server-t-2                                   |server-t-2     |N/A            |10.27.213.225   |m2m    |qwer!@#$                          |

## 开发环境
|host                                         |usage          |outer-ip       |inner-ip        |user   |password                          |
|:--------------------------------------------|:--------------|:--------------|:---------------|:------|:---------------------------------|
|N/A                                          |公司内网服务器 |N/A            |192.168.\*.\*   |root   |Metro#79                          |
|fortress  		                              |堡垒机         |103.25.65.101  |192.168.89.195  |m2m    |s3cret                            |
|chestnut                                     |拙心最强服务器 |N/A            |192.168.89.196  |m2m    |s3cret                            |
|localhost 		                              |开发环境数据库 |N/A            |192.168.89.80   |m2m    |s3cret                            |
|master                                       |H5服务器       |N/A            |192.168.89.81   |m2m    |s3cret                            |
|localhost 		                              |N/A            |N/A            |192.168.89.92   |m2m    |s3cret                            |
|nginx   		                              |开发环境NGINX  |N/A            |192.168.89.93   |m2m    |s3cret                            |
|search4                                      |GIT服务器,禅道 |N/A            |192.168.89.106  |m2m    |s3cret                            |

## 数据库连接
|host                                         |usage          |outer-ip       |inner-ip        |user   |password                          |
|:--------------------------------------------|:--------------|:--------------|:---------------|:------|:---------------------------------|
|rm-bp1167i0gk5j947da.mysql.rds.aliyuncs.com  |生产环境数据库 |N/A            |10.50.217.80    |me2me  |密                                |
|test-db                                      |测试环境数据库 |N/A            |10.47.51.228    |me2me  |me2me@Sp#23_k                     |
|dev-db                                       |开发环境数据库 |N/A            |192.168.89.80   |me2me  |Sp@Metro#79                       |

## 第三方SDK
|Feature           |SDK         |MISC                |
|:-----------------|:-----------|:-------------------|
|IM2               |融云        |付费                |
|短信              |云通信      |付费                |
|推送              |极光        |免费                |
|图片和视频存储    |七牛        |付费                |
|数据统计          |友盟        |付费                |
|邀请接入          |OPENINSTALL |付费 8000RMB        |

+ Git
 + 内网
  - http://192.168.89.106:81
  - http://192.168.89.106:81/m2m/doc.git
  - http://192.168.89.106:81/m2m/cms.git
  - http://192.168.89.106:81/m2m/cmsv.git
  - http://192.168.89.106:81/m2m/rest.git
  - http://192.168.89.106:81/m2m/h5.git
  - http://192.168.89.106:81/m2m/me2me-apps.git
  - http://192.168.89.106:81/m2m/Perceive.git
  - http://192.168.89.106:81/m2m/MeToMe.git
  - http://192.168.89.106:81/m2m/webapp.git
  - ~~http://192.168.89.106:81/m2m/ims.git~~

 + 外网
  - http://103.25.65.101:9001/m2m/doc.git
  - http://103.25.65.101:9001/m2m/cms.git
  - http://103.25.65.101:9001/m2m/cmsv.git
  - http://103.25.65.101:9001/m2m/rest.git
  - http://103.25.65.101:9001/m2m/h5.git
  - http://103.25.65.101:9001/m2m/me2me-apps.git
  - http://103.25.65.101:9001/m2m/Perceive.git
  - http://103.25.65.101:9001/m2m/MeToMe.git
  - http://103.25.65.101:9001/m2m/webapp.git
  - ~~http://103.25.65.101:9001/m2m/ims.git~~

+ H5[DEV]
 - http://testwebapp.me-to-me.com

+ H5[PRODUCT]
 - http://webapp.me-to-me.com

+ IMS[TEST]
 - http://test2.me-to-me.com
 - admin
 - 123

+ CMS[DEV]
 - http://192.168.89.196
 - root
 - s3cret
 
+ 翻墙
 - host:192.168.89.196
 - port:7777
 
+ 禅道
 - address:http://192.168.89.106/zentao
 - user:admin
 - password:mao123456
 
+ 共享文件夹[MAO]
  - 192.168.88.10
  - pc327
  - 12345

+ SAMBA
  - 192.168.89.196
  - samba
  - s3cret
 
+ POSTMAN
 - https://www.getpostman.com/docs/postman/scripts/postman_sandbox_api_reference

+ 友盟
 - zhuoxinnet@126.com
 - 密

