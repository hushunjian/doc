## 接口描述
推荐好友查询
全量查询

## API Path
/rest/user/recFriendQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|long|是|待查询的用户UID|
|targetUid|long|否|指定被推荐人，当从推送点击的时候需要传递,会将指定的数据放在第一个位置|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"uid":123,
	    	"nickName":"abc",
	    	"avatar":"http://cdn.me-to-me.com/default.jpg",
	    	"avatarFrame":"",
	    	"v_lv":0,
	    	"recFriendCount":26,
	    	"recFriendData":[
		    	{
		    		"uid":12,
		    		"nickName":"abc",
		    		"avatar":"http://cdn.me-to-me.com/default.jpg",
		    		"avatarFrame":"",
		    		"v_lv":0,
		    		"industryId":1,
		    		"industry":"建筑",
		    		"content":"11111",
		    		"isFriend":0
		    	}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|recFriendCount|int|推荐好友数|
|recFriendData|array|推荐好友节点数组|


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
|content|string|推荐描述|
|isFriend|int|是否好友，0否，1是|



