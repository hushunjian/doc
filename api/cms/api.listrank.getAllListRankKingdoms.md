## 接口描述
获取王国榜单列表
## API Path
/api/listRank/getAllListRankKingdoms
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
                    "link": "link":"https://testwebapp.me-to-me.com/ld/10"
                },
                {
                    "id":1,
                    "name":"浑水摸鱼",
                    "type": 1,
                    "sort": 4,
                    "link": "link":"https://testwebapp.me-to-me.com/ld/10"
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
|data     |array   |根据不同的榜单类型，其包含字段不同          |
|id       |int     |王国id           |
|name     |string  |王国名称         |
|type     |int     |王国类型(0:普通王国;1:聚合王国)   |
|sort     |int     |王国排序         |
|link     |string  |王国链接         |
|status   |int     |2000:成功        |