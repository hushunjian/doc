## 接口描述
用户禁言
## API Path
/api/user/gag
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |string    |是    |操作用户id    |
|action    |string    |是    |操作类型，0禁言，1解除禁言    |
|targetUid    |string    |是    |被禁言用户id    |
|type    |int    |是    |禁言类型，0全部，1王国，2UGC    |
|cid    |int    |否    |禁言对象id,王国id或者contentid    |
|gag_level    |int    |是    |禁言级别，0全部，1新建，2发言，3点赞等，（预留字段）    |
## 返回报文
    {
    "accessToken": "7f8a5ae060464563a395e48469f7ff70",
    "code": 200,
    "message": "ok"
    }
    
    {
    "accessToken": "7f8a5ae060464563a395e48469f7ff70",
    "code": 50041,
    "message": "只有管理可以进行全局禁言"
    }
    
    {
    "accessToken": "7f8a5ae060464563a395e48469f7ff70",
    "code": 50042,
    "message": "只有国王可以王国禁言"
    }
    
    {
    "accessToken": "7f8a5ae060464563a395e48469f7ff70",
    "code": 50043,
    "message": "只有作者可以UGC禁言"
    }
    
    {
    "accessToken": "7f8a5ae060464563a395e48469f7ff70",
    "code": 50044,
    "message": "该用户已被禁言"
    }
    
    4、相关数据库表
    USER_GAG
    
