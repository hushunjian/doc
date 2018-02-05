## 接口描述
添加关联标签
## API Path
/api/advertisement/addLinkTag
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id  |int  |标签ID       |
|name|string  |标签名称     |
|position|string  |标签位置  |
|positionId|int  |广告位id         |

## 请求报文
    {
      "token":"99999999-9999-9999-9999-999999999999",
      "id":21,
      "name":"test", 
      "position":"3",
      "positionId":3,
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }