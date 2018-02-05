## 接口描述
好友联系人查询接口

## API Path
/rest/user/contactsQuery

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|industryId|long|否|行业ID，全部传0（默认）|
|page|int|是|分页参数，第一页传1|

## 返回报文
	{
	    "accessToken": "1e2d24edb7d34871952fc3cd9f54672a",
	    "code": 200,
	    "data": {
	    	"hasNewApply":1,
	    	"recFriendData":[
	    		{
	    			"uid":12,
	    			"nickName":"abc",
	    			"avatar":"http://cdn.me-to-me.com/default.jpg",
	    			"avatarFrame":"",
	    			"v_lv":0
	    		}
	    	],
	    	"industryStat":[
	    		{
	    			"industryId":0,
	    			"industry":"全部",
	    			"count":133
	    		},
	    		{
	    			"industryId":1,
	    			"industry":"培训",
	    			"count":33
	    		}
	    	],
	    	"friendData":[
	    		{
	    			"uid":12,
	    			"nickName":"abc",
	    			"avatar":"http://cdn.me-to-me.com/default.jpg",
	    			"avatarFrame":"",
	    			"v_lv":0,
	    			"industryId":1,
	    			"industry":"建筑",
            		"group":"*",
            		"isRec":0,
            		"content":"",
	    		}
	    	]
	    },
	    "message": "ok"
	}
    
### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|hasNewApply|int|是否有新申请（用于新的好友申请红点），0否，1是|
|recFriendData|array|推荐好友节点数组|
|industryStat|array|好友行业统计节点数组|
|friendData|array|好友节点数组，当请求的industryId>0或page>0时仅本字段有效|

#### recFriendData推荐好友节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|avatar|string|头像|
|avatarFrame|string|头像框|
|v_lv|int|是否大V，0否，1是|

#### industryStat好友行业统计节点字段说明
|名称|类型|备注|
|:-|:-|:-|
|industryId|long|行业ID，全部为0|
|industry|string|行业名称|
|count|int|数量|

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
|group|string|所属分组|
|isRec|int|是否已推荐，0否，1是|
|type|int|内容，0好友，1消息|
|content|string|当type=1时，所要显示的文字|