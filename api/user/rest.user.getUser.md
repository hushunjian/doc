## 接口描述
获取用户基础资料信息

## API Path
/rest/user/getUser

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|targetUid|long|是|待查询的人的信息|

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
			"v_lv":0,
			"isFollowed":0,
			"isFollowMe":0,
			"level":0,
			"createTime":12345678910,
			"industryId":1,
			"industry":"建筑"
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
|v_lv|int|是否大V，0否，1是|
|level|int|等级|
|isFollowed|int|是否关注，0否，1是|
|isFollowMe|int|是否关注我，0否，1是|
|createTime|long|创建时间|
|industryId|long|行业ID|
|industry|string|行业名称|

