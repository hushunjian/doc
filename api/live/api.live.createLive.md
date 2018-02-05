## 接口描述
创建直播接口
## API Path
/api/live/createLive
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|title    |string    |是    |直播标题    |
|uid    |Int    |是    |    |
|liveImage    |string    |是    |直播背景图    |
## 返回报文
    参数名称	类型	备注
    topicId	long	创建的王国的ID
    v_lv	int	创建者是否大V，
    0否
    1是
    upgrade	int	当前用户是否等级升级
    0不升级
    1升级
    currentLevel	int	当前等级
    
    {
    "code": 20055,
    "message": "直播创建成功"
    }
    
