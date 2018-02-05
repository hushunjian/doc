## 接口描述
个人等级接口

## API Path
/rest/user/getMyLevel

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"accessToken": "697c707abc0a45839f78cc7a1d4a2cd5",
		"code": 200,
		"data": {
			"availabeCoin": 0,
			"avatar": "https://cdn.me-to-me.com/FnJMtJWvSHyRCcEa3zHdH8wd3oIG",
			"currentLevel": {
				"level": 3,
				"name": "name:3"
			},
			"nextLevel": {
				"level": 4,
				"name": "name:4"
			},
			"nextLevelCoin": 3000,
			"permissions": {
				"level": 3,
				"nodes": [
					{
						"code": 1,
						"name": "米汤专属表情包",
						"status": 1
                  },
                  {
                      "code": 2,
                      "name": "王国专属文字排版",
                      "status": 1
                  },
                  {
                      "code": 3,
                      "name": "超清晰原图展示",
                      "openLevel": 6,
                      "status": 0
                  },
                  {
                      "code": 4,
                      "name": "5分钟超长语音",
                      "openLevel": 8,
                      "seconds": 5,
                      "status": 0
                  },
                  {
                      "code": 5,
                      "name": "发送视频",
                      "openLevel": 4,
                      "status": 0
                  },
                  {
                      "code": 6,
                      "name": "私下单独聊聊",
                      "openLevel": 4,
                      "status": 0
                  },
                  {
                      "code": 7,
                      "name": "10个聚合王国",
                      "openLevel": 7,
                      "status": 0
                  }
				]
			},
			"preLevel": {
               "level": 2,
               "name": "name:9"
           },
           "stealTopicId": 0
		},
		"message": "ok"
	}

### 返回data字段解释
|字段|类型|描述|
|:-|:-|:-|
|availabeCoin|int|当前用户米汤币|
|avatar|string|头像|
|currentLevel|object|当前等级节点|
|nextLevel|object|下一个等级节点|
|preLevel|object|上一个等级节点|
|nextLevelCoin|int|距离下一级还需要多少米汤币|
|permissions|object|权限节点|
|stealTopicId|long|可被偷王国ID|
|randomTopicId|long|非自己的，可发言的王国|
|priceRMB|double|当前用户米汤币转换的RMB数值|

### currentLevel、nextLevel、preLevel等级节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|level|int|等级|
|name|string|等级别名|

### permissions 权限节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|level|int|等级|
|nodes|array|具体权限子节点数组|

### nodes 具体权限子节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|code|int|唯一标识|
|name|string|权限名称|
|openLevel|int|该权限开启对应等级|
|status|int|当前用户是否拥有权限，0否，1是<br>(备注:权限为下载图片时 0 表示无权限 1表示下载有水印图片 2 表示下载无水印图片)|
|seconds|int|当权限为语音时，语音的时长，单位秒|
|num|int|次数相关属性，如可偷王国数目，每次偷取上限等|

    
