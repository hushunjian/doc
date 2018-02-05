## 接口描述
记录中奖用户信息(供h5使用)
## API Path
/api/activity/addWinners
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|activityName    |int    |是    |活动名称(1 小米活动)    |
|awardName    |string    |是    |奖品名称    |
|mobile    |string    |是    |手机号    |
|awardId    |int    |是    |奖品编号    |
## 返回报文
    {
    "accessToken": "5be5296818054a859f61e65f30604fce",
    "code": 200,
    "message": "ok"
    }
