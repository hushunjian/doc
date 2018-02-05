## 接口描述
赠送礼物接口
## API Path
/api/live/sendGift
## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|topicId|long|是|王国ID
|giftId|long|是|礼物ID
|giftCount|int|是|礼物数量
|onlyCode|string|是|唯一标识
|source|int|是|来源
## 返回报文
	{
        {
            "fragmentId": 1234567,
            "count": 2,
            "remainPrice": 1000
        }
     }
|字段|类型|描述
|:-|:-|:-
|fragmentId|long|发言ID
|count|int|成功送出礼物个数
|remainPrice|int|用户还剩米汤币