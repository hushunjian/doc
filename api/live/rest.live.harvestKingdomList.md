## 接口描述
收割米汤币王国列表接口

## API Path
/rest/live/harvestKingdomList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|page|int|是|分页参数，第一页传1|

## 返回报文
	{
    	"accessToken": "5f86468eba8c4b84ba882ee5b819cb3b",
    	"code": 200,
    	"data": {
    		"totalCount":1,
    		"kingdomList": [
    			{
    				"topicId":12,
    				"coverImage":"",
    				"title":"",
    				"price":12,
    				"canHarvestCoins":1,
    				"onceLimit":10
    			}
    		]
    	},
    	"message": "ok"
	}
    
### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|totalCount|int|收割王国总数|
|kingdomList|array|收割王国节点数组|

### kingdomList收割王国节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|topicId|long|王国ID|
|coverImage|string|王国封面|
|title|string|王国标题|
|price|int|王国米汤币数值|
|canHarvestCoins|int|能偷的米汤币数值|
|onceLimit|int|每次偷取上限|
