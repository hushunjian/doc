## 接口描述
活动分享次数累加接口
## API Path
/api/activity/awardShare
## 请求参数
参数名称	类型	是否必须	备注
activityName	int	是	活动名称(1 小米活动)
## 返回报文
    {
    "accessToken": "690682e16eae49989812872ce095b69c",
    "code": 20078,
    "message": "分享成功，多一次抽奖机会"
    }
    错误参数前台不用做处理
    {
    "accessToken": "7780125973874775b5e812530d378768",
    "code": 20076,
    "message": "该活动不存在或已停用"
    }
