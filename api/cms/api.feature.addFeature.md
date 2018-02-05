## 接口描述
添加功能
## API Path
/api/user/addFeature
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |                 |
|featureGroupId |string  |                 |
|name     |string  |                 |
## 请求报文
    {
        "token":"{{token}}",
        "featureGroupId": 1,
        "name": "feature4test"
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000	
	}
