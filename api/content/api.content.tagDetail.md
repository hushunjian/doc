## 接口描述
新标签详情接口

## API Path
/api/content/tagDetail

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|tagId|long|否|标签ID（tagId和tagName至少传一个）|
|tagName|string|否|标签名称（tagId和tagName至少传一个）|
|page|int|否|查询页数，第一页为1（默认）|

## 返回报文
	{
	"code": 200,
	"data": {
    	"tagId":11,
		"tagName":"铲屎官的日常",
		"isLike":0,
		"tagKingdomList":[
			{
           	"type": 12,
           	"cid": 1000,
           	"h":3,
           	"w":8
        	},
			{
				"type": 3,
            	"title": "曹昌昊的兴趣爱好",
            	"audioData": [],
            	"avatar": "https://cdn.me-to-me.com/icon.png",
            	"avatarFrame": "",
            	"cid": 8586,
            	"topicId": 8586,
            	"content": "曹昌昊的兴趣爱好",
            	"contentType": 0,
            	"coverImage": "https://cdn.me-to-me.com/deb2270f53a4165bfb819b56bd57eca0",
            	"createTime": 1505439912000,
            	"favorite": 0,
            	"favoriteCount": 1,
            	"updateTime": 1505439912000,
            	"imageData": [],
            	"isFollowMe": 0,
            	"isFollowed": 0,
            	"isShowLikeButton": 0,
            	"level": 1,
            	"likeCount": 0,
            	"nickName": "曹昌昊",
            	"personCount": 0,
            	"price": 0,
            	"priceRMB": 0,
            	"readCount": 7,
           	"reviewCount": 0,
            	"showPriceBrand": 0,
            	"showRMBBrand": 0,
            	"showTag": 0,
            	"tags": "曹昌昊的兴趣爱好",
            	"textData": [],
            	"topicPrice": 0,
            	"topicRMB": 0,
            	"transferPrice": 0,
            	"ugcData": [],
            	"uid": 12734,
            	"kcid": 0,
            	"vip":1,
            	"kcIcon": "王国分类图标",
            	"kcName": "王国分类名",
            	"rights":1,
            	"canView":0
			}
		]
	},
	"message": "ok"
	}
    
### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|tagId|long|标签ID|
|tagName|string|标签名字|
|isLike|int|当前用户是否喜欢本标签，0未选择，1喜欢，2不喜欢|
|tagKingdomList|array|标签王国节点数组|
|coverList|array|封面王国节点数组|
    
### tagKingdomList标签王国节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|uid|long|用户ID|
|cid|long|内容ID|
|avatar|string|用户头像|
|nickName|string|用户昵称|
|topicId|long|王国id|
|content|string|UGC王国标题|
|tags|string|标签，多个标签之间用英文逗号进行分隔|
|type|int|内容类型<BR>3王国<BR>12广告条|
|createTime|long|创建时间|
|coverImage|string|封面|
|title|string|标题|
|isFollowed|int|是否关注过作者<BR>0否<BR>1是|
|isFollowMe|int|是否被作者关注过<BR>0否<BR>1是|
|reviewCount|int|评论数|
|favoriteCount|int|成员数|
|readCount|int|阅读数|
|favorite|int|当type=3时有效，当前用户是否收藏过<BR>0否<BR>1是|
|updateTime|long|内容更新时间|
|contentType|int|当type=3/6时，为王国类型<BR>0个人王国<BR>1000聚合王国|
|v_lv|int|是否大V<BR>0否<BR>1是|
|level|int|用户等级|
|ugcData|array|UGC内容节点数组|
|isShowLikeButton|int|是否显示喜欢、不喜欢按钮<BR>0不显示<BR>1显示|
|price|long|米汤币价值|
|priceRMB|long|人名币价值|
|showPriceBrand|int|是否显示价签<br>0不显示<br>1显示|
|showRMBBrand|int|是否显示价签<br>0不显示<br>1显示|
|kcid|int|王国分类类型|
|kcIcon|string|王国分类图标|
|kcName|string|王国分类名|
|coins|int|可获取的米汤币|
|textData|array|文字内容节点数组|
|audioData|array|音频内容节点数组|
|imageData|array|图片内容节点数组（包含图片、视频、链接、抽奖、投票）|
|rights|int|王国可见类型，1公开，2私密|
|canView|int|当前用户是否可见，0否，1是|


### 王国外露信息imageData、textData、ugcData及audioData成员结构说明
|字段|类型|描述|
|:-|:-|:-|
|id|long|发言ID，及fragmentId|
|contentType|int|发言内容类型|
|type|int|发言类型|
|fragment|string|发言|
|fragmentImage|string|图片|
|atUid|long|@人的UID（atUid>0有效）|
|atNickName|string|@人的昵称（atUid>0有效）|
|extra|string|发言扩展信息，主要是APP前端解析的数据，后台主要是存储|
    
### coverList封面王国节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|cid|long|当type=3时为王国内容表ID<br>当type=15时为标签ID|
|topicId|long|当type=3有效为王国ID|
|coverImage|string|图片地址|
|title|string|展示名称|
|type|int|内容类型<BR>3王国<BR>15标签|
	