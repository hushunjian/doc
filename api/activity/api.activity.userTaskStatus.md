## 接口描述
查询活动用户对于任务的状态信息
## API Path
/api/activity/userTaskStatus
## 请求参数
参数名称	类型	是否必须	备注
uid	long	是	系统用户id
tid	long	是	任务ID
3.2.13.3 返回报文
{
"accessToken": "6a4614ad43b44f2abe7b2e3565378698",
"code": 200,
"data":{
"status": 2
},
"message": "ok"
}
or
{
"accessToken": "649560dd619e47488c7020314a9d117b",
"code": 50053,
"message": "任务不存在"
}
