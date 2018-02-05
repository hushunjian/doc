## 接口描述
设置上市王国状态(解冻，冻结,待成交)
## API Path
/api/kingdom/setListedKingdomStatus
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int     |上市王国id           |
|status   |int     |状态(0:正常交易;1:锁定,2:待成交)     |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "id": 1245,
      "status": 1
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }