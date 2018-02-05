## 接口描述
私信获取token接口

## API Path
/rest/user/getIMUsertoken

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|customerId|long|是|需要查询token的用户id|

## 返回报文
	{
		"accessToken":"e43a771327764cc3926851da25950054",
		"code":200,
		"data":{
			"userId":"123",
			"token":"abc"
		},
		"message":"ok"
	}

### 返回字段说明
|字段|类型|描述|
|:-|:-|:-|
|userId|string|用户UID（字符串形式，不知道为啥这样返回）|
|token|string|IM通信token|