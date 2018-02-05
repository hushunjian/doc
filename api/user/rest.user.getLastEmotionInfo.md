## 接口描述
最近一次情绪信息查询接口

## API Path
/rest/user/getLastEmotionInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
		"code": 200,
		"data": {
			"id":1,
			"isSummary":0,
			"dateStr":"",
			"emotionName":"",
			"happyValue":12,
			"freeValue":12,
			"topicId":123,
			"recordCount":12,
			"timeInterval":122,
			"createTime""12345687890,
			"emotionPack":{
				"id":1,
				"title":"",
				"content":"",
				"image":"",
				"thumb":"",
				"w":1,
				"h":1,
				"thumb_w":1,
				"thumb_h":1,
				"extra":"",
				"emojiType":1
			}
		},
		"message": "ok"
	}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|情绪词ID，为0表示没有最新情绪信息|
|isSummary|int|上周是否总结 1是 0否|
|dateStr|string|时间区间（当isSummary=1时有效）|
|emotionName|string|情绪词名称|
|happyValue|int|开心指数值|
|freeValue|int|空闲指数值|
|topicId|long|对应的王国ID|
|recordCount|int|情绪记录总数|
|timeInterval|long|情绪记录到服务器当前时间的秒数|
|createTime|long|情绪设置时间|
|emotionPack|object|大表情内容信息节点|

### emotionPack大表情内容信息节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|表情ID|
|title|string|表情名字|
|content|string|表情内容描述|
|image|string|表情大图|
|thumb|string|表情缩略图|
|w|int|大图宽|
|h|int|大图高|
|thumb_w|int|缩略图宽|
|thumb_h|int|缩略图高|
|extra|string|扩展字段|
|emojiType|int|表情包类型，0中表情，1大表情|

