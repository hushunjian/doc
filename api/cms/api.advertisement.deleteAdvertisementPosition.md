## 接口描述
删除广告位
## API Path
/api/advertisement/deleteAdvertisementPosition
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int  |广告位id         |

## 请求报文
    {
      "token":"99999999-9999-9999-9999-999999999999",
      "id":"3"
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }