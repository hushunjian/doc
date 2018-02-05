## 接口描述
榜单列表查询
返回榜单or榜单集合

## API Path
/rest/home/showList

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|sinceId|long|是|分页对象，第一页传-1|
|listType|int|是|0找组织，1找谁|

## 返回报文
	{
		"accessToken":"dea19c8502eb428b814b52eb53d373f8",
		"code":200,
		"data":{
			"listData":[
				{
					"bgColor":"#3333",
					"coverHeight":400,
					"coverImage":"https://cdn.me-to-me.com/default.jpg",
					"coverWidth":200,
					"isShowName":0,
					"listId":6,
					"sinceId":14,
					"subList":[
						{
							"avatar":"https://cdn.me-to-me.com/92a5cf1d-0fa9-4c9a-9c1a-99f7dbd2c076",
							"cid":0,
							"contentType":0,
							"favorite":0,
							"favoriteCount":0,
							"forwardCid":0,
							"id":0,
							"internalStatus":0,
							"introduced":"小福的守护神啊",
							"isFollowMe":0,
							"isFollowed":0,
							"level":2,
							"likeCount":0,
							"nickName":"我家小福",
							"price":0,
							"priceRMB":0.0,
							"readCount":0,
							"reviewCount":0,
							"showPriceBrand":0,
							"showRMBBrand":0,
							"subListId":6,
							"subType":2,
							"topicId":0,
							"uid":297,
							"v_lv":1
						}
					],
					"subType":2,
					"summary":"最风骚的王国",
					"title":"最风骚的王国",
					"type":1
				}
			],
			"listPricedTopic":[
				{
					"avatar":"https://cdn.me-to-me.com/FmxPkUPvn72V5Ivi3rdpZxzRY7bT",
					"cid":13457,
					"contentType":0,
					"coverImage":"https://cdn.me-to-me.com/FiJlKr0rEEFYLbiWhaJjE0FfwcNJ",
					"forwardCid":3441,
					"id":13457,
					"internalStatus":0,
					"level":9,
					"nickName":"暴打陈斌",
					"price":1021,
					"priceRMB":12.76,
					"showPriceBrand":0,
					"showRMBBrand":0,
					"subListId":0,
					"subType":0,
					"title":"rest测试王国创建3333",
					"topicId":3441,
					"type":3,
					"uid":305,
					"v_lv":0
				}
			]
		},
		"message":"ok"
	}

### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|listData|array|榜单节点数组|
|listPricedTopic|array|王国价值排行榜节点数组，只有第一页才会返回|


#### listData榜单节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|bgColor|string|背景颜色，例如#D0011B|
|coverHeight|int|封面图片高|
|coverImage|string|封面图片地址|
|coverWidth|int|封面图片宽|
|isShowName|int|是否显示标题，0显示，1不显示|
|listId|long|榜单or榜单集合ID|
|sinceId|long|分页标识，将最后一个对象的sinceId传入下一页接口中获取下一页内容|
|subList|array|子节点数组|
|subType|int|子节点类型，1王国，2人，3榜单|
|summary|string|简介描述|
|title|string|榜单or榜单集合名字|
|type|int|榜单类型，1榜单，2榜单集合|


#### subList子节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|avatar|string|用户头像|
|avatarFrame|string|用户头像框|
|cid|long|王国内容表ID|
|contentType|int|王国类型，0个人王国，1000聚合王国|
|coverImage|string|封面图|
|favorite|int|是否加入该王国，0否，1是|
|favoriteCount|int|成员数|
|forwardCid|long|王国ID（同topicId，属冗余字段）|
|id|long|王国内容表ID（同cid，属冗余字段）|
|internalStatus|int|当前操作人对该王国的身份，0圈外，1加入，2核心圈|
|introduced|string|人物简介|
|isFollowMe|int|我是否关注过，0否，1是|
|isFollowed|int|是否关注过我，0否，1是|
|kcName|string|王国分类|
|level|int|用户等级|
|likeCount|int|点赞数|
|nickName|string|用户昵称|
|price|int|王国价值|
|priceRMB|double|王国RMB数值|
|readCount|int|阅读数|
|reviewCount|int|评论数|
|showPriceBrand|int|是否米币吊牌 1 显示，0不显示|
|showRMBBrand|int|是否显示RMB吊牌 1 显示，0不显示|
|subListId|long|子榜单ID（如果是榜单则是榜单ID，如果是榜单集合则是子榜单ID）|
|subType|int|子节点类型，1王国，2人，3榜单|
|topicId|long|王国ID|
|title|string|标题|
|tags|string|王国标签，多个标签之间用英文分号分隔|
|uid|long|用户ID|
|v_lv|int|是否大V，0否，1是|
