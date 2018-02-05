## 接口描述
查询上市王国列表
## API Path
/api/kingdom/getListedKingdomSearch
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|topicName |string  |王国名称         |
|status    |int     |状态(-1:全部;0:正常交易;1:锁定)|
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "topicId":145,
                  "topicName":"勿忘我",
                  "topicValue": 43,45,
                  "topicOwnerName": "为所欲为",
                  "topicOwnerId": 1345,
                  "listedAt": 1511078400000,
                  "purchaseAt": 1511078400000,
                  "buyerId": 344,
                  "buyerName": "暮西子",
                  "meNumber": "12312",
                  "status": 0
                },
                {
                  "topicId":145,
                  "topicName":"勿忘我",
                  "topicValue": 43,45,
                  "topicOwnerName": "为所欲为",
                  "topicOwnerId": 1345,
                  "listedAt": 1511078400000,
                  "purchaseAt": 1511078400000,
                  "buyerId": 344,
                  "buyerName": "暮西子",
                  "meNumber": "12312",
                  "status": 0
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
|topicValue|int    |王国价值         |
|topicOwnerName|string|拥有人        |
|topicOwnerId  |string|拥有人ID      |
|listedAt |int     |上市时间         |
|purchaseAt|int    |购买时间         |
|buyerId  |int     |购买人id(当status=1时有值，默认0)|
|buyerName|string  |购买人名称(当status=1时有值，默认0)|
|meNumber |int     |新国王米汤号     |
|status   |int     |状态(0:正常交易;1:锁定)|