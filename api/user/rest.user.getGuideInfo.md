## 接口描述
导游信息获取接口

## API Path
/rest/user/getGuideInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|

## 返回报文
	{
		"accessToken":"e43a771327764cc3926851da25950054",
		"code":200,
		"data":{
			"uid":123,
			"avatar":"http://xxx",
			"nickName":"abc"
		},
		"message":"ok"
	}

### 返回字段解释
|字段|类型|描述|
|:-|:-|:-|
|uid|long|导游UID|
|avatar|string|导游头像|
|nickName|string|导游昵称|

    
    
