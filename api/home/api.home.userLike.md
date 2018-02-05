## 接口描述
标签或王国喜欢不喜欢接口

## API Path
/api/home/userLike

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|data|long|是|王国ID 或 标签ID|
|type|int|是|分类，1王国，2标签|
|isLike|int|是|操作标识，0不喜欢，1喜欢，2置顶（仅type=2有效，并且是喜欢的标签），3移除（仅type=2有效，并且是喜欢的标签），4取消置顶|
|needNew|int|否|是否需要新的数据返回（仅type=2并且isLike=0有效），0否（默认），1是|
|tagIds|string|否|needNew=1时需要，首页列表中所有的标签ID，多个之间以英文逗号分隔|

## 返回报文
	{
	    "code": 200,
	    "data": {
	        "newKingdomTag": {
	            "tagId": 11,
	            "tagName": "宠物",
	            "coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG",
	            "personCount": 4632,
	            "kingdomCount": 53,
	            "imageData": [
	                {"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"},
	                {"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"}
	                ],
	            }
	        },
	    "message": "ok"
    }

### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|newKingdomTag|obj|新标签节点，只有当请求type=2并且isLike=0并且needNew=1时返回|

### newKingdomTag字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|tagId|long|标签ID|
|tagName|string|标签名称|
|coverImage|string|封面图|
|personCount|int|参与人数|
|kingdomCount|int|王国数量|
|isShowLikeButton|int|1 显示，0不显示|
|imageData|array|王国图片组|

### 王国图片组信息imageData成员结构说明
|字段|类型|描述|
|:-|:-|:-|
|coverImage|string|封面图|
