## 接口描述
保存日签信息接口
## API Path
/api/live/saveDaySignInfo
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|image    |string    |是    |日签图片七牛KEY    |
|extra    |string    |是    |图片信息    |
|source    |int    |是    |来源    |
|uids    |string    |是    |语录机器人UID，英文逗号分割    |
|quotationIds    |string    |是    |语录ID，英文逗号分割    |
## 返回报文
    {
    "code": 200,
    "message": "操作成功"
    }
