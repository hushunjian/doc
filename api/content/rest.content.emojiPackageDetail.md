## 接口描述
表情包详情获取接口，获取表情包里的具体表情

## API Path
/rest/content/emojiPackageDetail

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|packageId|long|是|表情包ID|

## 返回报文
	{
		"code": 200,
		"data": {
			"packageId":1,
			"emojiType":1,
			"packageName":"包名",
			"packageCover","http://dd",
			"packageVersion":1,
			"packagePversion":1,
			"emojiData":[
				{
					"id":1,
					"title":"",
					"content":"",
					"image":"大图",
					"thumb":"缩略图",
					"w":1,
					"h":1,
					"thumb_w":1,
					"thumb_h":1,
					"extra":"",
					"emojiType":1
				}
			]
		},
		"message": "ok"
	}

### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|packageId|long|包ID|
|emojiType|int|表情类型，0中表情，1大表情|
|packageName|string|包名|
|packageCover|string|包封面|
|packageVersion|int|包版本|
|packagePversion|int|包解析器版本|
|emojiData|array|表情节点数组|

### emojiData 表情节点字段说明
|参数名称|类型|备注|
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
|extra|string|扩展字段（预留）|
|emojiType|int|表情包类型，0中表情，1大表情|

