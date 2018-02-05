## 接口描述
获取所有的广告位
## API Path
/api/advertisement/getAllAdvertisementPositions
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token				 |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
	{
		"body":{
            "data":[
                {
                  "id":1,
			            "name":"广告位1",
      				    "position":"4-3",
      				    "height":20,
      				    "width":60,
      				    "createdAt":"2017-11-05 15:25:01",
                  "type": 0
                },
                {
                  "id":2,
		              "name":"广告位2",        				
                  "position":"4-5",        				
                  "height":20,        				
                  "width":60,        				
                  "createdAt":"2017-11-05 15:25:01",
                  "type": 1
                }
            ],
            "total":200
          },
    "status":2000
	}
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id 			|int   	 |广告位id         |
|name     |string	 |广告位名称       |
|position |string  |广告位位置("-"隔开 例：3-5) |
|height   |int  |广告位高度        |
|width	  |int  |广告位宽度			   |
|createdAt |string |创建时间				 |
|type     |int     |类型(0:首页和标签;1:首页;2:标签)|