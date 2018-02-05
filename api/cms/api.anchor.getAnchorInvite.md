## 接口描述
获取主播邀请统计
## API Path
/api/anchor/getAnchorInvite
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
                  "realName:"zuimei",
                  "inviteCounts":10
                },
                {
                  "uid":1,
                  "nickName":"最美家乡活动",
                  "realName:"zuimei",
                  "inviteCounts":10
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
|realName  |string  |真实姓名           |
|inviteCounts  |int  |邀请人数           |