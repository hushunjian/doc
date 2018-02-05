## 接口描述
获取榜单模式
## API Path
/api/listRank/getAllListRankModes
## 请求说明
|参数名     |类型    |备注             |
|-----------|--------|-----------------|
|token      |string  |权限token        |

## 返回报文
```
    {
       "body":[
        {
          "modeId": 1,
          "name": "十九大"
        },
        {
          "modeId": 2,
          "name": "深夜食堂"
        }
      ],
      "status":2000 
    }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|modeId   |int     |榜单模式id       |
|name     |string  |榜单模式名称     |
|status   |int     |状态码           |
