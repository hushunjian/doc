## 接口描述
修改用户等级
## API Path
/api/appuser/updateUserLevel
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|uid      |用户ID  |用户ID           |
|newLevel |int     |新等级           |


## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "uid": 1234,
      "newLevel": 3
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }