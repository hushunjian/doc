## 接口描述
获取王国信息接口
3.2.0版本开始使用

## API Path
/rest/live/getLiveByCid

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|cid|int|是|王国ID|

## 返回报文
	{
	    "avatar": "http://7xs9q4.com2.z0.glb.qiniucdn.com/Fg0nVhri6RjAZ4TnRClDbcs07DLk",
	    "avatarFrame":"",
	    "cid": 1631,
	    "coverImage": "http://7xs9q4.com2.z0.glb.qiniucdn.com/FsuInNVB5Sc3JPlq0VSHereed7qH",
	    "createTime": 1464158162000,
	    "favorite": 0,
	    "favoriteCount": 2,
	    "isFollowed": 0,
	    "isLike": 1,
	    "likeCount": 5,
	    "nickName": "渐渐酱",
	    "personCount": 0,
	    "reviewCount": 5,
	    "status": 0,
	    "title": "杨绛先生语录",
	    "topicId": 92,
	    "uid": 329,
	    "updateTime": 1464158162000,
	    "internalStatus":0,
	    "contentType":1000,
	    "acCount":1,
	    "acTopList":[{
	    	"topicId":11,
	    	"title":"王国名",
	    	"coverImage":"王国封面",
	    	"internalStatus":0
	    }],
	    "ceCount":0,
	    "isRec":0,
	    "topicPrice":0,
	    "topicRMB":0,
	    "topicPriceChanged":0,
	    "beatTopicPercentage":0,
	    "isSteal":0,
	    "summary":"1234",
	    "isFirstView":0,
	    "isLottery":0,
	    "kcid": 0,
        "kcImage":"王国分类图标",
        "kcIcon":"分类图标",
        "kcName":"王国分类名",
        "giftList":[{
	    	"giftId":11,
	    	"giftCount":3
	    }],
	    "isForbid":1,
	    "isAllForbid":0,
	    "autoCoreType":0,
	    "acImageList":[
	    	{
	    		"imageUrl":"https://cdn.me-to-me.com/default.jpg",
	    		"type":1,
	    		"extra":""
	    	}
	    ],
	    "rights":1,
    	"canView":0,
    	"isFriend":0,
    	"onlyFriend":1,
    	"middleman":{
	    	"uid":12,
		    "nickName":"abc",
		    "avatar":"http://cdn.me-to-me.com/default.jpg",
		    "avatarFrame":"",
		    "v_lv":0,
		    "content":""
	    }
	}
	
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|avatar|string|国王头像|
|avatarFrame|string|国王头像框|
|coverImage|string|王国封面|
|createTime|long|王国创建时间|
|nickName|string|国王昵称|
|status|int|王国状态|
|title|string|王国标题|
|favorite|int|当前用户是否收藏过，0否，1是|
|uid|long|国王UID|
|topicId|long|王国ID|
|favoriteCount|int|王国成员数|
|personCount|int|已废弃字段|
|reviewCount|int|评论数|
|readCount|int|阅读数|
|isLike|int|当前用户是否点赞， 0否，1是|
|likeCount|int|点赞数|
|cid|long|王国内容表ID|
|updateTime|long|王国更新时间|
|isFollowed|int|是否关注国王，0否，1是|
|isFollowMe|int|是否被国王关注，0否，1是|
|v_lv|int|国王是否大V，0否，1是|
|level|int|国王等级|
|tags|string|王国标签|
|recTags|string|王国推荐标签|
|internalStatus|int|当前用户对于王国的身份，0圈外，1成员，2核心圈|
|contentType|int|王国类型，0个人王国，1000聚合王国|
|acCount|int|子王国数，只有contentType=1000时有效|
|acTopList|array|子王国列表，只有contentType=1000时有效|
|ceCount|int|被聚合数，只有contentType=0时有效|
|isRec|int|是否被banner推荐，0否，1是|
|topicPrice|int|王国价值（米汤币）|
|topicRMB|double|王国价值（人民币）|
|topicPriceChanged|int|王国价值增量，大于0增值小于0贬值|
|beatTopicPercentage|int|击败王国百分比，整型，贬值默认0|
|isSteal|int|偷取状态 0 不可偷取 1可偷取 2已偷过|
|summary|string|王国简介|
|isFirstView|int|是否第一次进王国|
|isLottery|int|是否有抽奖|
|kcid|long|王国分类ID|
|kcImage|string|王国分类图片|
|kcIcon|string|王国分类图标|
|kcName|string|王国分类名称|
|giftList|array|未播放礼物列表|
|giftId|long|礼物ID|
|giftCount|int|礼物个数|
|isForbid|int|当前用户是否被禁言，0否，1是|
|isAllForbid|int|当前王国是否全禁言，0否，1是|
|autoCoreType|int|加入及自动加入核心圈，0否（默认），1是|
|acImageList|array|聚合王国上方图片内容节点数组，只有当type=1000时返回|
|rights|int|王国可见类型，1公开，2私密|
|canView|int|当前用户是否可见，0否，1是|
|isFriend|int|是否好友，0否，1是|
|onlyFriend|int|是否仅好友可见，0否，1是|
|middleman|object|中间人节点，仅当isFriend=0并且onlyFriend=1时可能存在|

### acTopList节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|topicId|long|子王国ID|
|title|string|子王国标题|
|coverImage|string|子王国封面|
|internalStatus|int|当前用户对于子王国身份，0圈外，1成员，2核心圈|

### acImageList节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|imageUrl|string|图片地址|
|type|int|类型，1图片，2视频|
|extra|string|扩展信息，具体详见《王国详情Extra信息白皮书.pdf》|

#### middleman中间人字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|content|string|推荐描述|