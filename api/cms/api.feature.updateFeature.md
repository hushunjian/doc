## 接口描述
更新功能
## API Path
/api/user/updateFeature
## 请求说明
|参数名         |类型    |备注             |
|---------------|--------|-----------------|
|token          |string  |                 |
|featureGroupId |string  |                 |
|name           |string  |                 |
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
