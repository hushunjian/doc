## 接口描述
王国设置信息查询接口
3.2.0版本开始使用

## API Path
/rest/live/settings

## 请求报文
|名称|类型|是否必须|备注|
|:-|:-|:-|:-|
|topicId|long|是|王国ID|

## 返回报文
	{
    	"topicId":123,
    	"coverImage":"https://cdn.me-to-me.com/adfasdfnd234df",
    	"title":"王国标题",
    	"readCount":123,
    	"favoriteCount":35,
    	"topicCount":22,
    	"createTime":143323424000,
    	"summary":"王国的简介",
    	"tags":[],
    	"ceCount":2,
    	"acCount":0,
    	"pushType":0,
    	"ceAuditType":0,
    	"acAuditType":0,
    	"acPublishType":0,
		"kcid": 0,
		"kcIcon":"王国类型小图标",
		"kcImage":"王国类型封面",
		"kcName":"创作",
		"secretType":0,
		"autoCoreType":0,
		"onlyFriend":0
	}
    
### 字段说明
|参数名称|类型|备注|
|:-|:-|:-|
|topicId|long|王国ID|
|coverImage|string|王国封面|
|title|string|王国标题|
|readCount|int|阅读数|
|favoriteCount|int|成员数|
|topicCount|int|更新数|
|createTime|long|创建时间|
|summary|string|王国简介|
|ceCount|int|个人王国属性，母王国个数|
|acCount|int|聚合王国属性，子王国个数|
|pushType|int|当前用户针对王国的推送开关 0打开 1关闭|
|ceAuditType|int|聚合王国属性，需要国王审核才能加入此聚合王国 0是 1否|
|acAuditType|int|个人王国属性，需要国王审核才能收录此个人王国 0是 1否|
|acPublishType|int|个人王国属性，是否允许聚合王国下发消息 0是 1否|
|tags|string|王国标签，多个标签之间以英文分号分隔|
|kcid|long|王国类型id|
|kcIcon|String|王国类型小图标|
|kcImage|String|王国类型封面|
|kcName|String|王国类型名字|
|secretType|int|是否私密王国，0否，1是|
|autoCoreType|int|加入及自动加入核心圈，0否，1是|
|onlyFriend|int|否|是否仅好友可见，0否，1是|
    	