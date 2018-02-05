## 接口描述
获取抽奖信息(供h5使用)
## API Path
/api/activity/getAwardStatus
## 请求参数
参数名称	类型	是否必须	备注
activityName	int	是	活动名称(1 小米活动)
## 返回报文
    {
    "accessToken": "f2b8334515e34dca80e37fa219f96cc4",
    "code": 200,
    "data": {
    "activityName": 1,
    "channel": "metome",
    "version": "2.1.3.0-debug"
      },
    "message": "ok"
    }
