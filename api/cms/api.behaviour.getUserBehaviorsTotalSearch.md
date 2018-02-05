## 接口描述
查询日活-访问总时长和总次数统计
## API Path
/api/behaviour/getUserBehaviorsTotalSearch
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
|createdBegin|int  |开始时间         |
|createdEnd  |int  |结束时间         |
|timeQuantum |array  |时间段         |
|interviewId |int  |访问页面Id        |
## 请求报文
    {
      "token":"4989999-777-12544",
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
            "totalVisits":200,
            "totalVisitTimes":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|totalVisits   |int     |访问总人数  |
|totalVisitTimes |int  |访问总次数  |