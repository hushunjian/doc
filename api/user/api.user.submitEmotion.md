## 接口描述
情绪确定接口
## API Path
/api/user/submitEmotion
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|emotionId    |long    |是    |情绪Id    |
|happyValue    |int    |是    |开心指数值    |
|freeValue    |int    |是    |空闲指数值    |
|source    |int    |Y    |来源，同王国创建接口    |
## 返回报文
    {
    "code": 200
    "message": "操作成功"
    }
