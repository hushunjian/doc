## 接口描述
第三方登录接口

## API Path
/api/user/thirdPartLogin

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|thirdPartOpenId|string|是|第三方登录OPENID|
|thirdPartToken|string|是|第三方登录token|
|avatar|string|是|头像|
|thirdPartType|int|是|QQ：1 ，微信： 2，新浪微博：3|
|nickName|int|是|昵称|
|gender|int|是|性别 0女1男|
|jPushToken|string|是||
|unionId|int|是|第三方登录unionId(微信登录需要传)|
|h5type|int|否|H5传 1 app不用|
|newNickName|string|否|如果前台 提示用户修改昵称了 需要传这个字段(修改h5微信登录导致的昵称重复)|
|platform|int|否|平台，1安卓，2 IOS，3 H5|
|openinstallData|string|否|openinstall封装jsonData|
|deviceData|string|否|设备相关信息json串，包含deviceCode（设备码string），mobileModel（手机型号string），systemVersion（系统版本号string）|
|hwToken|string|否|华为设备token，安卓华为设备注册时传递，用于华为推送使用|

## 返回报文
	{
	    "accessToken": "52852fc9c8fa4fafb29166334af8b922",
	    "code": 2001,
	    "data": {
			"fansCount": 0,
			"followedCount": 0,
			"gender": 1,
			"nickName": "好呀",
			"token": "245af10be2364aa8b7f5f8959ee45d52",
			"uid": 3051,
			"isNew":0,
			"level":1,
			"industryId":1,
	    	"industry":"建筑"
		},
	    "message": "用户登录成功"
	}
    
### 返回字段说明
|名称|类型|备注|
|:-|:-|:-|
|uid|long|UID|
|nickName|string|昵称|
|gender|int|性别，-1未设定，0女，1男，2女（微信的坑爹设置，当初H5的未做转换）|
|token|string|token|
|fansCount|int|粉丝数|
|followedCount|int|关注数|
|level|int|用户等级|
|isNew|int|是否新增，0否，1是|
|industryId|long|行业ID|
|industry|string|行业名称|