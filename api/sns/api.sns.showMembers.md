## 接口描述
邀请列表
## API Path
/api/sns/showMembers
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|sinceId    |int    |是    |分页按页数分页第一页传1    |
|topicId    |int    |是    |直播id    |
|type    |int    |否    |0圈外邀请，1圈内邀请    |
## 返回报文
    {
    "accessToken": "43957f1b603443d78896bfeea8d6e395",
    "code": 20056,
    "data": {
    "members": [
                {
    "avatar": "http://cdn.me-to-me.com/FpXdLCD5Nhos0NbWPaLHcegzAiMe",
    "internalStatus": 0,
    "introduced": "我是一个小小宝",
    "nickName": "小小宝",
    "uid": 315
                }
            ]
        },
    "message": "获邀请列表成功"
    }
    
