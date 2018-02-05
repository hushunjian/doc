## 接口描述
更新广告
## API Path
/api/advertisement/updateAdvertisement
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|id       |int     |广告id           |
|name     |string  |广告名称         |
|positionId  |int  |所属广告位id  |
|cover    |string  |广告封面         |
|coverWidth   |int  |广告封面宽度 |
|coverHeight  |int  |广告封面高度 |
|probability  |int  |显示概率(0-100整数)  |
|validAt|string |有效时间          |
|type     |int |类型(0:链接;1:王国)  |
|topicId   |string |王国ID            |
|url      |string |链接URL           |

## 请求报文
    { 
      "token":"99999999-9999-9999-9999-999999999999",
      "id":2,
      "name":"广告1234",
      "cover":"",
      "positionId":2,
      "probability":100,
      "coverWidth":600,
      "coverHeight":400,
      "validAt":"2017-11-07 09:32:09",
      "type":0,
      "topicId":"432d3",
      "url":""
    }
## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
