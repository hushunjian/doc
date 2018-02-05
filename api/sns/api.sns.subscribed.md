## 接口描述
王国订阅取消订阅

## API Path
/api/sns/subscribed

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|string|是|直播id|
|bottomId|int|否|底部id（已废）|
|action|int|是|操作类型，0订阅，1取消订阅|
|topId|int|否|顶部id（已废）|

## 返回报文
	{
	    "code": 200,
	    "data":{
	    	"currentLevel":5,
	    	"upgrade":0,
	    	"isFirst":0,
	    	"internalStatus":1
	    },
	    "message": "操作成功"
    }

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|currentLevel|int|当前用户等级|
|upgrade|int|当前用户是否等级升级，0不升级，1升级|
|isFirst|int|是否第一次，0否，1是|
|internalStatus|int|当前用户对于王国的身份，0圈外，1加入，2核心圈|


### result code
|code|message|
|:-|:-|
|20037|订阅成功|
|20038|取消订阅成功|
|50037|来晚一步！这个王国已经被删除了……|
|50099|非法的请求参数|
    
