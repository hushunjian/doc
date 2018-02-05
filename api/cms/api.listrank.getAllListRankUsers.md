## 接口描述
获取用户榜单列表
## API Path
/api/listRank/getAllListRankUsers
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |
|sourceId   |int     |榜单id           |

## 返回报文
    {
        "body":{
            "listType": 2,
            "mode": 0,
            "data":[
                {
                    "uid":1,
                    "userNick":"浑水摸鱼",
                    "isV": 1,
                    "sort": 2,
                },
                {
                    "uid":2,
                    "userNick":"浑水摸鱼555",
                    "isV": 1,
                    "sort": 2,
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
|uid      |int     |用户id           |
|userNick |string  |用户昵称         |
|isV      |int     |是否大V(0:否；1：是) |
|sort     |int     |用户排序         |
|status   |int     |2000:成功        |