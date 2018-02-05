## 接口描述
标签推荐接口

## API Path
/api/content/tagRec

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|tagId|long|是|标签ID|

## 返回报文
	{
	"code": 200,
	"data": {
    	"tagId":11,
		"tagName":"铲屎官的日常",
		"recFollowList":[
			{
				"uid":446,
				"avatar":"http://cdn.me-to-me.com/default.png",
				"avatarFrame":"",
				"nickName":"我是好人m"
			},
			{
				"uid":446,
				"avatar":"http://cdn.me-to-me.com/default.png",
				"avatarFrame":"",
				"nickName":"我是好人m"
			}
		],
		"recKingdomTagList":[
			{
				"tagId": 11,
            	"tagName": "铲屎官的日常",
            	"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG",
            	"personCount": 4632,
            	"kingdomCount": 53,
            	"imageData": [
              		{"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"},
                	{"coverImage": "http://cdn.me-to-me.com/250a51c79a6d43159327ae3f474a8a7e.JPG"}
              ]
			}
		]
	}
	"message": "ok"
	}
    
### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|tagId|long|标签ID|
|tagName|string|标签名字|
|recFollowList|array|推荐关注节点数组|
|recKingdomTagList|array|推荐标签节点数组|

### 推荐关注节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|uid|long|用户UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
    
### 推荐标签节点字段说明
|参数名称|类型|	备注|
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
    	