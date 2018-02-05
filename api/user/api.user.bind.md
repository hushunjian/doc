## 接口描述
绑定接口
## API Path
/api/user/bind
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|thirdPartOpenId    |string    |否（绑定第三方需要传）    |    |
|thirdPartToken    |string    |否（绑定第三方需要传）    |    |
|thirdPartType    |string    |否（绑定第三方需要传）    |1 qq 2 weixin 3 weibo    |
|mobile    |int    |否（绑定手机需要传）    |手机    |
|encrypt    |int    |否（绑定手机需要传）    |密码    |
## 返回报文
    {
    "accessToken": "9eb448208acc4d029b848652eb5df02c",
    "code": 200,
    "message": "ok"
    }
    
    绑定过的话
    {
    "accessToken": "564cc5b7e10f4f0281095855c8571dcc",
    "code": 20067,
    "message": "手机号已被注册或绑定过其他账号，请换号之后重试"
    }
    
