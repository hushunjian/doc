## 接口描述
更新表情
## API Path
/api/emotion/updateEmotion
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|packId   |int     |表情包id         |
|id       |int     |表情Id           |
|name     |string  |表情名称         |
|cover    |string  |表情封面图       |
|order    |int     |表情排序号       |
|extra    |string  |附加信息         |
|width    |int     |表情宽度         |
|height   |int     |表情高度         |
## 请求报文
    {
      "token":"4989999-777-12544",
      "packId": 4,
      "id": 3,
      "name":"伤心",
      "cover":"",
      "order": 4,
      "extra": 1,
      "width": 2,
      "height": 2
    }       

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }