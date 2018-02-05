## 接口描述
获取所有王国列表
## API Path
/api/kingdom/getAllKingdoms
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
                  "updatedAt": 1511078400000,,
                  "createdAt": 1511078400000,
                  "userId": 344,
                  "userName": "暮西子",
                  "isV":0,
                  "type":0,
                  "reviewCount": 24,
                  "readCount": 234,
                  "likeCount": 13,
                  "memberCount": 45,
                  "updateCount":5,
                  "imageCount":34,
                  "audioCount":13,
                  "videoCount":34,
                  "wordCount":23,
                  "link":"https://testwebapp.me-to-me.com/ld/10"
                },
                {
                  "topicId":14,
                  "topicName":"勿忘我",
                  "updatedAt": 1511078400000,,
                  "createdAt": 1511078400000,
                  "userId": 344,
                  "userName": "暮西子",
                  "isV":0,
                  "type":0,
                  "reviewCount": 24,
                  "readCount": 234,
                  "likeCount": 13,
                  "memberCount": 45,
                  "updateCount":5,
                  "imageCount":34,
                  "audioCount":13,
                  "videoCount":34,
                  "wordCount":23,
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
|createdAt|int     |创建时间         |
|updatedAt|int     |更新时间         |
|userId   |int     |用户id           |
|userName |string  |用户名           |
|isV      |int     |是否大V(0:是；1：否)|
|type|int   |是否聚合(0:是；1：否)|
|reviewCount  |int |评论数           |
|readCount    |int |阅读数           |
|likeCount    |int |点赞数           |
|memberCount  |int |成员数           |
|updateCount  |int |更新数量         |
|imageCount   |int |图片数量         |
|audioCount   |int |音频数量         |
|videoCount   |int |视频数量         |
|wordCount    |int |文字数量         |
|link     |string  |王国链接         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |