## 接口描述
获取用户喜好列表
## API Path
/api/tag/getAllUserHobbies
## 请求说明
|参数名    |类型    |备注             |
|--------- |--------|-----------------|
|token     |string  |权限token        |
## 返回报文
    {
      "body":[
        {
          "userHobbyId": 1,
          "userHobbyName": "音乐"
        },
        {
          "userHobbyId": 2,
          "userHobbyName": "美食"
        }
      ],
      "status":2000 
    }

## 返回字段说明
|参数名   |类型    |备注             |
|---------|--------|-----------------|
|userHobbyId  |int   |对应用户喜好Id    |
|userHobbyName|string|对应用户喜好名字  |
|status       |int   |状态码            |