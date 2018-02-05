## 接口描述
获取APP用户内容(王国列表)
## API Path
/api/appuser/getUserKingdomContent
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex|int     |当前页           |
|pageSize |int     |页大小           |
|uid      |int     |用户id           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":12766,
                  "topicId":8798,
                  "title": "测试之歌",
                  "coreCircle": "[12768]",
                  "createdAt": 1511078560000
                }
            ],
            "total":200
          },
    "status":2000
  }
```
## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|uid      |int     |用户ID           |
|topicId  |int     |王国ID           |
|title    |string  |王国标题         |
|coreCircle|string |核心圈           |
|createdAt|int     |创建时间         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |
