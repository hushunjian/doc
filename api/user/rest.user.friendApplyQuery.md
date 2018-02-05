## 接口描述
好友申请查询接口

## API Path
/rest/user/friendApplyQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|page|int|是|分页参数，第一页传1|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"applyData":[
	    		{
	    			"uid":12,
	    			"nickName":"abc",
	    			"avatar":"http://cdn.me-to-me.com/default.jpg",
	    			"avatarFrame":"",
	    			"industryId":1,
	    			"industry":"建筑",
	    			"v_lv":0,
	    			"content":"赶紧通过，否则嫩死你",
	    			"status":0,
	    			"applyTime":12345678910
	    		}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|applyData|array|申请节点数组|

#### applyData申请节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|
|industryId|long|行业ID|
|industry|string|行业名称|
|content|string|申请消息|
|status|int|状态，0未处理，1已同意|
|applyTime|long|申请时间|
