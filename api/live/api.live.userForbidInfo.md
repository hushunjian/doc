## 接口描述
王国禁言信息查询接口

## API Path
/api/live/userForbidInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|forbidUid|long|是|查询UID|
|topicId|long|是|发起禁言的王国ID|

## 返回报文
	{
	    "code": 200,
	    "data":{
	    	"forbidStatus":0
	    }
	    "message": "操作成功"
    }

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|forbidStatus|int|当前用户禁言状态，0不显示，1已禁言，2未禁言|


### result code
|code|message|
|:-|:-|
|200|操作成功|
|50037|来晚一步！这个王国已经被删除了……|


