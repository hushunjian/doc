## 接口描述
用户验证码登录

## API Path
/api/user/signUpByVerify

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|mobile|string|是|用户名（手机号）|
|deviceNo|string|否|设备号|
|platform|int|是|平台 1 Android 2 Ios|
|Os|int|否|操作系统版本|
|verifyCode|String|是|验证码|
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

