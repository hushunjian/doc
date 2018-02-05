## 接口描述
添加王国到标签
## API Path
/api/tag/addTagTopic
## 请求说明
|参数名    |类型    |备注            |
|--------- |--------|----------------|
|token     |string  |权限token       |
|tagId     |int     |标签ID          |
|topicId   |array   |王国ID(一个或几个)  |

## 请求报文
    {
          "token": "{{token}}",
          "tagId": 12,
          "topicId": [34,34]
     }

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
