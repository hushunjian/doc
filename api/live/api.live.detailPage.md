## 接口描述
本接口为detail接口返回中详情列表信息的分页版本。
主要用于对于前端有缓存处理的一个补充，详情数据分页展示出来。
请求参数同detail接口
返回接口liveElements节点有稍许变更

## API Path
/api/live/detailPage

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|int|是|直播间id|
|pageNo|int|否|需要获取数据的页码（默认1）|
|offset|int|否|每页显示条数（默认50）|
|sinceId|int|否|最后的topic_fragment的Id，如果获取更新的页时可以传该参数，可以避免获取重复数据|
|direction|int|否|查询方向，0向下遍历（默认），1向上遍历|
|reqType|int|否|请求类型，0正常（默认），1只看发布|

## 返回报文
	{
		"code": 20083,
		"data": {
			"totalRecords":100,
			"totalPages":2,
			"pageNo":1,
			"pageInfo":{
				"start":1,
				"end":2,
				"detail":[
					{
						"page":1,
						"records":48,
						"isFull":1,
						"updateTime":123,
						"liveElements": [
				       		{
				       			"uid": 293,
				       			"nickName": "小小宝",
				       			"isFollowed": 0,
				       			"fragmentId":3,
				       			"createTime":1235,
				       			"type": 0,
				       			"contentType": 0,
				       			"fragment":"22",
				       			"fragmentImage":"",
				       			"avatar":"头像",
				       			"avatarFrame":"头像框",
				       			"id":3,
				       			"internalStatus":0,
				       			"atUid":0,
				       			"atNickName":"",
				       			"source":1,
				       			"extra":"{}",
				       			"v_lv": 0,
				       			"level":4,
				       			"status":1,
				       			"teaseStatus":0,
				       			"score":4,
				       			"giftStatus":0,
				       			"likeCount":123,
				    			"isLike":0
				       		}
	       				]
					},
					{
						"page":2,
						"records":16,
						"isFull":2,
						"updateTime":123,
						"liveElements": [
				       		{
				       			"uid": 293,
				       			"nickName": "小小宝",
				       			"isFollowed": 0,
				       			"fragmentId":3,
				       			"createTime":1235,
				       			"type": 0,
				       			"contentType": 0,
				       			"fragment":"22",
				       			"fragmentImage":"",
				       			"avatar":"头像",
				       			"avatarFrame":"头像框",
				       			"id":3,
				       			"internalStatus":0,
				       			"atUid":0,
				       			"atNickName":"",
				       			"source":1,
				       			"extra":"{}",
				       			"v_lv": 0,
				       			"level":4,
				       			"status":1,
				       			"teaseStatus":0,
				       			"score":4,
				       			"giftStatus":0,
				       			"likeCount":123,
				    			"isLike":0
				       		}
	       				]
					}
				]
			}
	 	},
		"message": "获取王国详情成功"
	}

### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|totalRecords|int|总记录数|
|totalPages|int|总页数|
|pageNo|int|当前第几页|
|pageInfo|object|分页信息对象|

### pageInfo分页信息说明
|参数名称|类型|备注|
|:-|:-|:-|
|start|int|返回数据的页码开始|
|end|int|返回数据的页码结束|
|detail|array|具体页信息数组|

###　pageInfo-->detail 具体页信息字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|page|int|页码|
|records|int|有效记录数|
|isFull|int|是否满页，1满，2不满|
|updateTime|long|本页最后次更新时间|
|liveElements|array|王国详情对象数组|

### liveElements王国详情字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|uid|long|发言人UID|
|nickName|string|发言人昵称|
|isFollowed|int|是否关注过，0否，1是|
|fragmentId|long|评论ID|
|createTime|long|发言时间|
|type|int|类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|contentType|int|内容类型，详见《王国详情可见内容数据类型白皮书.pdf》|
|fragment|string|内容|
|fragmentImage|string|图片地址|
|avatar|string|发言人头像|
|avatarFrame|string|头像框|
|id|long|同fragmentId|
|internalStatus|int|用户身份，0圈外，1加入，2核心圈|
|atUid|long|at人的UID|
|atNickName|string|at人的昵称|
|source|int|来源|
|extra|string|扩展信息|
|v_lv|int|发言人是否大V，0否，1是|
|level|int|发言人等级|
|status|int|评论状态，1正常|
|teaseStatus|int|逗一逗是否播放过，0否，1是|
|score|int|分值|
|giftStatus|int|礼物是否播放过，0否，1是|
|likeCount|int|图片点赞数|
|isLike|int|当前用户是否点赞过，0否，1是|