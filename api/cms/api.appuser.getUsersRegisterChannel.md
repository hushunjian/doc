## 接口描述
获取app用户注册渠道
## API Path
/api/appuser/getUsersRegisterChannel
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token     |string  |权限token        |
## 返回报文
```
  {
    "body":[
       {
         "id":1,
         "code":'0',
         "channelName":'苹果',
       },
       {
        "id":2,
        "code":'0',
        "channelName":'苹果',
       }
   ],
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id      |int     |渠道id           |
|code |string  |渠道标识        |
|channelName |string  |渠道名称        |