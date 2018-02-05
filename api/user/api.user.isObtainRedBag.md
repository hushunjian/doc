## 接口描述
领取红包
## API Path
/api/user/isObtainRedBag
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
    {
        "accessToken": "a9c8a2e3aca7445abce9559fdc42edda",
        "code": 200,
        "data": {
            "isObtainRedBag": 1,(1为领取过 , 0为未领取)
            "uid": 326
        },
        "message": "ok"
    }
