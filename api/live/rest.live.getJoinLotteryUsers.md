## 接口描述
抽奖参与用户留言查询接口

## API Path
/rest/live/getJoinLotteryUsers

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|sinceId|long|否|分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId|
|lotteryId|long|是|抽奖ID|

## 返回报文
	{
		"code": 200,
		"data": {
			"joinUsers":[
				{
					"sinceId":1,
					"uid":12,
					"avatar":"",
					"avatarFrame":"",
					"nickName":"",
					"v_lv":0,
					"level":1,
					"content":"",
					"prohibit":0,
					"createTime":1111111
				}
			]
		},
		"message":"ok"
	}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|joinUsers|array|参与用户节点数组|

### joinUsers参与用户节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|sinceId|long|分页参数，发言记录ID|
|uid|long|用户UID|
|avatar|string|用户头像|
|avatarFrame|string|头像框|
|nickName|string|用户昵称|
|v_lv|int|是否大V，0否，1是|
|level|int|用户等级|
|content|string|留言内容|
|prohibit|int|展示状态，0正常，1取消资格|
|createTime|long|创建时间，毫秒数|

