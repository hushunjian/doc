## 接口描述
获取直播收藏的人员列表
## API Path
/api/live/favoriteList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |直播id    |
## 返回报文
    {
    "accessToken": "5f86468eba8c4b84ba882ee5b819cb3b",
    "code": 200,
    "data": {
    "userElements": [
    {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Fj2p3EOTl1WorQn5ryA1He_G8Crh",
    "nickName": "十年终不遇a",
    "uid": 325
    },
    {
    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Ft1QdFhVXS3M6gR6OcHeK86yWs-m",
    "nickName": "十年终相遇",
    "uid": 326
    }
    ]
    },
    "message": "ok"
    }
    
