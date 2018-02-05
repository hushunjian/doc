## 接口描述
用户登录

## API Path
/api/user/login

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|userName|string|是|用户名（手机号）|
|encrypt|string|是|密码|
|deviceNo|string|否|设备号|
|platform|int|是|平台 1 Android 2 Ios|
|os|int|否|操作系统版本|
|deviceData|string|否|设备相关信息json串，包含deviceCode（设备码string），mobileModel（手机型号string），systemVersion（系统版本号string）|
|hwToken|string|否|华为设备token，安卓华为设备注册时传递，用于华为推送使用|

## 返回报文
	{
	    "code": 2001,
	    "data": {
	    	"uid": 3,
	    	"userName": "188888888201",
	    	"v_lv":1,
	    	"nickName":"abc",
	    	"gender":1,
	    	"meNumber":"123454",
	    	"avatar":"http://xxx",
	    	"avatarFrame":"",
	    	"token":"111",
	    	"fansCount":0,
	    	"followedCount":0,
	    	"introduced":"简介",
	    	"level":5,
	    	"industryId":1,
	    	"industry":"建筑"
		},
	    "message": "用户登录成功"
	}
    
### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|userName|string|登录名（就是手机号）|
|v_lv|int|是否大V，0否，1是|
|nickName|string|昵称|
|gender|int|性别，-1未设定，0女，1男，2女（微信的坑爹设置，当初H5的未做转换）|
|meNumber|string|ME号|
|avatar|string|头像|
|avatarFrame|string|头像框|
|token|string|token|
|fansCount|int|粉丝数|
|followedCount|int|关注数|
|introduced|string|简介|
|level|int|用户等级|
|industryId|long|行业ID|
|industry|string|行业名称|