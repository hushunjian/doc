## 接口描述
设置用户大V状态(上大V 或 取消大V)
## API Path
/api/appuser/setUserV
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|uid      |用户ID  |用户ID           |
|isV      |int     |是否大V(0:否；1：是) |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "uid": 1234,
      "isV":1
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
