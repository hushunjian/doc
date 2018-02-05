## 接口描述
查询标签列表
## API Path
/api/tag/getTagSearch
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
|pageIndex |int     |当前页           |
|pageSize  |int     |页大小           |
|tagName   |string  |标签名称         |
|startTime |int     |开始时间         |
|endTime   |int     |结束时间         |
|isSystem |int     |是否体系(-1:所有,0:否；1：是)     |
|isRecommend |int  |是否推荐(-1:所有,0:否；1：是)     |
|topicCountStart|int |王国最小数量    |
|topicCountEnd  |int |王国最大数量    |
|parentTagId |int    |父标签Id        |
|noParentTag |int    |无大类标签(0：否; 1:是)|
## 返回报文
```
  {
    "body":{
            "data":[
                {
                  "tagId": 123,
                  "tagName": "数码",
                  "parentTagId": 1,
                  "parentTagName": "十九大",
                  "createdAt": 1511078400000,
                  "isSystem":0,
                  "isRecommend":1,
                  "status": 0,
                  "topicCount":1,
                  "sortNumber":2,
                  "coverImage":"",
                  "userHobbyIds":[34,12]
                },
                {
                  "tagId": 23,
                  "tagName": "音乐之声",
                  "parentTagId": 1,
                  "parentTagName": "music",
                  "createdAt": 1511078400000,
                  "isSystem":0,
                  "isRecommend":1,
                  "status": 0,
                  "topicCount":1,
                  "sortNumber":6,
                  "coverImage":"",
                  "userHobbyIds":[1,23,56]
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
|tagId    |int     |标签ID           |
|tagName  |string  |标签名称         |
|parentTagId|int   |父标签ID         |
|parentTagName|string|父标签名称     |
|createdAt|int     |发布时间         |
|isSystem |int     |是否体系(0:否；1：是)     |
|isRecommend |int  |是否推荐(0:否；1：是)     |
|status   |int     |标签状态(0:正常；1：禁用) |
|topicCount|int    |王国数量         |
|sortNumber|int    |排序号           |
|coverImage|string |标签背景图       |
|userHobbyIds|array|对应用户喜好     |
|total    |int     |数据总条数       |
|status   |int     |状态码           |