## 接口描述
获取抽奖列表接口

## API Path
/rest/live/getLotteryList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|sinceId|long|否|分页参数，第一次传-1，后面的传返回结果中的最后一个内容的sinceId|

## 返回报文
	{
		"accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
		"code": 200,
		"data": {
	    	"lotteryList": [
	    		{
	    			"sinceId":12,
	    			"createTime":12345678910,
	    			"title":"",
	    			"summary":"",
	    			"status":0,
	    			"signUp":0,
	    			"isWin":0,
	    			"timeInterval":12,
	    			"endTime":12345678910,
	    			"winNumber":1,
	    			"joinNumber":1,
	    			"uid":12,
	    			"winUsers":[
	    				{
	    					"uid":12,
	    					"avatar":"",
	    					"avatarFrame":"",
	    					"nickName":"",
	    					"v_lv":0,
	    					"level":1
	    				}
	    			]
	    		}
	    	]
		},
		"message": "ok"
	}
	
### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|lotteryList|array|抽奖节点数组|

### lotteryList抽奖节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|sinceId|long|分页用，抽奖ID|
|uid|long|抽奖发起人ID|
|createTime|long|抽奖发起时间|
|title|string|抽奖标题|
|summary|string|抽奖简介和说明|
|status|int|抽奖状态，0进行中，1倒计时结束，2抽奖结束|
|signUp|int|当前用户是否报名，0未报名，1已报名|
|isWin|int|当前用户是否中奖，0未中奖，1已中奖|
|timeInterval|int|服务器当前时间到抽奖结束时间的秒数|
|endTime|long|抽奖结束时间|
|winNumber|int|设置的中奖人数|
|joinNumber|int|参加抽奖人数|
|winUsers|array|中奖用户节点数组|

### winUsers中奖用户节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|中奖人UID|
|avatar|string|中奖人头像|
|avatarFrame|string|中奖人头像框|
|nickName|string|中奖人昵称|
|v_lv|int|中奖人是否大V，0否，1是|
|level|int|中奖人等级|
