## 接口描述
设置上市王国休市时间
## API Path
/api/kingdom/setKingdomRestTime
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|startAt  |int     |休市时间开始     |
|endAt    |int     |休市时间结束     |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "startAt": 1511078400000,
      "endAt": 1511078400000
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
