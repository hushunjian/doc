## 接口描述
登录接口
## API Path
/api/user/login
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|name     |string  |                 |
|password |string  |                 |
## 请求报文
    {
    	"name":"test", 
    	"password":"s3cret"
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000	
	}
