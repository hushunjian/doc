## 接口描述
添加王国(榜单/用户)到王国榜单(榜单集合/用户榜单)列表
## API Path
/api/listRank/addEntry
## 请求说明
|参数名    |类型    |备注            |
|--------- |--------|----------------|
|token     |string  |权限token       |
|sourceId  |int     |榜单ID          |
|type      |int     |榜单类型(1:王国榜单;2:用户榜单；3：榜单集合) |
|targetData  |array   |王国/榜单/用户数据集合  |
|targetId  |int     |王国ID/榜单ID/用户ID |
|sort      |int     |排序值          |

## 请求报文
    {
          "token": "{{token}}",
          "sourceId": 12,
          "type": 1,
          "targetData": [
          {
            "targetId": 2,
            "sort": 1
          }, 
          {
            "targetId": 3,
            "sort": 2
          }, 
          {
            "targetId": 4,
            "sort": 3
          }
      ]
     }

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
