## 接口描述
日活统计(用户)
## API Path
/api/behaviour/getUserBehaviors
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "nickName":'忘语',
                  "createdAt": 1324555656,
                  "interview": '热点',
                  "visitTimeQuantum": 0,
                  "duration": 1267489,
                  "visitTimes": 5,
                },
                {
                  "uid":1,
                  "nickName":'忘语',
                  "createdAt": 1324555656,
                  "interview": '热点',
                  "visitTimeQuantum": 0,
                  "duration": 1267489,
                  "visitTimes": 5,
                }
            ],
            "total":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|uid      |int     |用户id           |
|nickName |string  |用户昵称         |
|createdAt |int  |注册时间         |
|interview|string  |访问页面         |
|visitTimeQuantum |int  |访问时间段         |
|duration |int  |访问时长         |
|visitTimes |int   |访问次数         |