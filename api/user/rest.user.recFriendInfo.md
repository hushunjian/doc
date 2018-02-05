## 接口描述
好友推荐信息查询

返回判断逻辑
当isRec=1时，说明当前已经推荐过了，则展示推荐相关信息。
当isRec=0时，需要判断isFriend，如果isFriend=0，则展示异常页面，当前已经不是好友了，所以不能做推荐操作（展现相应文案）
当isRec=0，并且isFriend=1，需要判断silenceTime是否大于0，如果大于0，则展示异常页面，当前还处于沉默期，所以也不能做推荐操作（展现相应文案）
当isRec=0，isFriend=1，并且silenceTime=0，则判断是否以前推荐过，如果推荐过，将以前的推荐理由一并返回，如果没推荐过，则没有推荐理由返回。


## API Path
/rest/user/recFriendInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|long|是|被推荐人UID|
|fromUid|long|是|推荐人UID|


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
	    	"isRec":0,
	    	"isFriend":1,
	    	"silenceTime":0,
	    	"silencePeriod":24
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
|industryId|long|行业ID|
|industry|string|行业名称|
|introduced|string|用户简介|
|v_lv|int|是否大V，0否，1是|
|content|string|推荐理由|
|isRec|int|是否已推荐，0否，1是（仅当isFriend=1时有效）|
|isFriend|int|是否是好友，0否，1是|
|silenceTime|long|沉默期剩余时间，单位秒，仅isFriend=1时有效|
|silencePeriod|int|沉默期时间，单位小时，仅silenceTime>0时有效|






