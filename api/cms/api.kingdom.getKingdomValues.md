## 接口描述
获取王国价值属性列表
## API Path
/api/kingdom/getKingdomValues
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
                  "uid": 344,
                  "userName": "暮西子",
                  "createdAt": 1511078400000,
                  "updatedAt": 1511078400000,
                  "type":0,
                  "value": 23,
                  "lastAddValue": 3,
                  "stealValue": 13,
                  "careDegree": 0.1,
                  "approvalDegree": 0.3
                },
                {
                  "topicId":145,
                  "topicName":"勿忘我",
                  "uid": 344,
                  "userName": "暮西子",
                  "createdAt": 1511078400000,
                  "updatedAt": 1511078400000,
                  "type":0,
                  "value": 23,
                  "lastAddValue": 3,
                  "stealValue": 13,
                  "careDegree": 0.1,
                  "approvalDegree": 0.3
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
|uid      |int     |国王id           |
|userName |string  |国王昵称         |
|createdAt|int     |创建时间         |
|updatedAt|int     |更新时间         |
|type     |int     |王国类型(0:聚合王国；1：个人王国)|
|value    |int     |王国价值         |
|lastAddValue |int |昨日增长值       |
|stealValue|int    |可被偷           |
|careDegree|number |用心度X          |
|approvalDegree|number|认可度Y       |
|total    |int     |数据总条数       |
|status   |int     |状态码           |