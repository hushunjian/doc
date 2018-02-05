## 接口描述
王国图片视频点赞接口

## API Path
/api/live/fragmentLike

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|fid|long|是|王国评论ID|
|imageName|string|否|当为图片时，需要传递|
|action|int|是|操作类型，1点赞，2取消点赞|


## 返回报文
	{
	    "code": 200,
	    "message": "ok"
    }

### result code说明
|code|desc|
|:-|:-|
|200|操作成功|
|50075|内容不存在|
|500999|操作失败|
