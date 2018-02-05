## 接口描述
获取app所有页面
## API Path
/api/behaviour/getAppAllPages
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
         "pageName":'热点',
       },
       {
         "id":1,
         "pageName":'热点'
       }
    ],   
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id      |int     |页面id           |
|pageName |string  |页面名称        |