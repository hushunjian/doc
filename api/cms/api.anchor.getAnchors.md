## 接口描述
获取主播列表
## API Path
/api/anchor/getAnchors
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "nickName":"最美家乡活动",
                  "meNumber":11224,
                  "realName:"zuimei",
                  "comment":"最美家乡活动"
                },
                {
                  "uid":1,
                  "nickName":"最美家乡活动",
                  "meNumber":11224,
                  "realName:"zuimei",
                  "comment":"最美家乡活动"
                }
            ],
            "total":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|uid       |int     |主播UID           |
|nickName    |string  |主播昵称         |
|meNumber |int  |米汤号           |
|realName  |string  |真实姓名           |
|comment|string  |备注           |