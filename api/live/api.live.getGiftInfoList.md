## 接口描述
礼物列表获取接口
## API Path
/api/live/getGiftInfoList
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
## 返回报文
	{
    "result": [
        {
            "giftId": 1234567,
            "name": "标题",
            "image": "https://cdn.me-to-me.com/dds2342dffg",
            "price": 50,
            "addPrice": 40,
            "imageWidth": 10,
            "imageHeight": 10,
            "gifImage": "https://cdn.me-to-me.com/dds2342dffg",
            "playTime": 20,
            "sortNumber": 1
        }
    ]
    }
|字段|类型|描述
|:-|:-|:-
|result|array|广告节点数组
|giftId|long|礼物ID
|name|string|礼物名称
|image|string|礼物图片
|price|int|礼物价格
|addPrice|int|王国增长值
|imageWidth|int|礼物图片宽度
|imageHeight|int|礼物图片高度
|gifImage|string|GIF图片
|playTime|int|播放时长
|sortNumber|int|排序序号