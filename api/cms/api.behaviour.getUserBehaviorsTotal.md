## 接口描述
日活-访问总时长和总次数统计
## API Path
/api/behaviour/getUserBehaviorsTotal
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
## 返回报文
```
  {
    "body":{
            "totalVisits": 200,
            "totalVisitTimes": 200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|totalVisits   |int  |访问总人数   |
|totalVisitTimes |int  |访问总次数   |