## 接口描述
全量获取所有等级的基本信息（所需米汤币、图标等）

## API Path
/rest/user/getLevelList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"code": 200,
		"data":{
			"levelDefinition":"",
			"levels":[
				{
					"level":1,
					"icon":"",
					"name":"",
					"lvName":"",
					"needCoins":10,
					"permissions":[1,2,3]
				}
			]
		},
		"message": "ok"
	}

### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|levelDefinition|string|等级说明文案|
|levels|array|等级节点数组|

### levels等级节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|level|int|等级|
|icon|string|等级图标|
|name|string|等级名称|
|lvName|string|等级显示名称|
|needCoins|int|等级需要的米汤币|
|permissions|array|权限code节点（int类型）数组|
    
