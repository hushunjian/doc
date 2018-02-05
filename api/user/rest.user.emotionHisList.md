## 接口描述
情绪历史列表查询接口
返回用户最近设置的20个情绪(这个数量当然以产品给的为准)
返回列表按时间倒序

## API Path
/rest/user/emotionHisList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"totalCount":1,
	    	"topicId":1234,
	    	"emotionList":[
	    		{
	    			"id":1,
	    			"rid":1,
	    			"emotionName":"",
	    			"happyValue":1,
	    			"freeValue":1,
	    			"createTime":1234556778,
	    			"timeInterval":123,
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
	    		}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|totalCount|int|情绪记录总数|
|topicId|long|用户的情绪王国，也即生活记录王国，如果topicId=0说明当前用户自己删掉了|
|emotionList|array|用户情绪历史节点数组|

#### emotionList历史情绪节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|情绪ID|
|rid|long|情绪记录ID|
|emotionName|string|情绪词名称|
|happyValue|int|开心指数值|
|freeValue|int|空闲指数值|
|createTime|long|情绪设置时间|
|timeInterval|int|情绪记录到服务器当前时间的秒数（只有第一个是有效的）|
|emotionPack|object|大表情内容信息节点|

#### emotionPack大表情内容节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|表情ID|
|title|string|表情名字|
|content|string|表情内容描述|
|image|string|表情大图地址|
|thumb|string|表情缩略图地址|
|w|int|大图宽|
|h|int|大图高|
|thumb_w|int|缩略图宽|
|thumb_h|int|缩略图高|
|extra|string|扩展字段|
|emojiType|int|表情包类型，0中表情，1大表情|