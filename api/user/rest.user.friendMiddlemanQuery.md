## 接口描述
好友中间人查询接口

## API Path
/rest/user/friendMiddlemanQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|long|是|待查询的用户UID|
|fromUid|long|否|指定推荐人UID|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"middlemanData":[
	    		{
		    		"uid":12,
			    	"nickName":"abc",
			    	"avatar":"http://cdn.me-to-me.com/default.jpg",
			    	"avatarFrame":"",
			    	"v_lv":0,
			    	"content":""
	    		}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|middlemanData|array|中间人节点数组|


#### middlemanData中间人节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|content|string|推荐描述|



