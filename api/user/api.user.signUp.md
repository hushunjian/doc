## 接口描述
用户注册

## API Path
/api/user/signUp

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|mobile|string|是|手机号|
|encrypt|string|是|密码|
|confirmEncrypt|string|是|重复密码|
|gender|int|是|男女 int，0女 1男|
|years|int|否|年代情怀 int|
|nickName|int|是|用户昵称|
|introduced|string|否|用户简介|
|platform|int|是|平台 1安卓，2 IOS，3 H5|
|openinstallData|string|否|openinstall封装jsonData|
|deviceData|string|否|设备相关信息json串，包含deviceCode（设备码string），mobileModel（手机型号string），systemVersion（系统版本号string）|
|hwToken|string|否|华为设备token，安卓华为设备注册时传递，用于华为推送使用|

## 返回报文
	{
	    "accessToken": "1a0c1d9c21594712adc069983c60ed00",
	    "code": 2000,
	    "data": {
	        "avatar": "default.png",
	        "gender": -1,
	        "introduced": "",
	        "meNumber": "34970110",
	        "nickName": "9999999999734970110",
	        "token": "02781228db58418d98b94e8c73f59ee1",
	        "uid": 204411,
	        "userName": "99999999997",
	        "yearId": 78
	    },
	    "message": "用户注册成功"
	}
    
