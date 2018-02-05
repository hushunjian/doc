## 接口描述
表情包全量查询接口，可用于展现以及检查是否有更新。

## API Path
/rest/content/emojiPackageQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"code": 200,
		"data": {
			"packageData":[
				{
					"id":1,
					"name":"",
					"cover":"",
					"emojiType":1,
					"version":1,
					"pVersion":1,
					"extra":""
				}
			]
		}
		"message": "ok"
	}

### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|packageData|array|表情包节点数组|

### packageData表情包节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|id|long|表情包ID|
|name|string|名字|
|cover|string|封面图|
|emojiType|int|表情包类型，0中表情，1大表情|
|version|int|表情包版本|
|pVersion|int|分析器版本|
|extra|string|扩展字段（预留）|

