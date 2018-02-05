## 接口描述
从标签中移除王国
## API Path
/api/tag/removeTagTopic
## 请求说明
|参数名    |类型    |备注            |
|--------- |--------|----------------|
|token     |string  |权限token       |
|tagId     |int     |标签ID          |
|topicId   |int     |王国ID          |

## 请求报文
    {
          "token": "{{token}}",
          "tagId": 12,
          "topicId": 34
     }

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
