## 接口描述
上市王国集合查询
## API Path
/api/home/listingKingdomGroup
## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|cid|long|是|上市王国集合，类型的id|
## 返回报文
	{
		"accessToken":"e1cccc1616714b9db09a1527af14584c",
		"code":200,
		"data":{
			"listingKingdoms":[
				{
					"cid":0,
					"contentType":0,
					"coverImage":"https://cdn.me-to-me.com/Fnxj06MomrDz8KzRpekjeXC-E-nW",
					"favorite":0,
					"favoriteCount":0,
					"forwardCid":937,
					"id":0,
					"internalStatus":1,
					"isFollowMe":0,
					"isFollowed":0,
					"level":0,
					"likeCount":0,
					"price":10002,
					"priceRMB":100.02,
					"readCount":0,
					"reviewCount":0,
					"showPriceBrand":0,
					"showRMBBrand":0,
					"subListId":0,
					"subType":0,
					"title":"皮卡丘～",
					"topicId":937,
					"type":0,
					"uid":325,
					"v_lv":0
				}
			]
		},
		"message":"ok"
	}
### 字段说明
|参数名称|类型|备注|
|:--|:---|:---|
|topicId|long|王国id|
|coverImage|string|王国封面图|
|title|string|王国名/王国标题|
|showPriceBrand|long|是否米币吊牌 1 显示，0不显示|
|showPriceBrand|long|是否显示RMB吊牌 1 显示，0不显示|
|price|float|王国价值|
|priceRMB|float|王国价值的RMB|

