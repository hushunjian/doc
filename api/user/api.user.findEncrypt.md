## 接口描述
忘记密码
## API Path
/api/user/findEncrypt
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|userName    |string    |是    |用户名（手机号）    |
|firstEncrypt    |string    |是    |新密码    |
|secondEncrypt    |string    |是    |重复密码    |
## 返回报文
    {
    "code": 20042,
    "message": "用户密码找回成功"
    }
    
