## 接口描述
获取(榜单)用户列表
## API Path
/api/listRank/getAppUsers
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|pageIndex|int     |当前页           |
|pageSize |int     |页大小           |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "uid":1,
                  "nickName":"忘语",
                  "createdAt": 1511078400000,
                  "isV":1,
                  "topicCount":3,
                  "followCount":31,
                  "fansCount": 13, 
                },
                {
                  "uid":2,
                  "nickName":"忘语dd",
                  "createdAt": 1511078400000,
                  "isV":1,
                  "topicCount":3,
                  "followCount":311,
                  "fansCount": 3, 
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
|uid      |int     |用户id           |
|nickName |string  |用户名           |
|createdAt|int     |注册时间         |
|isV      |int     |是否大V(0:否；1：是)|
|topicCount  |int  |发布王国数量     |
|followCount |int  |关注数量         |
|fansCount   |int  |粉丝数量         |
|total    |int     |数据总条数       |
|status   |int     |状态码           |
