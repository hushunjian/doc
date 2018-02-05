## 接口描述
更新礼物
## API Path
/api/gift/updateGift
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|giftId   |int     |礼物Id           |
|name     |string  |礼物名称         |
|image    |string  |礼物图片         |
|imageWidth    |int     |礼物图片宽度|
|imageHeight   |int     |礼物图片高度|
|price    |int     |礼物价值         |
|addPrice |int     |王国估值增加价值 |  
|gifImage |string  |动画图片         |
|duration |int     |播放时长(毫秒)   |
|sortNumber|int    |排序序号         |
## 请求报文
    {
        "token":"{{token}}",
        "giftId": 3
        "name":"帐篷",
        "image":"",
        "imageWidth":10,
        "imageHeight":10,
        "price": 10,
        "addPrice":10,
        "gifImage":"",
        "duration": 10000,
        "sortNumber": 1
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
