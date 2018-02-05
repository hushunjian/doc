## 接口描述
获取APP用户列表
## API Path
/api/appuser/getAllAppUsers
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex|int     |当前页           |
|pageSize |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "meNumber":341235,
                  "mobile":13123452345,
                  "nickName":"忘语",
                  "isInvited":0,
                  "isV":1,
                  "level":2,
                  "status":0,
                  "silentStatus":0,
                  "registerChannel": '微信',
                  "registerVersion": '2.3.4',
                  "registerTime":1511078400000,
                  "lastOptAt":1511078400000,
                },
                {
                  "uid":3,
                  "meNumber":341115,
                  "mobile":13123452345,
                  "nickName":"忘语2",
                  "isInvited":1,
                  "isV":0,
                  "level":2,
                  "status":0,
                  "silentStatus":0,
                  "registerChannel": '微信',
                  "registerVersion": '2.3.4',
                  "registerTime":1511078400000,
                  "lastOptAt":1511078400000,
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
|uid      |int     |用户id           |
|meNumber |int     |米汤号码         |
|mobile   |string  |手机号           |
|nickName |string  |用户昵称         |
|isInvited|int     |是否运营邀请(0:否；1：是)  |
|isV      |int     |是否大V(0:否；1：是)       |
|level    |int     |等级             |
|status   |int     |状态（0：正常；1：封号)    |
|silentStatus|int  |禁言状态(0:不禁言;1:禁言)  |
|registerChannel|string|注册渠道         |
|registerVersion |string|注册版本    |
|registerTime|int     |注册时间         |
|lastOptAt|int  |最后操作时间         |