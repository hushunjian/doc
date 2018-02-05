## 接口描述
获取登录用户功能
## API Path
/api/user/getMyFeatures
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|name     |string  |                 |
|userId   |string  |                 |
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
    "body": [
        {
            "groupId": 1,
            "groupName": "APP文章管理",
            "features": [
                {
                    "id": 1,
                    "name": "PGC文章管理"
                },
                {
                    "id": 2,
                    "name": "活动信息管理"
                },
                {
                    "id": 3,
                    "name": "UGC文章管理"
                }
            ]
        }
    ],
    "status": 2000
}
