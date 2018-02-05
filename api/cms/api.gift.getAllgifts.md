## 接口描述
获取礼物列表
## API Path
/api/gift/getAllGifts
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "giftId":1,
                  "name":"帐篷",
                  "image":"",
                  "imageWidth":10,
                  "imageHeight":10,
                  "price": 10,
                  "addPrice":10,
                  "gifImage":"",
                  "duration": 10000,
                  "sortNumber": 1
                },
                {
                  "giftId":2,
                  "name":"飞机",
                  "image":"",
                  "imageWidth":10,
                  "imageHeight":10,
                  "price": 1000,
                  "addPrice":200,
                  "gifImage":"",
                  "duration": 10000,
                  "sortNumber": 2
                }
            ],
            "total":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|giftId   |int     |礼物id           |
|name     |string  |礼物名称         |
|image    |string  |礼物图片         |
|imageWidth    |int     |礼物图片宽度|
|imageHeight   |int     |礼物图片高度|
|price    |int     |礼物价值         |
|addPrice |int     |王国估值增加价值 |  
|gifImage |string  |动画图片         |
|duration |int     |播放时长(毫秒)   |
|sortNumber|int    |排序序号         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |