## 接口描述
图片信息查询接口

## API Path
/rest/live/imageInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|fid|long|是|王国ID|
|imageName|string|是|图片名称|

## 返回报文
	{
	    "code": 200,
	    "data":{
	    	"likeCount":123,
	    	"isLike":0
	    }
	    "message": "ok"
    }

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|likeCount|int|图片点赞数|
|isLike|int|当前用户是否点赞过，0否，1是|
