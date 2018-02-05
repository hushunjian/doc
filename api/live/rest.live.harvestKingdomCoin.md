## 接口描述
收割王国米汤币

## API Path
/rest/live/harvestKingdomCoin

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|

## 返回报文
	{
    	"accessToken": "5f86468eba8c4b84ba882ee5b819cb3b",
    	"code": 200,
    	"data": {
    		"gainCoin":10,
    		"upgrade":0,
    		"currentLevel":2
    	},
    	"message": "ok"
	}
    
### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|gainCoin|int|收割米汤币数值|
|upgrade|int|是否升级，0否，1是|
|currentLevel|int|当前用户等级|

