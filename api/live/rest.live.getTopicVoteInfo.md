## 接口描述
王国详情列表投票信息查询接口

## API Path
/rest/live/getTopicVoteInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|voteId|long|是|投票ID|

## 返回报文
	{
		"code": 200,
		"data":{
			"voteId":123,
    		"title":"你喜欢猫还是喜欢狗",
    		"type":0,
    		"options":[
         		{
             		"id":123456,
             		"option":"猫",
             		"count":5
           	},
            	{
             		"id":123457,
             		"option":"狗",
             		"count":10
           	}
         	]
		}
		"message": "OK"
	}

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|voteId|long|投票ID|
|title|string|投票标题|
|type|int|投票类型0单选1多选|
|status|int|投票状态，1进行中2结束|
|options|array|投票选项节点数组|

#### options投票选项节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|id|long|选项ID|
|option|string|选项名称|
|count|int|票数|
