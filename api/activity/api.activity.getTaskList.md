## 接口描述
七天活动任务列表查询接口
## API Path
/api/activity/getTaskList
## 请求参数
参数名称	类型	是否必须	备注
uid	long	是	系统用户id
page	int	否	页码（默认1）
pageSize	int	否	每页条数（默认10）
## 返回报文
    {
    "accessToken": "2e306cce088e44a2b5c29ce33d930b8c",
    "code": 200,
    "data":{
    "result":[
    {
    "content": "任务任务",
    "id": 1,
    "linkUrl": "http://www.baidu.com",
    "status": 2,
    "title": "123",
    "type": 1
    }
    ],
    "totalCount": 1,
    "totalPage": 1
    },
    "message": "ok"
    }
