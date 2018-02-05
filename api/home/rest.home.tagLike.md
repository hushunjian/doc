## 接口描述
标签喜欢不喜欢接口

## API Path
/rest/home/tagLike

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|data|long|是|标签ID|
|isLike|int|是|操作标识，0不喜欢，1喜欢，2置顶，3移除，4取消置顶|
|needNew|int|否|是否需要新的数据返回（仅isLike=0有效），0否（默认），1是|
|tagIds|string|否|needNew=1时需要，首页列表中所有的标签ID，多个之间以英文逗号分隔|

## 返回报文
	{
	    "code": 200,
	    "data": {
	        "newKingdomTag": {
	            "tagId": 11,
	            "tagName": "宠物",
	            "personCount": 4632,
	            "kingdomCount": 53,
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
	        },
	    "message": "ok"
    }

### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|newKingdomTag|obj|新标签节点，只有当请求isLike=0并且needNew=1时返回|

### newKingdomTag字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|tagId|long|标签ID|
|tagName|string|标签名称|
|personCount|int|参与人数|
|kingdomCount|int|王国数量|
|isShowLikeButton|int|1 显示，0不显示|
|imageData|array|王国图片组|

### 王国图片组信息imageData成员结构说明
|字段|类型|描述|
|:-|:-|:-|
|fid|long|发言ID，及fragmentId|
|contentType|int|发言内容类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|type|int|发言类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|fragment|string|发言|
|fragmentImage|string|图片|
|extra|string|发言扩展信息，主要是APP前端解析的数据，后台主要是存储|
|topicId|long|王国ID|
