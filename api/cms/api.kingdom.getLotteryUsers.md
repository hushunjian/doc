## 接口描述
获取王国抽奖参与用户列表
## API Path
/api/kingdom/getLotteryUsers
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|lotteryId |int     |抽奖Id           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "lotteryId": 234,
                  "lotteryName":"勿思勿念诗成篇",
                  "userNick": "小小女",
                  "userId": 13452,
                  "joinTime": 1511078400000,
                  "status": 0,
                  "isAppoint": 1,
                  "invitationNum": 133
                },
                {
                  "lotteryId": 124,
                  "lotteryName":"勿思勿念诗成篇",
                  "userNick": "龙女",
                  "userId": 13344,
                  "joinTime": 1511078400000,
                  "status": 0,
                  "isAppoint": 0,
                  "invitationNum": 13
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
|lotteryId|int     |抽奖活动Id       |
|lotteryName|string|抽奖名称         |
|userNick |string  |用户昵称         |
|userId   |int     |用户ID           |
|joinTime |int     |参与时间         |
|status   |int     |抽奖状态(0:被屏蔽；1:已中奖；2：未中奖) |
|isAppoint|int     |是否指定(0:未指定；1：指定)   |
|invitationNum|int |邀请人数         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |