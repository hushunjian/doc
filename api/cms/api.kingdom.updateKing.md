## 接口描述
更换王国国王
## API Path
/api/kingdom/updateKing
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|topicId  |int     |王国ID           |
|sourceUid|int     |旧国王ID         |
|targetUid|int     |新国王ID         |
|optUid   |int     |当前操作者uid    |


## 请求报文
    {
      "token":"99999999-9999-9999-9999-999999999999",
      "topicId": 234,
      "sourceUid"： 13444,
      "targetUid": 1,
      "optUid": 44444
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }