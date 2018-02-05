## 接口描述
APP枚举数据查询接口

## API Path
/rest/user/getBasicDataByType

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|type|int|是|枚举类型，3兴趣爱好|

## 返回报文
	{
		"accessToken":"e43a771327764cc3926851da25950054",
		"code":200,
		"data":{
			"results":[
				{
					"tid":3,
					"type":"兴趣爱好",
					"list":[
						{
							"id":94,
							"tid":3,
							"value":"新闻热点",
							"sort":1
						},
						{
							"id":80,
							"tid":3,
							"value":"音乐",
							"sort":2
						}
					]
				}
			]
		},
		"message":"ok"
	}

### 返回data字段解释
|字段|类型|描述|
|:-|:-|:-|
|results|array|枚举节点数组|

### results枚举节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|tid|long|枚举类型，3兴趣爱好|
|type|string|枚举名字|
|list|array|具体枚举值节点数组|

### list具体枚举值节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|id|long|枚举值ID|
|tid|long|枚举类型，3兴趣爱好|
|value|string|具体枚举值名字|
|sort|int|排序字段,按重小到大排序|

