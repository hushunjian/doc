## 接口描述
用户内容点赞(取消点赞)
## API Path
/api/content/likes
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|action    |Int    |是    |点赞类型 0，点赞操作，1取消点赞    |
|cid    |Int    |是    |内容id    |
|type    |Int    |是    |点赞类型 1原生UGC，和小编内容 2直播，3老徐文章4.活动    |
## 返回报文
    参数名称	类型	是否必须
    upgrade	int	当前用户是否等级升级
    0不升级
    1升级
    currentLevel	int	当前等级
    
    {
    "code": 20041,
    "message": "用户点赞成功"
    }
    
    {
    "code": 20041,
    "message": "用户点赞成功"
    }
    