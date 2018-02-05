## 接口描述
查看榜单详情

## API Path
/rest/home/showListDetail

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|sinceId|long|是|分页对象，第一页传-1|
|listId|long|是|榜单ID|

## 返回报文
	{
		"accessToken":"f3359f2fcffa45da8c831fa3b4585cea",
		"code":200,
		"data":{
			"bgColor":"",
			"coverHeight":0,
			"coverWidth":0,
			"isShowName":0,
			"listId":22,
			"subList":[
				{
					"avatar":"https://cdn.me-to-me.com/FmZMRFxTMs1kX0_gHXFZ0gmQXsl1",
					"cid":1868,
					"contentType":0,
					"coverImage":"https://cdn.me-to-me.com/FvdhWI5lyYG-15Psq64emPrDPU6C",
					"favorite":0,
					"favoriteCount":4,
					"forwardCid":123,
					"id":1868,
					"internalStatus":0,
					"isFollowMe":0,
					"isFollowed":0,
					"level":2,
					"likeCount":3,
					"nickName":"江左肥郎",
					"price":0,
					"priceRMB":0.0,
					"readCount":996,
					"reviewCount":2,
					"showPriceBrand":0,
					"showRMBBrand":0,
					"sinceId":1,
					"subType":1,
					"title":"上海迪士尼",
					"topicId":123,
					"uid":308,
					"v_lv":0
				}
			],
			"subType":1,
			"summary":"",
			"title":"zcl测试-阅读榜单",
			"type":1
		},
		"message":"ok"
	}

### 返回字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|listId|long|榜单ID|
|title|string|榜单名字|
|type|int|榜单类型，1榜单|
|summary|string|简介描述|
|bgColor|string|背景颜色，例如#D0011B|
|coverImage|string|封面图片|
|coverWidth|int|封面图片宽|
|coverHeight|int|封面图片高|
|subType|int|子节点类型，1王国，2人|
|subList|array|子节点数组|

#### subList子节点字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|sinceId|long|分页用|
|subType|int|子节点类型，1王国，2人|
|uid|long|用户ID|
|avatar|string|用户头像|
|nickName|string|用户昵称|
|v_lv|int|是否大V，0否，1是|
|level|int|用户等级|
|avatarFrame|string|头像框|
|isFollowed|int|我是否关注过，0否，1是|
|isFollowMe|int|是否关注过我，0否，1是|
|contentType|int|王国类型，0个人王国，1000聚合王国|
|favorite|int|是否加入该王国，0否，1是|
|id|long|王国内容表ID（同cid，属冗余字段）|
|cid|long|王国内容表ID|
|topicId|long|王国ID|
|forwardCid|long|王国ID（同topicId，属冗余字段）|
|title|string|标题|
|coverImage|string|封面图|
|internalStatus|int|当前操作人对该王国的身份，0圈外，1加入，2核心圈|
|favoriteCount|int|成员数|
|readCount|int|阅读数|
|likeCount|int|点赞数|
|reviewCount|int|评论数|
|introduced|string|人物简介|
|tags|string|王国标签，多个标签之间用英文分号分隔|
|price|int|王国价值|
|priceRMB|double|王国RMB数值|
|kcName|string|王国分类|

