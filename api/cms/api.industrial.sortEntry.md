## 接口描述
行业列表排序
## API Path
/api/industrial/sortEntry
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|targetData |array |行业排序数据   |
|id |int     |行业id     |
|sort     |int     |排序         |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "targetData": [
          {
            id: 2,
            sort: 1
          }, {
            id: 3,
            sort: 2
          }, {
            id: 4,
            sort: 3
          }
      ]
    }
    
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
