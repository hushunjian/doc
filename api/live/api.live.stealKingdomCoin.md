## 接口描述
偷取王国价值接口

## API Path
/api/live/stealKingdomCoin

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|

## 返回报文
{
	"code":200,
	"data":{
		"stealedCoins":3,
		"upgrade":0,
		"currentLevel":4,
		"isBigRedPack":0
	}
	"message":"ok"
}

### 返回字段说明
|字段|类型|描述
|:-|:-|:-|
|stealedCoins|int|偷的米汤币数额|
|upgrade|int|是否升级，0否，1是|
|currentLevel|int|当前等级|
|isBigRedPack|int|是否是大红包，1是，0否|

### result code
|result|code|
|:-|:-|
|200|ok|
|50074|不能偷取自己的王国|
|50074|该王国没有可偷的金币了|
|50074|不能重复偷取此王国|
|50074|你当前的等级每天只能偷取N个王国哦|
|50074|你今天可获取的米汤币额度已满|
|50071|此王国处于全体禁言模式|
|50072|你已被王国禁言|
