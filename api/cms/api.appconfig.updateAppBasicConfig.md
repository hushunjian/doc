## 接口描述
更新APP基础配置
## API Path
/api/appconfig/updateAppBasicConfig
## 请求说明
|参数名         |类型    |备注             |
|---------------|--------|-----------------|
|token          |string  |                 |
|key            |string  |配置项特征Key    |
|value          |Object/Int/string   |配置项特征值  |
|itemGroupId	|Ineger
|des			|String


## 请求报文
    {
        "token":"{{token}}",
         "des":"汇率(1RMB=?MB)",
        "itemGroupId":1,
        "key":"EXCHANGE_RATE",
        "value":"1000"
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
      "status":2000 
  }