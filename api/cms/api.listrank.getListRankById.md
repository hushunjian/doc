## 接口描述
获取榜单详情
## API Path
/api/listRank/getListRankById
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |
|id       |int     |榜单id           |
  
## 返回报文
```
    {
        "body":{
            "id":1,
            "name":"榜单1234",
            "mode": 0,
            "type": 1,
            "summary": "哈哈过了",
            "bgColor": "#333",
            "img": "345abdddwerwr3erer",
            "imgWidth": 400,
            "imgHeight": 200,
            "onlineStatus": 0
        },
        "status":2000
    }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|id       |int     |榜单id           |
|name     |string  |榜单名称         |
|mode     |int     |榜单模式         |
|type     |int     |榜单类型(1:王国榜单;2:用户榜单；3：榜单集合)   |
|summary  |string  |摘要内容         |
|bgColor  |string  |背景色           |
|img      |string  |榜单封面         |
|imgWidth |int     |图片宽度         |
|imgHeight|int     |图片高度         |
|onlineStatus    |int     |是否加入上线榜单(0:未加入; 1:已加入)
|status   |int     |2000:成功        |
