## 接口描述
活动短信通知接口
## API Path
/api/user/sendAwardMessage
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|nickName    |string    |是    |昵称    |
|awardName    |Int    |是    |奖品名称    |
|mobile    |string    |是    |手机号    |
## 返回报文
    {
    "accessToken": "cac571544f7246889062acaab039db86",
    "code": 50039,
    "message": "中奖短信发送成功"
    }
    
