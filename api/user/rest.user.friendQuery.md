## 接口描述
好友查询接口

## API Path
/rest/user/friendQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|keyword|string|否|检索词（全模糊查询）|
|page|int|是|分页参数，第一页传1|
|topicId|long|否|王国ID，传了则会判断返回的好友是否已经是该王国的核心圈，不传则不进行相关判断|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"friendData":[
	    		{
	    			"uid":12,
	    			"nickName":"abc",
	    			"avatar":"http://cdn.me-to-me.com/default.jpg",
	    			"avatarFrame":"",
	    			"v_lv":0,
	    			"industryId":1,
	    			"industry":"建筑",
	    			"introduced":"用户简介",
	    			"internalStatus":0
	    		}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|friendData|array|好友节点数组|

#### friendData好友节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|industryId|long|行业ID|
|industry|string|行业名称|
|introduced|string|用户简介|
|internalStatus|int|用户对于王国的身份信息（仅请求中topicId>0时有效）<br>0圈外<br>1已订阅<br>2核心圈|
