## 接口描述
聚合王国子王国列表接口（外露方式）

## API Path
/api/content/acKingdomList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|ceTopicId|long|是|聚合王国ID|
|resultType|int|是|结果类型，0王国列表（默认）,1图片列表|
|page|int|否|分页参数，第一页传1（默认）|

## 返回报文
	{
	"code": 200,
	"data": {
		"acCount":123,
		"acKingdomList":[
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
            	"tags": "曹昌昊的兴趣爱好",
            	"textData": [],
            	"ugcData": [],
            	"uid": 12734,
            	"kcid": 0,
            	"v_lv":1,
            	"kcIcon": "王国分类图标",
            	"kcName": "王国分类名",
            	"isTop":0,
            	"rights":1,
            	"canView":0
			}
		],
		"acImageList":[
			{
				"fid":111,
				"fragmentImage":"http://cdn.me-to-me.com/default.jpg",
				"fragment":"",
				"type":0,
				"contentType":1,
	    		"extra":"",
	    		"topicId":1234,
	    		"title":"王国名",
	    		"uid":446,
	    		"nickName":"昵称",
	    		"avatar":"http://cdn.me-to-me.com/default.jpg",
	    		"v_lv":0,
	    		"level":3,
	    		"createTime":12345678999,
	    		"likeCount":123,
	    		"isLike":0
			}
		]
	},
	"message": "ok"
	}
    
### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|acCount|int|子王国数|
|acKingdomList|array|子王国节点数组，当请求的resultType=0时返回本字段|
|acImageList|array|子王国图片节点数组，当请求的resultType=1时返回本字段|
    
### acKingdomList节点字段说明
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
|textData|array|文字内容节点数组|
|audioData|array|音频内容节点数组|
|imageData|array|图片内容节点数组（包含图片、视频、链接、抽奖、投票）|
|kcid|int|王国分类类型|
|kcIcon|string|王国分类图标|
|kcName|string|王国分类名|
|isTop|int|是否置顶，0否，1是|
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


### acImageList节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|fid|long|fragmentId|
|fragmentImage|string|图片地址|
|fragment|string|如果是视频，则存放视频地址|
|type|int|类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|contentType|int|内容类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|extra|string|扩展信息，具体详见《王国详情Extra信息白皮书.pdf》|
|createTime|long|创建时间|
|topicId|long|王国ID|
|title|string|王国名|
|uid|long|发言人UID|
|nickName|string|发言人昵称|
|v_lv|int|是否大V，0否，1是|
|level|int|用户等级|
|avatar|string|用户头像|
|likeCount|int|图片点赞数|
|isLike|int|当前用户是否点赞过，0否，1是|


