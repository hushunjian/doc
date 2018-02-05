## 接口描述
获取榜单集合列表
## API Path
/api/listRank/getAllListRankSets
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |
|sourceId   |int     |榜单id           |

## 返回报文
    {
        "body":{
            "listType": 1,
            "mode": 0,
            "data":[
                {
                    "id":1,
                    "name":"浑水摸鱼",
                    "type": 1,
                    "sort": 2,
                },
                {
                    "id":1,
                    "name":"浑水摸鱼",
                    "type": 1,
                    "sort": 4,
                }
            ]
        },
        "status":2000
    }
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|listType |int     |榜单类型(1:王国榜单;2:用户榜单；3：榜单集合)   |
|mode     |int     |榜单模式         |
|id       |int     |榜单id           |
|name     |string  |榜单名称         |
|type     |int     |榜单类型(1:王国榜单;2:用户榜单；3：榜单集合)   |
|sort     |int     |榜单排序         |
|status   |int     |2000:成功        |