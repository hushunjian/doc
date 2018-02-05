## 接口描述
王国内容转发到其他王国的接口
## API Path
/api/live/fragmentForward
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |long    |是    |当前用户uid    |
|fid    |long    |是    |具体下发内容的fragmentId    |
|sourceTopicId    |long    |是    |发起方王国ID    |
|targetTopicId    |long    |是    |目标王国ID    |
## 返回报文
    {
    "code": 200,
    "message": "OK"
    }
    or
    {
    "code": 50058,
    "message": "发言不存在或已删除"
    }
