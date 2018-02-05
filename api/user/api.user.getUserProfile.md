## 接口描述
获取用户资料信息

## API Path
/api/user/getUserProfile

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"accessToken":"e43a771327764cc3926851da25950054",
		"code":200,
		"data":{
			"uid":297,
			"nickName":"瞧我的眼神",
			"gender":1,
			"avatar":"http://cdn.me-to-me.com/dbbb6254-030a-47b2-837b-fd82f452d844",
			"avatarFrame":"",
			"birthday":"1990-7-16",
			"meNumber":"10036137",
			"followedCount":"24",
			"fansCount":"9",
			"userName":"18202149850",
			"token":"5a7718816c9d4803a7017067c7f39230",
			"introduced":"看着我的眼睛，快向我低头",
			"isPromoter":0,
			"power":0,
			"ugcCount":10,
			"liveCount":15,
			"thirdPartBind":"[{\"thirdPartName\":\"qq\",\"status\":1}]",
			"v_lv":0,
			"acCount":12,
			"upgrade":0,
			"currentLevel":3,
			"level":"3",
			"availableCoin":124,
			"priceRMB":1.24,
			"levelIcon":"",
			"hobbyList":[
				{
					"hobby": 83,
					"value": "动漫"
	      		}
			],
			"hasPwd":0,
			"hasInfoCoin":0
		},
		"message":"ok"
	}

### 返回data字段解释
|字段|类型|描述|
|:-|:-|:-|
|uid|long|用户UID|
|nickName|string|昵称|
|gender|int|性别，0女，1男|
|avatar|string|头像|
|avatarFrame|string|头像框|
|birthday|string|生日|
|meNumber|string|ME号|
|followedCount|int|关注数|
|fansCount|int|粉丝数|
|userName|string|用户名|
|token|string|用户token|
|introduced|string|用户简介|
|isPromoter|int|是否推广员，0否，1是|
|power|int|是否管理员，0否，1是|
|ugcCount|int|UGC数|
|liveCount|int|王国数|
|thirdPartBind|string|登录类型json串|
|v_lv|int|是否大V，0否，1是|
|acCount|int|个人王国数|
|upgrade|int|是否升级，0否，1是|
|currentLevel|int|当前等级数|
|level|int|等级|
|availableCoin|int|可用米汤币|
|priceRMB|double|可用米汤币RMB数额|
|levelIcon|string|等级图标|
|hobbyList|array|兴趣爱好节点数组|
|hasPwd|int|是否设置过密码，0否，1是|
|hasInfoCoin|int|是否领取过信息红包，0否，1是|

### 兴趣爱好节点描述
|字段|类型|描述|
|:-|:-|:-|
|hobby|long|兴趣ID|
|value|string|兴趣名称|
