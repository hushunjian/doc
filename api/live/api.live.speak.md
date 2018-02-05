## 接口描述
王国内容发表接口

## API Path
/api/live/speak

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|
|type|int|是|发言类型，具体枚举参考《王国详情可见内容数据类型白皮书.pdf》|
|contentType|int|是|发言内容类型，具体枚举参考《王国详情可见内容数据类型白皮书.pdf》|
|fragment|string|否|文本|
|fragmentImage|string|否|图片|
|topId|int|否|【已废弃】|
|bottomId|int|否|【已废弃】|
|source|int|是|客户端类型（来源），0不区分，1IOS，2Android，3微信，4H5|
|extra|string|否|扩展信息，json格式|
|atUid|long|否|@用户的UID，当type=10、11、15时有效|

## 返回报文
{
	"code":20057,
	"data":{
		"fragmentId":1234,
		"score":3,
		"upgrade":0,
		"currentLevel":4,
		"isFirstUpdate":0
	},
	"message":"用户发言成功"
}

### 返回字段说明
|字段|类型|描述
|:-|:-|:-|
|fragmentId|long|评论ID|
|score|int|分数|
|upgrade|int|是否升级，0否，1是|
|currentLevel|int|当前等级|
|isFirstUpdate|int|是否首次更新，0否，1是|

### result code
|code|message|
|:-|:-|
|20030|用户发言成功|
|50034|重复发言|
|50071|此王国处于全体禁言模式|
|50072|你已被王国禁言|