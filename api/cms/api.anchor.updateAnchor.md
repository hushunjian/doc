## 接口描述
更新主播
## API Path
/api/anchor/updateAnchor
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int     |主播id           |
|uid    |int  |主播UID         |
|realName    |string  |真实姓名         |
|comment |string  |备注           |
## 请求报文
```
    {
      "id":1,
      "uid":2,
      "realName:"zuimei",
      "comment":"最美家乡活动"
    },
```
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
