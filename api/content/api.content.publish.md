## 接口描述
内容发布接口

## API Path
/api/content/publish

## 请求报文
|名称         |类型           |是否必须   |备注                                 |
|-------------|:--------------|:---------:|:------------------------------------|
|type    |int    |是    |内容类型，这里只有10王国详情UGC    |
|targetTopicId    |long    |是    |待插入的王国ID，3.0.2版本新增,传递了则直接插入到该王国中，如果未传递，则插入到用户的情绪王国中    |
|title    |string    |否    |UGC标题    |
|content    |string    |否    |发表内容    |
|imageUrls    |string    |否    |上传图片后拼接的字符串多个图片链接用“;”隔开(七牛返回的key,不需要拼装)    |
|imageWidths    |string    |否   |图片的宽，多个图片之间以英文“;”号分隔，数组顺序同imageUrls  |
|imageHeights    |string    |否    |Type=10有效，图片的高，多个图片之间以英文“;”号分隔，数组顺序同imageUrls    |


## 返回报文
	{
		"topicId":123,
		"contentType":0,
		"internalStatus":2,
		"fragmentId":123,
		"upgrade":0,
		"currentLevel":2
	}

###字段说明
|名称|类型|说明|
|:-|:-|:-|
|topicId|long|插入王国ID|
|contentType|int|插入王国的类型，0个人王国，1000聚合王国|
|internalStatus|int|当前用户对于插入王国的身份，0圈外，1成员，2核心圈|
|fragmentId|long|插入王国中的内容ID|
|upgrade|int|是否升级，0否，1是|
|currentLevel|int|当前等级|
