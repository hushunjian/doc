## 接口描述
查询APP用户列表
## API Path
/api/industrial/getIndustrialManageSearch
## 请求说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|token    |string  |权限token        |
|firmName |string  |行业名称         |
|createdBegin|int  |创建时间开始时间         |
|createdEnd|int  |创建时间结束时间        |
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "id": 1,
                  "firmName": "娱乐",
                  "coverImage": '',
                  "introduce": "十九大",
                  "sort": 1,
                  "createdAt": 1511078400000,
                },
                {
                  "id": 2,
                  "firmName": "娱乐",
                  "coverImage": '',
                  "introduce": "十九大",
                  "sort": 2,
                  "createdAt": 1511078400000,
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
|id    |int     |行业ID           |
|firmName  |string  |行业名称         |
|coverImage    |string     |封面       |
|introduce   |string     |介绍           |
|sort     |int     |排序         |
|createdAt   |int     |创建时间           |