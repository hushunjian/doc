## 接口描述
退出直播
## API Path
/api/live/signOutLive
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |直播id    |
## 返回报文
    {
    "code": 20044,
    "message": "直播退出成功"
    }
    or
    {
    "code": 50018,
    "message": "自己创建的直播不能退出"
    }
    
