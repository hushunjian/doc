## 接口描述
获取抽奖次数接口
## API Path
/api/activity/getAwardCount
## 请求参数
参数名称	类型	是否必须	备注
## 返回报文
    {
    "accessToken": "f3b585e66ebd483f9882bf6584c95dce",
    "code": 200,
    "data": {
    "awardCount": 0, //抽奖次数前台取每次抽完奖都需要请求一次这个接口去展示用户剩余抽奖次数
    "count": 0,
    "id": 0,
    "probability": 0
      },
    "message": "ok"
    }
