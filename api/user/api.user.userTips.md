## 接口描述
获取消息提示（轮询方式）
## API Path
/api/user/userTips
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |int    |是    |当前用户的UID    |
## 返回报文
    {
    "code": 20052,
    "data": {
    "tips": [
                {
    "count": 1,
    "id": 1,
    "type": 1,
    "uid": 94
                }
            ]
        },
    "message": "获取用户消息成功"
    }
    
