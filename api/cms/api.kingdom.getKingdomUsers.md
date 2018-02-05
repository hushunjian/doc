## 接口描述
获取王国发言用户列表
## API Path
/api/kingdom/getKingdomUsers
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|topicId   |int     |王国ID           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid": 13344,
                  "userNick": "龙女",
                  "meNumber": 34567895,
                  "registerChannel": 'ios',
                  "logonDevice": 'ios',
                  "dateTime": '2017-12-12',
                  "joinAt": 1511078400000,
                  "reviewCount":45,
                  "isFirstReview":1,
                },
                {
                  "uid": 13344,
                  "userNick": "龙女",
                  "meNumber": 34567895,
                  "registerChannel": 'ios',
                  "logonDevice": 'ios',
                  "dateTime": '2017-12-12',
                  "joinAt": 1511078400000,
                  "reviewCount":45,
                  "isFirstReview":1
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
|userNick |string  |用户昵称         |
|uid      |int     |用户ID           |
|meNumber |int     |用户Me号         |
|registerChannel |string  |注册渠道         |
|logonDevice |string  |登录设备号         |
|dateTime |string  |发言日期        |
|joinAt   |int     |注册时间         |
|reviewCount| int  |留言数           |
|isFirstReview     |int     |是否第一次留言(1:是；2：否) |
|total    |int     |数据总条数       |
|status   |int     |状态码           |