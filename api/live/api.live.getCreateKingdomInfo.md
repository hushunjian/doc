## 接口描述
获取创建王国判断信息接口

## API Path
/api/live/getCreateKingdomInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|onlyFriend|int|否|是否好友王国，0否（默认），1是|

## 返回报文
	{
		"code": 200,
		"data":{
			"needPrice": 168,
			"myPrice": 100,
			"createKingdomCount": 2
		}
		"message": "操作成功"
    }

### 返回字段说明
|字段|类型|描述|
|:-|:-|:-|
|needPrice|int|创建王国需要米汤币|
|myPrice|int|我的米汤币|
|createKingdomCount|int|已经创建王国个数|
