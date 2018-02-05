## 接口描述
获取各个圈子成员接口

## API Path
/rest/sns/getCircleByType

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|int|是|王国ID|
|type|int|是|0圈外，1圈内，2核心，3禁言用户|
|sinceId|int|否|分页参数，第一页传1|

## 返回报文
	{
	    "accessToken": "320bc91c9cce4d11a6f69838d568eef8",
	    "code": 200,
	    "data": {
			"circleElements": [
				{
					"avatar": "http://cdn.me-to-me.com/dbbb6254-030a-47b2-837b-fd82f452d844",
					"avatarFrame":"",
					"introduced": "看着我的眼睛，快向我低头",
					"isFollowMe": 0,
					"isFollowed": 0,
					"nickName": "瞧我的眼神",
					"uid": 297,
					"v_lv":0,
					"level":5
				}
			],
			"coreCircleMembers": 3,
			"inCircleMembers": 0,
			"members": 10,
			"outCircleMembers": 7,
			"forbidMembers":1,
			"internalStatus":0
		},
		"message": "ok"
	}

### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|circleElements|array|用户节点数组|
|coreCircleMembers|int|核心圈人数|
|inCircleMembers|int|已废弃字段|
|members|int|成员人数（不包含禁言用户数）|
|outCircleMembers|int|加入王国的成员数|
|forbidMembers|int|禁言用户数|
|internalStatus|int|当前用户对于该王国的身份，0圈外，1加入，2核心圈|

### circleElements用户节点说明
|参数名称|类型|备注|
|:-|:-|:-|
|uid|long|用户UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|introduced|string|用户简介|
|v_lv|int|是否大V，0否，1是|
|level|int|用户等级|
|isFollowMe|int|是否关注过我，0否，1是|
|isFollowed|int|我是否关注过，0否，1是|
