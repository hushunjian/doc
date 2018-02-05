## 接口描述
新注册用户
## API Path
/api/behaviour/registeredUser
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "nickName":'忘语',
                  "registerChannel": '微信',
                  "logonDevice": 'ios',
                  "registerTime":1511078400000,
                },
                {
                  "uid":1,
                  "nickName":'忘语',
                  "registerChannDel": '微信',
                  "logonDevice": 'ios',
                  "registerTime":1511078400000,
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
|nickName |string  |用户昵称         |
|registerChannel   |string      |注册渠道         |
|logonDevice   |string    |登录设备    |
|registerTime   |int    |注册时间    |