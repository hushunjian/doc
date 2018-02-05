## 接口描述
更新榜单
## API Path
/api/listRank/updateListRank
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int     |榜单id           |
|name     |string  |榜单名称         |
|summary  |string  |摘要内容         |
|bgColor  |string  |背景色           |
|img      |string  |榜单封面         |
|imgWidth |int     |图片宽度         |
|imgHeight|int     |图片高度         |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "id":2,
      "name":"榜单1234",
      "summary": "哈哈过了",
      "bgColor": "#333",
      "img": "345abdddwerwr3erer",
      "imgWidth": 400,
      "imgHeight": 200,
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
