## 接口描述
用户设置黑名单功能
## API Path
/api/user/blacklist
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|targetUid    |long    |是    |对方UID    |
|action    |int    |是    |操作类型    |
|0设置黑名单    |    |    |    |
|1取消黑名单    |    |    |    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }
    
    
    
