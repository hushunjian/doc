## 接口描述
将用户推荐/取消推荐到名人堂
## API Path
/api/user/Recommend
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|targetUid    |long    |是    |待推荐用户ID    |
|action    |int    |是    |操作    |
|0推荐    |    |    |    |
|1取消推荐    |    |    |    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }
    or
    {
    "code": 50064,
    "message": "只有管理员才能操作"
    }
