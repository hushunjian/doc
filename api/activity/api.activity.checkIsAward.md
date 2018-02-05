## 接口描述
检查是否有抽奖资格
此接口安卓调用判断是否能进入抽奖页面
## API Path
/api/activity/checkIsAward
## 请求参数
参数名称	类型	是否必须	备注
activityName	int	是	活动名称(1 小米活动)
channel	string	是	公参，渠道 (xiaomi) 根据安装包前台传过来这个参数后台会判断
version	string	是	公参，活动规定版本
## 返回报文
    {
    "accessToken": "031237c146a74506ad3dd2ea61caf851",
    "code": 20079,
    "message": "满足抽奖条件，可以参加活动"
    }
    or
    {
    "accessToken": "63ed4aae8240430386d20d3485ac01cf",
    "code": 20077,
    "message": "不满足抽奖条件，请参阅活动规则"
    }
