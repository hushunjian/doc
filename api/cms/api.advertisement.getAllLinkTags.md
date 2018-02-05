## 接口描述
获取关联标签列表
## API Path
/api/advertisement/getAllLinkTags
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|positionId  |int  |广告位id      |
## 返回报文
    {
      "body":[
        {
          "id":1,
          "name":"如是我闻",
          "position":"4",
          "positionId":2
        },
        {
          "id":1,
          "name":"如是我闻",
          "position":"4",
          "positionId":2
        }
      ],
      "status":2000 
    }
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int     |标签id           |
|name     |string  |标签名           |
|position |string  |标签位置         |
|positionId  |int  |广告位id         |