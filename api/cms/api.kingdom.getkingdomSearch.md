## 接口描述
查询王国列表
## API Path
/api/kingdom/getKingdomSearch
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|topicName|string  |王国名称          |
|userName |string  |用户名            |
|isV      |int     |是否大V(-1:全部；0:否；1：是)|
|type	  |int     |是否聚合(-1:全部；0:否；1：是)|
|createdBegin|int  |创建时间开始      |
|createdEnd  |int  |创建时间结束      |
|updatedBegin|int  |更新时间开始      |
|updatedEnd  |int  |更新时间结束      |
|reviewCountStart  |int |评论数最小数量    |
|reviewCountEnd    |int |评论数最大数量    |
|readCountStart    |int |阅读数最小数量    |
|readCountEnd      |int |阅读数最大数量    |
|likeCountStart    |int |点赞数最小数量    |
|likeCountEnd      |int |点赞数最大数量    |
|memberCountStart  |int |成员数最小数量    |
|memberCountEnd    |int |成员数最大数量    |
|updateCountStart  |int |更新数量最小数量  |
|updateCountEnd    |int |更新数量最大数量  |
|imageCountStart   |int |图片数量最小数量  |
|imageCountEnd     |int |图片数量最大数量  |
|audioCountStart   |int |音频数量最小数量  |
|audioCountEnd     |int |音频数量最大数量  |
|videoCountStart   |int |视频数量最小数量  |
|videoCountEnd     |int |视频数量最大数量  |
|wordCountStart    |int |文字数量最小数量  |
|wordCountEnd      |int |文字数量最大数量  |
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
|isV      |int     |是否大V(0:否；1：是)|
|type	  |int     |是否聚合(0:否；1：是)|
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