## 接口描述
获取上线榜单列表
## API Path
/api/listRank/getAllOnlineListRanks
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |
|type       |int     |类型(1:用户；2：王国)    |
## 返回报文
```
{
    "body":[
        {
          "id":1,
          "name":"榜单1234",
          "listType": 1,
          "status": 0,
          "sort": 3
       },
       {
         "id":2,
         "name":"榜单1dsfdsf",
         "listType": 1,
         "status": 0,
         "sort": 4
       }
    ],
    "status":2000 
}
```

## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int     |榜单id           |
|name     |string  |榜单名称         |
|listType |int     |榜单类型(1:王国榜单;2:用户榜单；3：榜单集合)   |
|status   |string  |状态(0:未上架; 1:已上架)          |
|sort     |int     |榜单排序         |
|status   |int     |2000:成功        |
