## 接口描述
评论接口
## API Path
/api/content/review
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|review    |string    |是    |评论内容    |
|cid    |int    |是    |内容id    |
|isAt    |int    |是    |@功能 0不@ 1@    |
|type    |int    |是    |评论类型1原生UGC小编内容，2，老徐文章。3活动    |
|atUid    |int    |否    |当isAt为1时候必须传    |
## 返回报文
    参数名称	类型	是否必须
    upgrade	int	当前用户是否等级升级
    0不升级
    1升级
    currentLevel	int	当前等级
    
    {
    "code": 20046,
    "message": "评论成功"
    }
    
