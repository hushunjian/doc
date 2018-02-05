## 接口描述
获取关注列表（按昵称排序）

## API Path
/rest/user/showFollows2

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|int|是|用户uid|
|sinceId|int|是|分页标识 初始值为-1|

## 返回报文
	{
		"code": 20070,
		"data": {
			"result": [
				{
					"uid":299,
					"nickName":"习近平",
					"avatar":"http://cdn.me-to-me.com/default.jpg",
					"avatarFrame":"",
					"isFollowed":1,
					"isFollowMe":0,
					"introduced":"",
					"v_lv":0,
					"level":1
				}
			]
		},
		"message": "获取关注列表成功"
    }
    
### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|result|array|关注用户节点数组|

### result关注用户节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|isFollowed|int|是否关注过，0否，1是|
|isFollowMe|int|是否关注我，0否，1是|
|introduced|string|用户简介|
|v_lv|int|是否大V，0否，1是|
|level|int|用户等级|
