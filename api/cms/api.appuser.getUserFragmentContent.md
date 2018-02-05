## 接口描述
获取APP用户内容(王国发言/评论列表)
## API Path
/api/appuser/getUserFragmentContent
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex|int     |当前页           |
|pageSize |int     |页大小           |
|uid      |int     |用户id           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":12766,
                  "topicId":8798,
                  "id":252702,
                  "contentType":1,
                  "fragment":"八卦",
                  "fragmentImage":"",
                  "extra":"{'hAlign':'center','only':'2bc0b9c6-0f65-476d-b5f1-805781c0eb35','size':72,'textGravity':1,'type':'textNormal'}",
                  "status":1,
                  "type":52,
                  "createdAt":1511078560000
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
|uid      |int     |用户ID           |
|topicId  |int     |王国ID           |
|id       |int     |发言/评论id      |
|contentType |int  |内容类型(1:图片;2:文字) |
|fragment |string  |内容             |
|fragmentImage|string|图片           |
|extra    |int     |额外信息         |
|status   |int     |发言/评论状态（1：正常；0：删除）|
|type     |int     |发言/评论类型(0:主播发言;1:粉丝回复;3:主播贴标;4:粉丝贴标;5:点赞;6:订阅;7:分享;8:关注;9:邀请;10:有人@;11:主播@;12:视频;13:语音;14:国王收红包;15:核心圈)
|createdAt|int     |创建时间         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |
