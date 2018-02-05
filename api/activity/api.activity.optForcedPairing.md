## 接口描述
七天活动强配操作接口
## API Path
/api/activity/optForcedPairing
## 请求参数
参数名称	类型	是否必须	备注
uid	long	是	系统用户id
action	int	是	1接受强配  2不接受强配
## 返回报文
    {
    "code": 200,
    "message": "ok"
    }
    or
    {
    "code": 500,
    "message": "failure"
    }
