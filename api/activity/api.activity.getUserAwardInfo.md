## 接口描述
获取用户中奖信息
获取当前抽奖用户的中奖信息接口
## API Path
/api/activity/getUserAwardInfo
## 请求参数
参数名称	类型	是否必须	备注
## 返回报文
    {
    "accessToken": "59ada1edf5a74df38db261f6a196b4c6",
    "code": 20080,
    "data": {
    "awardCount": 0,
    "awardName": "小米手环", //奖品名称
    "count": 0,
    "id": 3, //3等奖分别为 1 2 3
    "probability": 0,
    "proof": "903eb68d-9b5d-430d-97c2-0d13fb65f05b" //兑奖凭证
      },
    "message": "获取用户中奖信息成功"
    }
    or
    {
    "accessToken": "05c145544c68445995df43876799537b",
    "code": 20081,
    "message": "该用户没有中奖信息"
    }
