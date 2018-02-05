## 接口描述
直播详情页我二维码
## API Path
/api/live/liveQrcode
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId    |int    |是    |直播id    |
## 返回报文
    {
    "accessToken": "524c2c2c890a4c5cbf2bc8723166e775",
    "code": 20058,
    "data": {
    "liveQrCodeUrl": "http://cdn.me-to-me.com/ce112630-da65-45ce-9964-0d29e547c248"
        },
    "message": "获取二维码成功"
    }
    
