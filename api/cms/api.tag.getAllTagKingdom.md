## 接口描述
获取标签王国列表
## API Path
/api/tag/getAllTagKingdom
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|tagId     |int     |标签ID           |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "topicId": 2,
                  "topicName":"米果",
                  "createdAt":1511078400000,
                  "updatedAt":1511078400000,
                  "tagId": 34,
                  "tagName": "深夜食堂",
                  "link":"https://testwebapp.me-to-me.com/ld/10"
                },
                {
                  "topicId": 3,
                  "topicName":"日本见行",
                  "createdAt":1511078400000,
                  "updatedAt":1511078400000,
                  "tagId": 34,
                  "tagName": "深夜食堂",
                  "link":"https://testwebapp.me-to-me.com/ld/10"
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
|tagId    |int     |标签ID           |
|tagName  |string  |标签名称         |
|createdAt|int     |创建时间         |
|updatedAt|int     |最近更新时间     |
|link     |string  |王国链接         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |