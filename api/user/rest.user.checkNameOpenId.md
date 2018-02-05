## 接口描述
检查昵称或者OPENID是否存在接口
openId是授权的时候判断是否还需要传头像到七牛，nickName是校验用户名是否存在，两者根据需求传
1）传openId unionId返回code:20062 已经上传过了，20066 需要上传
2）传nickName返回code：20064 用户昵称已存在，请重新输入， 20065 该用户昵称不存在，可以注册。如果返回code:20086 就需要弹出检测昵称窗口，然后把检测后不重复的昵称用nickName传给第三方登录接口

## API Path
/rest/user/checkNameOpenId

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|nickName|string|否|昵称|
|openId|string|否|openId|
|thirdPartType|int|否|传2(微信需要传)|
|unionId|string|否|微信需要传|

## 返回报文
	{
		"accessToken": "847d1c83f3704cb5980047aa3cc1f21a",
	    "code": 20086,
	    "data": {
	    	"nickName": "夜，很美",
	    	"uid": 0
		},
	    "message": "第三方登录用户存在"
	}
#####or
    {
    	"accessToken": "6625c1a5bd11451b82341fcb195a0a70",
    	"code": 20065,
    	"message": "该用户昵称不存在，可以注册"
    }
#####or
    {
    	"accessToken": "15e1889071bc499b947a8045a2100edc",
    	"code": 20066,
    	"message": "该OPENID不存在，请上传头像"
    }
    
