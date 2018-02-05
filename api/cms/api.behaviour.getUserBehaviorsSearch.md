## 接口描述
查询日活统计(用户)
## API Path
/api/behaviour/getUserBehaviorsSearch
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|createdBegin|int   |开始时间         |
|createdEnd  |int   |结束时间         |
|timeQuantum |array  |时间段         |
|interviewId |int  |访问页面Id         |
|duration  |int  |访问时长          |
## 请求报文
    {
      "token":"4989999-777-12544",
      "pageIndex": 1,
      "pageSize": 2,
      "createdBegin": 13112345678,
      "createdEnd": 13112345678,
      "timeQuantum": [0,1],
      "interviewId": 1,
      "duration": 13112345678
    } 
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
|duration |int     |访问时长         |
|visitTimes |int   |访问次数         |