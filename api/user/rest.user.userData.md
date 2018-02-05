## 接口描述
新用户资料卡接口
3.2.0版本开始使用

## API Path
/rest/user/userData

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|long|是|待查询的用户UID|
|fromUid|long|否|指定推荐人|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"uid":123,
	    	"nickName":"abc",
	    	"avatar":"http://cdn.me-to-me.com/default.jpg",
	    	"avatarFrame":"",
	    	"industryId":1,
	    	"industry":"建筑",
	    	"introduced":"看着我的眼睛，快向我低头",
	    	"v_lv":0,
	    	"isFriend":0,
	    	"isRecFriend":0,
	    	"subscribeCount":123,
	    	"silenceTime":12345,
	    	"silencePeriod":24,
	    	"totalRecFriendCount":19,
	    	"recFriendData":[
		    	{
		    		"uid":12,
		    		"nickName":"abc",
		    		"avatar":"http://cdn.me-to-me.com/default.jpg",
		    		"avatarFrame":"",
		    		"v_lv":0,
		    		"industryId":1,
		    		"industry":"建筑"
		    	}
	    	],
	    	"ownKingdomCount":12,
	    	"ownKingdomImageData":[
	    		{
	    			"fragmentImage":"http://cdn.me-to-me.com/default.jpg"
	    		},
	    		{
	    			"fragmentImage":"http://cdn.me-to-me.com/default.jpg"
	    		}
	    	],
	    	"middleman":{
	    		"uid":12,
		    	"nickName":"abc",
		    	"avatar":"http://cdn.me-to-me.com/default.jpg",
		    	"avatarFrame":"",
		    	"v_lv":0,
		    	"content":""
	    	}
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|gender|int|性别，-1未设置，0女，1男|
|avatarFrame|string|头像框|
|industryId|long|行业ID|
|industry|string|行业名称|
|introduced|string|用户简介|
|v_lv|int|是否大V，0否，1是|
|isFriend|int|是否好友，0否，1是|
|isRecFriend|int|是否已推荐好友，0否，1是（仅当isFriend=1时有效）|
|isRec|int|是否被推荐到banner，0否，1是|
|subscribeCount|int|订阅王国用户数|
|silenceTime|long|沉默期剩余时间，单位秒，仅isFriend=1时有效|
|silencePeriod|int|沉默期时间，单位小时，仅silenceTime>0时有效|
|totalRecFriendCount|int|总推荐数|
|recFriendData|array|推荐好友节点数组|
|ownKingdomCount|int|拥有的王国数|
|ownKingdomImageData|array|拥有的王国外露内容节点数组|
|middleman|object|中间人节点|


#### recFriendData推荐好友节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|industryId|long|行业ID|
|industry|string|行业名称|


#### ownKingdomImageData的王国节点字段说明
|字段|类型|描述|
|:-|:-|:-|
|fragmentImage|string|图片地址|


#### middleman中间人字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|content|string|推荐描述|



