## 接口描述
七天活动任务接受接口
## API Path
/api/activity/acceptTask
## 请求参数
参数名称	类型	是否必须	备注
uid	long	是	系统用户id
tid	long	是	任务ID
## 返回报文
    {
    "accessToken": "4dc12e7e218c4b0d860d54cfbebb5448",
    "code": 200,
    "message": "ok"
    }
    or
    {
    "accessToken": "4dc12e7e218c4b0d860d54cfbebb5448",
    "code": 50052,
    "message": "接受任务失败"
    }
