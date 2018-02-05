## 接口描述
更新用户角色
## API Path
/api/user/updateUserRoles
## 请求说明
|参数名       |类型    |备注             |
|-------------|--------|-----------------|
|name         |string  |                 |
|userId       |string  |                 |
|roleIds      |string  |                 |
## 请求报文
    {
    	"token":"{{token}}",
    	"userId":2,
    	"roleIds":[1, 2, 3]
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000	
	}
