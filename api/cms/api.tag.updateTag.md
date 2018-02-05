## 接口描述
更新标签
## API Path
/api/tag/updateTag
## 请求说明
|参数名    |类型    |备注            |
|--------- |--------|----------------|
|token     |string  |权限token       |
|tagId     |int     |标签ID          |
|tagName   |string  |标签名称        |
|parentTagId|int   |父标签ID         |
|sortNumber|int    |排序号           |
|isSystem |int     |是否体系(0:否；1：是)     |
|isRecommend |int  |是否推荐(0:否；1：是)     |
|status   |int     |标签状态(0:正常；1：禁用) |
|coverImage|string |标签背景图       |
|userHobbyIds|array|对应用户喜好     |

## 请求报文
    {
          "token": "{{token}}",
          "tagId": 12,
          "tagName": "数码",
          "parentTagId": 1,
          "sortNumber":2,
          "isSystem":0,
          "isRecommend":1,
          "status": 0,
          "coverImage":"",
          "userHobbyIds":[34,12]
     }

## 响应说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|status   |int     |2000:成功        |
## 返回报文
  {
    "status":2000 
  }
