## 接口描述
查询主播邀请明细
## API Path
/api/anchor/getAnchorInviteDetailSearch
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|uid    |int  |主播UID         |
|createdBegin |int     |注册开始时间     |
|createdEnd   |int     |注册结束时间     |
|raffleTopicId   |int     |抽奖王国id     |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "nickName":"最美家乡活动",
                  "realName:"zuimei",
                  "dateTime": '2017-12-12',
                  "invitedUid":10,
                  "invitedNickName":"最美家乡活动",
                  "createdAt:123454546,
                  "registerChannel": 'ios',
                  "isJoinRaffle": 0,
                  "logonDevice": 'ios'
                },
                {
                  "uid":2,
                  "nickName":"最美家乡活动",
                  "realName:"zuimei",
                  "dateTime": '2017-12-12',
                  "invitedUid":10,
                  "invitedNickName":"最美家乡活动",
                  "createdAt:123454546,
                  "registerChannel": 'ios',
                  "isJoinRaffle": 0,
                  "logonDevice": 'ios',
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
|dateTime    |string  |日期         |
|invitedUid  |int  |被邀请人UID           |
|invitedNickName  |string  |被邀请人昵称           |
|createdAt  |int  |注册时间           |
|registerChannel  |string  |注册渠道           |
|isJoinRaffle  |int  |是否参与抽奖 (0:否;1:是)          |
|logonDevice  |string  |登录设备号           |