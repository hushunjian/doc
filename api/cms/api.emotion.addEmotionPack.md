## 接口描述
添加表情包
## API Path
/api/emotion/addEmotionPack
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|name     |string  |表情包名称       |
|cover    |string  |表情包封面图     |
|type     |int     |类型(1:中表情;2:大表情)|
|isValid  |int     |是否有效         |
|packVersion  |int |表情包版本       |
|analyVersion |int |分析器版本       |
|order    |int     |排序号           |
|extra    |string  |附加信息         |
## 请求报文
    {
      "token":"4989999-777-12544",
      "name":"中表情",
      "cover":"",
      "type": 1,
      "isValid": 1,
      "packVersion": 1,
      "analyVersion": 3,
      "order": 4,
      "extra": 1
    }       

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
