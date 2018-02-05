## 接口描述
获取关注列表（按昵称排序）
## API Path
/api/user/showFollows2
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|customerId    |Int    |是    |用户uid    |
|sinceId    |Int    |是    |分页标识 初始值为-1    |
## 返回报文
    {
    "code": 20070,
    "data": {
    "result": [
                {
    "avatar": "default.jpg",
    "isFollowed": 0,
    "nickName": "习近平",
    "uid": 299
                }
            ]
        },
    "message": "获取关注列表成功"
    }
    
