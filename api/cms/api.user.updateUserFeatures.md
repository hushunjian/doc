## 接口描述
更新用户功能
## API Path
/api/user/updateUserFeatures
## 请求说明
|参数名       |类型    |备注             |
|-------------|--------|-----------------|
|name         |string  |                 |
|userId       |string  |                 |
|featureIds   |string  |                 |
## 请求报文
    {
    	"token":"{{token}}",
    	"userId":2,
    	"featureIds":[1, 2, 3]
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000	
	}
