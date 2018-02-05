## 接口描述
取消关联标签
## API Path
/api/advertisement/unlinkLinkTag
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int  |标签id           |
|positionId  |int  |广告位id         |

## 请求报文
    {
      "token":"99999999-9999-9999-9999-999999999999",
      "id":2,
      "positionId":2
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }