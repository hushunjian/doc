## 接口描述
添加广告位
## API Path
/api/advertisement/addAdvertisementPosition
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token				 |
|name     |string  |广告位名称      |
|position |string  |广告位位置  |
|height   |int  |广告位高度    |
|width    |int  |广告位宽度    |
|type     |int  |类型(0:首页和标签;1:首页;2:标签) |
## 请求报文
		{
			"token":"99999999-9999-9999-9999-999999999999",
			"name":"test", 
			"position":"4-3",
		 	"height":20,
			"width":48,
			"type":2
		}
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
	{
		"status":2000 
	}
