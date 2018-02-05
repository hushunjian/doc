## 接口描述
王国禁言接口

## API Path
/api/live/forbidTalk

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|forbidUid|long|否|禁言用户UID，当action=1或2时必填|
|topicId|long|是|发起禁言的王国ID|
|action|int|是|操作类型，1禁言，2解除禁言，3全部禁言，4解除全部禁言|

## 返回报文
	{
	    "code": 200,
	    "message": "操作成功"
    }

### result code
|code|message|
|:-|:-|
|200|操作成功|
|50066|你无权操作|
|50037|来晚一步！这个王国已经被删除了……|


