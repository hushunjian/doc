## 接口描述
获取表情包列表
## API Path
/api/emotion/getAllEmotionPacks
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "id":1,
                  "name":"中表情",
                  "cover":"",
                  "type": 1,
                  "isValid": 0,
                  "packVersion": 1,
                  "analyVersion": 3,
                  "order": 4,
                  "extra": 1
                },
                {
                  "id":1,
                  "name":"天气",
                  "cover":"",
                  "type": 0,
                  "isValid": 1,
                  "packVersion": 1,
                  "analyVersion": 1,
                  "order": 3,
                  "extra": 2
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
|id       |int     |表情包id         |
|name     |string  |表情包名称       |
|cover    |string  |表情包封面图     |
|type     |int     |类型(0:中表情;1:大表情)|
|isValid  |int |是否有效(0:有效；1：无效)         |
|packVersion  |int |表情包版本       |
|analyVersion |int |分析器版本       |
|order    |int     |排序号           |
|extra    |string  |附加信息         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |