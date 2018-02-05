## 接口描述
推荐标签组详情接口

## API Path
/rest/home/recTagGroup

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"code": 200,
		"data": {
			"recTags": [
				{
					"tagId":11,
					"tagName":"标题",
					"personCount": 0,
					"kingdomCount": 0,
					"isShowLikeButton":1,
					"imageData": [
						{
							"fid":111,
							"fragmentImage":"http://cdn.me-to-me.com/default.jpg",
							"fragment":"",
							"type":0,
							"contentType":1,
				    		"extra":"",
				    		"topicId":1234
						}
					]
				}
			]
		},
		"message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|tagId|long|标签ID|
|tagName|string|标签名称|
|personCount|int|参与人数|
|kingdomCount|int|王国数量|
|isShowLikeButton|Int|1 显示，0不显示|
|imageData|Array|外露节点数组|

### imageData外露节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|fid|long|fragmentId|
|fragmentImage|string|图片地址|
|fragment|string|如果是视频，则存放视频地址|
|type|int|类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|contentType|int|内容类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|extra|string|扩展信息，具体详见《王国详情Extra信息白皮书.pdf》|
|topicId|long|王国ID|
    	