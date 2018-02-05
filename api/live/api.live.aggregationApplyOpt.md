## 接口描述
聚合申请操作接口
## API Path
/api/live/aggregationApplyOpt
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|uid    |long    |是    |当前用户uid    |
|action    |int    |是    |操作类型    |
|1同意    |    |    |    |
|2拒绝    |    |    |    |
|applyId    |long    |是    |申请ID    |
## 返回报文
    {
    "code": 200,
    "message": "OK"
    }
    or
    {
    "code": 50057,
    "message": "重复处理"
    }
