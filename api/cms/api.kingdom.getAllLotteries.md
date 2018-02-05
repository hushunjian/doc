## 接口描述
获取王国抽奖列表
## API Path
/api/kingdom/getAllLotteries
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "topicId":145,
                  "topicName":"勿忘我",
                  "lotteryId": 234,
                  "lotteryName":"勿思勿念诗成篇",
                  "createdAt":1511078400000,
                  "validAt":1511078400000,
                  "status": 0
                },
                {
                  "topicId":145,
                  "topicName":"快乐家族",
                  "lotteryId": 134,
                  "lotteryName":"谁是快乐家族",
                  "createdAt":1511078400000,
                  "validAt":1511078400000,
                  "status": 1
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
|topicId  |int     |王国ID           |
|topicName|string  |王国名称         |
|lotteryId|int     |抽奖Id           |
|lotteryName|string|抽奖名称         |
|createdAt|int     |发布时间         |
|validAt  |int     |抽奖结束时间     |
|status   |int     |抽奖状态：（0：等待抽奖；1：进行中；2：抽奖结束)|
|total    |int     |数据总条数       |
|status   |int     |状态码           |