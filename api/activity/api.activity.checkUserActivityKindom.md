## 接口描述
活动王国是否有资格创建接口
## API Path
/api/activity/checkUserActivityKindom
## 请求参数
参数名称	类型	是否必须	备注
uid	long	是	系统用户id
uid2	long	否	双人王国另一人的系统用户ID
type	long	是	类型 1单人王国，2双人王国
## 返回报文
    {
    "accessToken": "6a4614ad43b44f2abe7b2e3565378698",
    "code": 200,
    "message": "ok"
    }
    or
    {
    "accessToken": "6a4614ad43b44f2abe7b2e3565378698",
    "code": 500,
    "message": "对方已经创建双人王国了"
    }
