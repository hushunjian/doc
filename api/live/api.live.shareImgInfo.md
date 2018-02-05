## 接口描述
分享卡片信息获取接口

## API Path
/api/live/shareImgInfo

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|targetUid|long|是|目标用户UID|
|fid|long|是|起始王国评论ID|

## 返回报文
	{
	    "code": 200,
	    "data":{
	    	"imageInfos":[
	    		{
	    			"type":1,
	    			"imageUrl":"abcd22222"
	    		},
	    		{
	    			"type":2,
	    			"imageUrl":"http://cdn.me-to-me.com/default.jpg"
	    		}
	    	],
	    	"qrCode":""
	    }
	    "message": "ok"
    }

### 字段说明
|名称|类型|备注|
|:-|:-|:-|
|imageInfos|array|图片信息数组|
|qrCode|string|二维码图片base64编码后字符串|

### imageInfos 图片信息字段说明
|名称|类型|备注|
|:-|:-|:-|
|type|int|内容类型，0封面，1文字，2图片，3视频|
|imageUrl|string|图片<br>当type=1时，本字段为图片二进制base64编码后的字符串<br>当type=2和3时，本字段为图片地址|
