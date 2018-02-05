## 接口描述
王国封面获取接口

## API Path
/api/live/liveCover

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|直播id|
|source|int|是|客户端类型（来源），0、APP内（默认），1、APP外|
|fromUid|long|否|推荐来源，H5访问时如果存在则携带，用于记录转发王国的用户|

## 返回报文
{
	"accessToken": "edc9b3504aa6474eb25025ffe4c10a28",
	"code": 20053,
    "data": {
    	"title":"",
    	"createTime":12345678,
    	"lastUpdateTime":12345678,
    	"coverImage":"",
    	"uid":446,
    	"avatar":"",
    	"avatarFrame":"",
    	"nickName":"",
    	"topicCount":12,
    	"reviewCount":12,
    	"internalStatus":"",
    	"liveWebUrl":"",
    	"v_lv":0,
    	"level":3,
    	"hasFavorite":1,
    	"favorite":1,
    	"type":0,
    	"acCount":0,
    	"acTopList":[],
    	"ceCount":0,
    	"publishLimit":0,
    	"isRec":0,
    	"tags":"",
    	"recTags":"",
    	"topicPrice":123,
    	"topicRMB":1.23,
    	"topicPriceChanged":0,
    	"beatTopicPercentage":0,
    	"isSteal":0,
    	"trackContent":"",
    	"trackImage":"",
    	"summary":"",
    	"kcid":1,
    	"kcImage":"",
    	"kcIcon":"",
    	"kcName":"",
    	"giftList":[],
    	"newsTopList":[],
    	"rights":1,
    	"canView":0
    },
    "message": "王国封面获取成功"
}

#### 返回码
|code|desc|
|:-|:-|
|20053|王国封面获取成功|
|50037|来晚一步！这个王国已经被删除了……|
|50037|此王国需要经过国王邀请才允许进入|


#### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|title|string|王国标题|
|createTime|long|王国创建时间|
|lastUpdateTime|long|王国更新时间|
|coverImage|string|王国封面|
|uid|long|国王UID|
|avatar|string|国王头像|
|avatarFrame|string|头像框|
|nickName|string|国王昵称|
|topicCount|int|更新数|
|reviewCount|int|回复数|
|internalStatus|int|当前用户对于本王国身份，0其他，1已加入，2核心圈|
|liveWebUrl|string|王国分享地址|
|v_lv|int|国王是否大V，0否，1是|
|level|int|国王等级|
|hasFavorite|int|当前用户是否已加入王国，0否，1是|
|favorite|int|同hasFavorite，冗余字段（前端历史原因）|
|type|int|王国类型，0个人王国，1000聚合王国|
|acCount|int|子王国数（聚合王国属性）|
|acTopList|array|子王国列表（聚合王国属性）|
|ceCount|int|被聚合数（子王国属性）|
|publishLimit|int|聚合下发上限，聚合王国属性|
|isRec|int|是否已banner推荐，0否，1是|
|tags|string|王国标签，多个标签之间以英文分号分隔|
|recTags|string|王国推荐标签，多个标签之间以英文分号分隔|
|topicPrice|int|王国价值|
|topicRMB|double|王国价值对应人民币|
|topicPriceChanged|int|王国价值增量，大于0增值小于0贬值|
|beatTopicPercentage|int|击败王国百分比，整型，贬值默认0|
|isSteal|int|当前用户对于该王国的偷取状态，0不可偷取，1可偷取，2已偷过|
|trackContent|string|足迹内容|
|trackImage|string|足迹内容中的图片|
|summary|string|王国简介|
|kcid|int|分类id|
|kcImage|string|分类图片|
|kcIcon|string|分类图标（圆圈的那个）|
|kcName|string|分类名字|
|giftList|array|待播放的礼物列表|
|newsTopList|array|跑马灯列表|
|rights|int|王国可见类型，1公开，2私密|
|canView|int|当前用户是否可见，0否，1是|

#### acTopList子王国字段说明
|名称|类型|备注|
|:-|:-|:-|
|topicId|long|王国ID|
|title|string|王国标题|
|coverImage|string|王国封面|
|internalStatus|int|当前用户对于该王国的身份，0其他，1已加入，2核心圈|

#### giftList礼物字段说明
|名称|类型|备注|
|:-|:-|:-|
|giftId|long|礼物ID|
|count|int|礼物数量|

#### newsTopList跑马灯信息字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|信息ID|
|topicId|long|对应王国ID|
|content|string|跑马灯内容|
|type|int|信息类型，0王国转让交易信息，1王国价值超过交易底线信息，2大红包|
|internalStatus|int|当前用户对于该王国的身份，0其他，1已加入，2核心圈|
|contentType|int|王国类型，0个人王国，1000聚合王国|
