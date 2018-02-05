## 接口描述
查询APP用户列表
## API Path
/api/appuser/getAppUserSearch
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex|int     |当前页           |
|pageSize |int     |页大小           |
|meNumber |int     |米汤号码         |
|mobile   |string  |手机号           |
|nickName |string  |用户昵称         |
|isInvited|int     |是否运营邀请(-1:全部；0:否；1：是)  |
|isV      |int     |是否大V(-1:全部；0:否；1：是)      |
|status   |int     |状态(-1:全部；0:否；1：是)    |
|createdBegin|int  |开始时间         |
|createdEnd  |int  |结束时间         |
|registerChannelCode  |string  |注册渠道标识  |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "meNumber":341235,
                  "mobile""13123452345,
                  "nickName":"忘语",
                  "gender":0,
                  "isInvited":0,
                  "isV":1,
                  "level":2,
                  "status":0,
                  "createdAt":1511078400000,
                  "lastOptAt":1511078400000,
                },
                {
                  "uid":3,
                  "meNumber":341115,
                  "mobile""13123452345,
                  "nickName":"忘语2",
                  "gender":1,
                  "isInvited":1,
                  "isV":0,
                  "level":2,
                  "status":0,
                  "createdAt":1511078560000,
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
|gender   |int     |性别(0：女；1：男)         |
|isInvited|int     |是否运营邀请(0:否；1：是)  |
|isV      |int     |是否大V(0:否；1：是)       |
|level    |int     |等级             |
|status   |int     |状态（0：正常；1：封号)    |
|createdAt|int     |创建时间         |
|lastOptAt|int  |最后操作时间         |