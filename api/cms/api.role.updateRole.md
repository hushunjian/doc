## 接口描述
更新角色
## API Path
/api/user/updateRole
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |                 |
|name     |string  |                 |
## 请求报文
    {
        "token":"{{token}}",
        "id": 1,
        "name": "role4test"
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000	
	}
