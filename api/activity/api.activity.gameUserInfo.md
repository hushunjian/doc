## 接口描述
游戏活动信息查询接口

## API Path
/api/activity/gameUserInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|gameUid|long|是|活动用户UID|
|gameChannel|int|否|游戏渠道，0APP内（默认），1APP外|

## 返回报文
	{
	    "code": 200,
	    "data": {
	        "uid":123,
	        "nickName":"啦啦啦",
	        "avatar":"http://cdn.me-to-me.com/default.png",
	        "record":30,
	        "rank":1,
	        "coins":1234,
	        "price":"12.34",
	        "rankingList":[
	        	{
	        		"rank":1,
	        		"uid":1,
	        		"nickName":"张三",
	        		"avatar":"http://cdn.me-to-me.com/default.png",
	        		"record":30
	        	},
	        	{
	        		"rank":2,
	        		"uid":2,
	        		"nickName":"李四",
	        		"avatar":"http://cdn.me-to-me.com/default.png",
	        		"record":28
	        	}
	        ]
	    },
	    "message": "ok"
    }

### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|gameId|long|游戏
|uid|long|用户UID|
|nickName|string|活动用户昵称|
|avatar|string|活动用户头像|
|record|int|活动用户次数|
|rank|int|活动用户名次|
|coins|int|奖金池米汤币数|
|price|string|奖金池米汤币人民币数|
|rankingList|array|游戏用户节点数组|

### 游戏用户节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|rank|int|排名|
|uid|long|用户UID|
|nickName|string|用户昵称|
|avatar|string|用户头像|
|record|int|次数|
